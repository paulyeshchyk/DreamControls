{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit inspunit_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  dcscript,
  dcsystem,
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  Grids,
  oinspect,
  StdCtrls,
  ExtCtrls,
  typinfo,
  ComCtrls,
  Menus,
  dcpedit,
  dcdsgnstuff,
  DCGen,
  dccommon,
  dcstdctl,
  dcedit,
  dcconsts,
  consts,
  dcdreamlib,
  InspUnit;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function : TInspectForm of object;

_T1 = procedure (p0 : TObject) of object;

_T2 = _T1;

_T3 = _T1;

_T4 = _T1;

_T5 = _T1;

_T6 = _T1;

_T7 = _T1;

_T8 = _T1;

_T9 = _T1;

_T10 = _T1;

_T11 = procedure  of object;

_T12 = _T11;

function __DC__GetTInspectForm__ObjectList(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TInspectForm(Instance).ObjectList);
end;

procedure __DC__SetTInspectForm__ObjectList(Instance : TObject; Params : PVariantArgList);
begin
TInspectForm(Instance).ObjectList:=TList(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TInspectForm,'ObjectList',__DC__GetTInspectForm__ObjectList,__DC__SetTInspectForm__ObjectList);
end;

function __DC__GetInspUnit__InspectForm(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(InspUnit.InspectForm);
end;

procedure __DC__SetInspUnit__InspectForm(Instance : TObject; Params : PVariantArgList);
begin
TObject(InspUnit.InspectForm):=(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetInspUnit__InspUnitMessageAnswer(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(InspUnit.InspUnitMessageAnswer);
end;

procedure __DC__SetInspUnit__InspUnitMessageAnswer(Instance : TObject; Params : PVariantArgList);
begin
TObject(InspUnit.InspUnitMessageAnswer):=(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetInspUnit__UseDefaultInspForm(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := InspUnit.UseDefaultInspForm;
end;

procedure __DC__SetInspUnit__UseDefaultInspForm(Instance : TObject; Params : PVariantArgList);
begin
InspUnit.UseDefaultInspForm:=OleVariant(Params^[0]);
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('InspectForm',__DC__GetInspUnit__InspectForm,__DC__SetInspUnit__InspectForm));
__RegisteredVars.Add(RegisterVar('InspUnitMessageAnswer',__DC__GetInspUnit__InspUnitMessageAnswer,__DC__SetInspUnit__InspUnitMessageAnswer));
__RegisteredVars.Add(RegisterVar('UseDefaultInspForm',__DC__GetInspUnit__UseDefaultInspForm,__DC__SetInspUnit__UseDefaultInspForm));
end;

procedure __UnregisterVars;
begin
__RegisteredVars.Free;
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TInspectForm
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..0] of string = (
'InspForm'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[TypeInfo(TInspectForm)],Addr(InspForm),cRegister);

RegRegisterMethod(TInspectForm,'FormCreate',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TInspectForm.FormCreate));

RegRegisterMethod(TInspectForm,'TabControl1Change',TypeInfo(_T2),[
TypeInfo(TObject)],Addr(TInspectForm.TabControl1Change));

RegRegisterMethod(TInspectForm,'Hide1Click',TypeInfo(_T3),[
TypeInfo(TObject)],Addr(TInspectForm.Hide1Click));

RegRegisterMethod(TInspectForm,'StayonTop1Click',TypeInfo(_T4),[
TypeInfo(TObject)],Addr(TInspectForm.StayonTop1Click));

RegRegisterMethod(TInspectForm,'PopupMenu1Popup',TypeInfo(_T5),[
TypeInfo(TObject)],Addr(TInspectForm.PopupMenu1Popup));

RegRegisterMethod(TInspectForm,'FormDestroy',TypeInfo(_T6),[
TypeInfo(TObject)],Addr(TInspectForm.FormDestroy));

RegRegisterMethod(TInspectForm,'ShowCategories1Click',TypeInfo(_T7),[
TypeInfo(TObject)],Addr(TInspectForm.ShowCategories1Click));

RegRegisterMethod(TInspectForm,'DelphiStyle1Click',TypeInfo(_T8),[
TypeInfo(TObject)],Addr(TInspectForm.DelphiStyle1Click));

RegRegisterMethod(TInspectForm,'VBStyleClick',TypeInfo(_T9),[
TypeInfo(TObject)],Addr(TInspectForm.VBStyleClick));

RegRegisterMethod(TInspectForm,'CompList1Change',TypeInfo(_T10),[
TypeInfo(TObject)],Addr(TInspectForm.CompList1Change));

RegRegisterMethod(TInspectForm,'ClearInspector',TypeInfo(_T11),NoParams,Addr(TInspectForm.ClearInspector));

RegRegisterMethod(TInspectForm,'ToggleInspector',TypeInfo(_T12),NoParams,Addr(TInspectForm.ToggleInspector));

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
__RegisterVars;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnRegisterVars;
__UnregisterProcs;
end.
