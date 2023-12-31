{*******************************************************}
{                                                       }
{  Copyright (c) 1997-2001 Altium Limited               }
{                                                       }
{  http://www.dream-com.com                             }
{  contact@dream-com.com                                }
{                                                       }
{*******************************************************}
unit dcfdeshook;

interface
{$I dc.inc}
{$D-,L-,Y-}

implementation
uses
  windows, messages, classes, controls, forms, dchook, dcgen, dcfdes,
  dcsystem,sysUtils,

  {$IFDEF USEOWNDSGNSTUFF}
  dcdsgnstuff,
  {$ELSE}
    {$IFDEF D6}
    DesignIntf,DesignEditors,VCLEditors,
    {$ELSE}
    dsgnintf,
    {$ENDIF}
  {$ENDIF}

  dcdreamlib;

function IsDCFormDesigner(const D : TFormDesigner) : boolean;
{$IFDEF D4}
var
  tmp : IDesigner;
begin
  result := (D <> nil) and (D.QueryInterface(IDCFormDesigner, tmp) = S_OK);
{$ELSE}
begin
  result := D is TDCFormDesigner;
{$ENDIF}
end;


type
  TMControl = class(TControl);
  TMCustomForm=Class(TCustomForm);

var
  WndProcHookInfo : THookInfo;
  FormDestroyHookInfo : THookInfo;

  CWPAddr : pointer; // Control.WndProc
  FDAddr  : pointer; // Form.Destroy;


procedure ControlWndProc(Self : TControl; var Message : TMessage);
type
  TWndProc = procedure(Self:TObject; var Message : TMessage);
var
  c : TControl;
begin
  if (csDesigning in Self.ComponentState) then
    begin
      c := Self;

      while not ((c = nil) or (c is TCustomForm)) do
        c := c.Parent;

      if (c <> nil) and (c.Parent <> nil) and (TCustomForm(c).Designer <> nil) and
        IsDCFormDesigner(TFormDesigner(TCustomForm(c).Designer)) then
        if TCustomForm(c).Designer.IsDesignMsg(Self, Message) then
          exit;
    end;

  RestoreHook(WndProcHookInfo);
  try
    TWndProc(@TMControl.WndProc)(Self, Message);
  finally
    WndProcHookInfo := SetupHook(CWPAddr, @ControlWndProc);
  end;
end;

{******************************************************************}
procedure writeLog(s:String);
var lst:TStringList;
f:String;
begin
  exit;
  f:='d:\designererrors.txt';
  lst:=TStringList.create;
  try
   try
     lst.loadFromFile(f);
   except
   end;
     lst.add(S);
   try
     lst.saveToFile(f);
   except
   end;
  finally
    lst.free;
  end;
end;


procedure FormDestroy(Self : TCustomForm; Param : integer);
type
  TDestroyProc = procedure(Self : TObject; Param : integer);
begin


  try
    if (csDesigning in Self.ComponentState) then
      if IsDCFormDesigner(TFormDesigner(Self.Designer)) then
      begin
        (Self.Designer as IDCFormDesigner).Active := false;
      end;

  finally
    RestoreHook(FormDestroyHookInfo);
    try
    try
      TDestroyProc(@TCustomForm.Destroy)(Self, Param);
    except
      on e:Exception
      do
      begin
        writelog(e.message);
      end;
    end;
    finally
      FormDestroyHookInfo := SetupHook(FDAddr, @FormDestroy);
    end;
  end;
end;

{******************************************************************}

initialization
  if not UnderDelphiIDE then
    begin
      CWPAddr := GetVirtualProcAddress(TMControl,TControl,@TMControl.WndProc);
      WndProcHookInfo := SetupHook(CWPAddr, @ControlWndProc);

//green
//it was crashing on formDestroy some time ago
// than it stopped crashing
//not sure what for it's used

     FDAddr := GetVirtualProcAddress(TMCustomForm,TCustomForm,@TMCustomForm.Destroy);
     FormDestroyHookInfo := SetupHook(FDAddr,@FormDestroy);


    end;
finalization
  if not UnderDelphiIDE then
    begin
      RestoreHook(WndProcHookInfo);

            RestoreHook(FormDestroyHookInfo);


    end;
end.
