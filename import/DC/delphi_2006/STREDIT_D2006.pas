{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit STREDIT_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  Windows,
  Classes,
  Graphics,
  Forms,
  Controls,
  Buttons,
  Dialogs,
  StdCtrls,
  ExtCtrls,
  ComCtrls,
  Menus,
  ActnPopup,
  StrEdit;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : TObject) of object;

_T1 = _T0;

_T2 = _T0;

_T3 = _T0;

_T4 = _T0;

_T5 = _T0;

_T6 = function : TStrings of object;

_T7 = procedure (const p0 : TStrings) of object;

_T8 = function : TWinControl of object;

function __DC__GetTStrEditDlg__Lines(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TStrEditDlg(Instance).Lines);
end;

procedure __DC__SetTStrEditDlg__Lines(Instance : TObject; Params : PVariantArgList);
begin
TStrEditDlg(Instance).Lines:=TStrings(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TStrEditDlg,'Lines',__DC__GetTStrEditDlg__Lines,__DC__SetTStrEditDlg__Lines);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TStrEditDlg
);
 function __getFullMethodName(sclassName, smethodName:String):String; 
 begin 
   result := format('%s.%s',[sClassName, sMethodName]) 
 end; 
procedure fillVMTProcs();
var
  ctx : TRttiContext;
  t:TRttiType;
  m:TRttiMethod;
  i:Integer;
begin
  ctx := TRttiContext.Create;
  try
    for i := 0 to length(classList) - 1 do
    begin
      t:=ctx.GetType(classList[i].ClassInfo);
      for m in t.GetMethods  do
      begin
        if m.DispatchKind = dkVtable then
        vmtMethodList.addObject(__getFullMethodName(classList[i].className,m.Name), pointer(m.VirtualIndex*4));
      end;
      t.free;
    end;
  finally
    ctx.free;
  end;
end;
function getVMTProcAddr(className, MethodName:String;oldAddr:Integer):Pointer;
var i:Integer;
begin
  i:=vmtMethodList.indexOf(__getFullMethodName(className,methodName));
  if i>-1 then 
    result:=pointer(vmtMethodList.Objects[i])
  else 
  result:=pointer(oldAddr);
end;  
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
procedure _mreg_0;
begin
RegRegisterMethod(TStrEditDlg,'FileOpen',TypeInfo(_T0),[
TypeInfo(TObject)],Addr(TStrEditDlg.FileOpen));

RegRegisterMethod(TStrEditDlg,'FileSave',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TStrEditDlg.FileSave));

RegRegisterMethod(TStrEditDlg,'HelpButtonClick',TypeInfo(_T2),[
TypeInfo(TObject)],Addr(TStrEditDlg.HelpButtonClick));

RegRegisterMethod(TStrEditDlg,'CodeWndBtnClick',TypeInfo(_T3),[
TypeInfo(TObject)],Addr(TStrEditDlg.CodeWndBtnClick));

RegRegisterMethod(TStrEditDlg,'FormDestroy',TypeInfo(_T4),[
TypeInfo(TObject)],Addr(TStrEditDlg.FormDestroy));

RegRegisterMethod(TStrEditDlg,'FormShow',TypeInfo(_T5),[
TypeInfo(TObject)],Addr(TStrEditDlg.FormShow));

//RegRegisterMethod(TStrEditDlg,'GetLines',TypeInfo(_T6),[TypeInfo(TStrings)], pointer(260));
RegRegisterMethod(TStrEditDlg,'GetLines',TypeInfo(_T6),[TypeInfo(TStrings)],  getVMTProcAddr('TStrEditDlg','GetLines',260));


//RegRegisterMethod(TStrEditDlg,'SetLines',TypeInfo(_T7),[TypeInfo(TStrings)], pointer(264));
RegRegisterMethod(TStrEditDlg,'SetLines',TypeInfo(_T7),[TypeInfo(TStrings)],  getVMTProcAddr('TStrEditDlg','SetLines',264));


//RegRegisterMethod(TStrEditDlg,'GetLinesControl',TypeInfo(_T8),[TypeInfo(TWinControl)], pointer(268));
RegRegisterMethod(TStrEditDlg,'GetLinesControl',TypeInfo(_T8),[TypeInfo(TWinControl)],  getVMTProcAddr('TStrEditDlg','GetLinesControl',268));


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
