{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dccolorsopt_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  dcscript,
  dcsystem,
  dcdreamLib,
  dcMemo,
  Messages,
  Forms,
  StdCtrls,
  PropCB,
  Controls,
  DCColorCombo,
  Classes,
  Dialogs,
  Buttons,
  dcColorsOpt;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
{_T0 = procedure (p0 : TClass;
const p1 : string;
p2 : TTextStylesInitProc) of object;}

{_T1 = function (p0 : TClass;
const p1 : string): TTextStylesInitProc of object;}

_T2 = procedure (p0 : TObject) of object;

_T3 = _T2;

_T4 = _T2;

_T5 = _T2;

_T6 = _T2;

_T7 = _T2;

_T8 = _T2;

_T9 = _T2;

_T10 = _T2;

_T11 = _T2;

_T12 = _T2;

_T13 = _T2;

_T14 = _T2;

procedure __RegisterProps;
begin
end;

function __DC__GetdcColorsOpt__ColorsOptForm(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(dcColorsOpt.ColorsOptForm);
end;

procedure __DC__SetdcColorsOpt__ColorsOptForm(Instance : TObject; Params : PVariantArgList);
begin
TObject(dcColorsOpt.ColorsOptForm):=(VarToObject(OleVariant(Params^[0])));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('ColorsOptForm',__DC__GetdcColorsOpt__ColorsOptForm,__DC__SetdcColorsOpt__ColorsOptForm));
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
TColorsOptForm
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..3] of string = (
'InitDefaultsTextStyles'
,'InitClassicTextStyles'
,'InitOceanTextStyles'
,'InitTwilightTextStyles'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T2),[
TypeInfo(TObject)],Addr(InitDefaultsTextStyles),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T3),[
TypeInfo(TObject)],Addr(InitClassicTextStyles),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T4),[
TypeInfo(TObject)],Addr(InitOceanTextStyles),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T5),[
TypeInfo(TObject)],Addr(InitTwilightTextStyles),cRegister);

RegRegisterMethod(TColorsOptForm,'FormCreate',TypeInfo(_T6),[
TypeInfo(TObject)],Addr(TColorsOptForm.FormCreate));

RegRegisterMethod(TColorsOptForm,'ElementsClick',TypeInfo(_T7),[
TypeInfo(TObject)],Addr(TColorsOptForm.ElementsClick));

RegRegisterMethod(TColorsOptForm,'ForeColorChange',TypeInfo(_T8),[
TypeInfo(TObject)],Addr(TColorsOptForm.ForeColorChange));

RegRegisterMethod(TColorsOptForm,'BackColorChange',TypeInfo(_T9),[
TypeInfo(TObject)],Addr(TColorsOptForm.BackColorChange));

RegRegisterMethod(TColorsOptForm,'OpenButtonClick',TypeInfo(_T10),[
TypeInfo(TObject)],Addr(TColorsOptForm.OpenButtonClick));

RegRegisterMethod(TColorsOptForm,'SaveButtonClick',TypeInfo(_T11),[
TypeInfo(TObject)],Addr(TColorsOptForm.SaveButtonClick));

RegRegisterMethod(TColorsOptForm,'ComboBox1Change',TypeInfo(_T12),[
TypeInfo(TObject)],Addr(TColorsOptForm.ComboBox1Change));

RegRegisterMethod(TColorsOptForm,'ForeColorBtnClick',TypeInfo(_T13),[
TypeInfo(TObject)],Addr(TColorsOptForm.ForeColorBtnClick));

RegRegisterMethod(TColorsOptForm,'BackColorBtnClick',TypeInfo(_T14),[
TypeInfo(TObject)],Addr(TColorsOptForm.BackColorBtnClick));

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
{RegisterProc(nil,'RegisterTextStylesInitProc',mtProc,TypeInfo(_T0),[
TypeInfo(TClass),
TypeInfo(string),
TypeInfo(TTextStylesInitProc)],Addr(RegisterTextStylesInitProc),cRegister)}

{RegisterProc(nil,'GetTextStylesInitProc',mtProc,TypeInfo(_T1),[
TypeInfo(TClass),
TypeInfo(string),TypeInfo(TTextStylesInitProc)],Addr(GetTextStylesInitProc),cRegister)}

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
