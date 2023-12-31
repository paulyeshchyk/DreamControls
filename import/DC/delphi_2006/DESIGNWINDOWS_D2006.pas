{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit DESIGNWINDOWS_D2006;
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
  Messages,
  SysUtils,
  Classes,
  Controls,
  Forms,
  ComponentDesigner,
  DesignWindows;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure  of object;

_T1 = function (p0 : TComponent): string of object;

_T2 = function : TEditState of object;

_T3 = function (p0 : TEditAction): Boolean of object;

{_T4 = procedure (const p0 : IDesigner;
p1 : TPersistent) of object;}

{_T5 = procedure (const p0 : IDesigner;
p1 : TPersistent) of object;}

{_T6 = procedure (const p0 : IDesigner;
const p1 : IDesignerSelections) of object;}

{_T7 = procedure (const p0 : IDesigner;
p1 : Boolean) of object;}

{_T8 = procedure (const p0 : IDesigner;
p1 : Boolean) of object;}

{_T9 = procedure (const p0 : IDesigner) of object;}

_T10 = _T0;

_T11 = _T0;

function __DC__GetTDesignWindow__Active(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDesignWindow(Instance).Active;
end;

procedure __RegisterProps;
begin
RegisterProperty(TDesignWindow,'Active',__DC__GetTDesignWindow__Active,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TDesignWindow
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
RegRegisterMethod(TDesignWindow,'Activated',TypeInfo(_T0),NoParams, pointer(MinVMTOffset - 91));

//RegRegisterMethod(TDesignWindow,'UniqueName',TypeInfo(_T1),[TypeInfo(TComponent),TypeInfo(string)], pointer(260));
RegRegisterMethod(TDesignWindow,'UniqueName',TypeInfo(_T1),[TypeInfo(TComponent),TypeInfo(string)],  getVMTProcAddr('TDesignWindow','UniqueName',260));


//RegRegisterMethod(TDesignWindow,'GetEditState',TypeInfo(_T2),[TypeInfo(TEditState)], pointer(264));
RegRegisterMethod(TDesignWindow,'GetEditState',TypeInfo(_T2),[TypeInfo(TEditState)],  getVMTProcAddr('TDesignWindow','GetEditState',264));


//RegRegisterMethod(TDesignWindow,'EditAction',TypeInfo(_T3),[TypeInfo(TEditAction),TypeInfo(Boolean)], pointer(268));
RegRegisterMethod(TDesignWindow,'EditAction',TypeInfo(_T3),[TypeInfo(TEditAction),TypeInfo(Boolean)],  getVMTProcAddr('TDesignWindow','EditAction',268));


//RegRegisterMethod(TDesignWindow,'WindowHide',TypeInfo(_T10),NoParams, pointer(296));
RegRegisterMethod(TDesignWindow,'WindowHide',TypeInfo(_T10),NoParams,  getVMTProcAddr('TDesignWindow','WindowHide',296));


//RegRegisterMethod(TDesignWindow,'WindowShow',TypeInfo(_T11),NoParams, pointer(300));
RegRegisterMethod(TDesignWindow,'WindowShow',TypeInfo(_T11),NoParams,  getVMTProcAddr('TDesignWindow','WindowShow',300));


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
{RegRegisterMethod(TDesignWindow,'ItemDeleted',TypeInfo(_T4),[
TypeInfo(IDesigner),
TypeInfo(TPersistent)], pointer(272))}

{RegRegisterMethod(TDesignWindow,'ItemInserted',TypeInfo(_T5),[
TypeInfo(IDesigner),
TypeInfo(TPersistent)], pointer(276))}

{RegRegisterMethod(TDesignWindow,'SelectionChanged',TypeInfo(_T6),[
TypeInfo(IDesigner),
TypeInfo(IDesignerSelections)], pointer(280))}

{RegRegisterMethod(TDesignWindow,'DesignerOpened',TypeInfo(_T7),[
TypeInfo(IDesigner),
TypeInfo(Boolean)], pointer(284))}

{RegRegisterMethod(TDesignWindow,'DesignerClosed',TypeInfo(_T8),[
TypeInfo(IDesigner),
TypeInfo(Boolean)], pointer(288))}

{RegRegisterMethod(TDesignWindow,'ItemsModified',TypeInfo(_T9),[
TypeInfo(IDesigner)], pointer(292))}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
