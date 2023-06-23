{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit DOCKTABSET_D2006;
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
  SysUtils,
  Classes,
  Controls,
  Tabs,
  Messages,
  Types,
  ExtCtrls,
  Contnrs,
  CaptionedDockTree,
  Graphics,
  DockTabSet;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (const p0 : TWinControl) of object;

_T1 = procedure (const p0 : TDockTabSet;
const p1 : TWinControl) of object;

_T2 = procedure (p0 : Boolean) of object;

_T3 = procedure (const p0 : TDockClientInfo) of object;

_T4 = function (const p0 : TControl): string of object;

_T5 = function (const p0 : TWinControl): Boolean of object;

_T6 = procedure (const p0 : TControl) of object;

_T7 = function (const p0 : TControl): Integer of object;

_T8 = procedure (const p0 : Integer) of object;

_T9 = procedure (p0 : TComponent;
p1 : TDockClientInfo) of object;

_T10 = procedure  of object;

procedure __TDockClientInfo__CreateTab__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
0:
begin
TDockClientInfo(__Instance).CreateTab;
end;
1:
begin
TDockClientInfo(__Instance).CreateTab(OleVariant(pargs^[0]));
end;
end
end;

procedure __TDockTabSet__HideCurrentDockClient__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
0:
begin
TDockTabSet(__Instance).HideCurrentDockClient;
end;
1:
begin
TDockTabSet(__Instance).HideCurrentDockClient(OleVariant(pargs^[0]));
end;
end
end;

function __DC__GetTDockClientInfo__DockClient(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDockClientInfo(Instance).DockClient);
end;

function __DC__GetTDockClientInfo__DockTabSet(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDockClientInfo(Instance).DockTabSet);
end;

function __DC__GetTDockClientInfo__ImageIndex(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDockClientInfo(Instance).ImageIndex;
end;

procedure __DC__SetTDockClientInfo__ImageIndex(Instance : TObject; Params : PVariantArgList);
begin
TDockClientInfo(Instance).ImageIndex:=OleVariant(Params^[0]);
end;

function __DC__GetTDockClientInfo__ListIndex(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDockClientInfo(Instance).ListIndex;
end;

function __DC__GetTDockClientInfo__ParentPanel(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDockClientInfo(Instance).ParentPanel);
end;

function __DC__GetTDockClientInfo__TabIndex(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDockClientInfo(Instance).TabIndex;
end;

procedure __DC__SetTDockClientInfo__TabIndex(Instance : TObject; Params : PVariantArgList);
begin
TDockClientInfo(Instance).TabIndex:=OleVariant(Params^[0]);
end;

function __DC__GetTTabDockPanel__AnimateSpeed(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TTabDockPanel(Instance).AnimateSpeed;
end;

procedure __DC__SetTTabDockPanel__AnimateSpeed(Instance : TObject; Params : PVariantArgList);
begin
TTabDockPanel(Instance).AnimateSpeed:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TDockClientInfo,'DockClient',__DC__GetTDockClientInfo__DockClient,nil);
RegisterProperty(TDockClientInfo,'DockTabSet',__DC__GetTDockClientInfo__DockTabSet,nil);
RegisterProperty(TDockClientInfo,'ImageIndex',__DC__GetTDockClientInfo__ImageIndex,__DC__SetTDockClientInfo__ImageIndex);
RegisterProperty(TDockClientInfo,'ListIndex',__DC__GetTDockClientInfo__ListIndex,nil);
RegisterProperty(TDockClientInfo,'ParentPanel',__DC__GetTDockClientInfo__ParentPanel,nil);
RegisterProperty(TDockClientInfo,'TabIndex',__DC__GetTDockClientInfo__TabIndex,__DC__SetTDockClientInfo__TabIndex);
RegisterProperty(TTabDockPanel,'AnimateSpeed',__DC__GetTTabDockPanel__AnimateSpeed,__DC__SetTTabDockPanel__AnimateSpeed);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..4] of TClass = (
ETabDockException,
TCaptionedTabDockTree,
TDockClientInfo,
TDockTabSet,
TTabDockPanel
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
RegRegisterMethod(TCaptionedTabDockTree,'SetAlternateDockHost',TypeInfo(_T0),[
TypeInfo(TWinControl)],Addr(TCaptionedTabDockTree.SetAlternateDockHost));

RegisterProc(TDockClientInfo,'Create',mtConstructor,TypeInfo(_T1),[
TypeInfo(TDockTabSet),
TypeInfo(TWinControl)],Addr(TDockClientInfo.Create),cRegister);

RegisterProc(TDockClientInfo,'CreateTab',mtScriptMethod,TypeInfo(_T2),[
TypeInfo(Boolean)],Addr(__TDockClientInfo__CreateTab__Wrapper),cRegister);

//RegRegisterMethod(TDockTabSet,'ShowDockClientInfo',TypeInfo(_T3),[TypeInfo(TDockClientInfo)], pointer(236));
RegRegisterMethod(TDockTabSet,'ShowDockClientInfo',TypeInfo(_T3),[TypeInfo(TDockClientInfo)],  getVMTProcAddr('TDockTabSet','ShowDockClientInfo',236));


//RegRegisterMethod(TDockTabSet,'GetTabName',TypeInfo(_T4),[TypeInfo(TControl),TypeInfo(string)], pointer(240));
RegRegisterMethod(TDockTabSet,'GetTabName',TypeInfo(_T4),[TypeInfo(TControl),TypeInfo(string)],  getVMTProcAddr('TDockTabSet','GetTabName',240));


//RegRegisterMethod(TDockTabSet,'ShouldAutoHide',TypeInfo(_T5),[TypeInfo(TWinControl),TypeInfo(Boolean)], pointer(244));
RegRegisterMethod(TDockTabSet,'ShouldAutoHide',TypeInfo(_T5),[TypeInfo(TWinControl),TypeInfo(Boolean)],  getVMTProcAddr('TDockTabSet','ShouldAutoHide',244));


RegRegisterMethod(TDockTabSet,'ShowDockClient',TypeInfo(_T6),[
TypeInfo(TControl)],Addr(TDockTabSet.ShowDockClient));

RegRegisterMethod(TDockTabSet,'IndexOfDockClient',TypeInfo(_T7),[
TypeInfo(TControl),TypeInfo(Integer)],Addr(TDockTabSet.IndexOfDockClient));

RegisterProc(TDockTabSet,'HideCurrentDockClient',mtScriptMethod,TypeInfo(_T8),[
TypeInfo(Integer)],Addr(__TDockTabSet__HideCurrentDockClient__Wrapper),cRegister);

RegisterProc(TTabDockPanel,'Create',mtConstructor,TypeInfo(_T9),[
TypeInfo(TComponent),
TypeInfo(TDockClientInfo)],Addr(TTabDockPanel.Create),cRegister);

RegRegisterMethod(TTabDockPanel,'UpdateDockCaptionPin',TypeInfo(_T10),NoParams,Addr(TTabDockPanel.UpdateDockCaptionPin));

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
