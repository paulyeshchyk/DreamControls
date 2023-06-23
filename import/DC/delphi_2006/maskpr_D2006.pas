{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit maskpr_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  dcscript,
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  Grids,
  Mask,
  dcdsgnstuff,
  dcsystem,
  dcconsts,
  consts,
  dcgen,
  dccommon,
  dcdreamlib,
  maskutils,
  MaskPr;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (var p0 : String;
var p1 : String): Boolean of object;

_T1 = procedure (p0 : TObject) of object;

_T2 = _T1;

_T3 = _T1;

_T4 = _T1;

_T5 = _T1;

_T6 = _T1;

_T7 = _T1;

_T8 = procedure (const p0 : String) of object;

procedure __RegisterProps;
begin
end;

function __DC__GetMaskPr__MaskEditForm(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(MaskPr.MaskEditForm);
end;

procedure __DC__SetMaskPr__MaskEditForm(Instance : TObject; Params : PVariantArgList);
begin
TObject(MaskPr.MaskEditForm):=(VarToObject(OleVariant(Params^[0])));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('MaskEditForm',__DC__GetMaskPr__MaskEditForm,__DC__SetMaskPr__MaskEditForm));
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

const ClassList : array[0..1] of TClass = (
TEditMaskPropEdit,
TMaskEditForm
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
'EditMaskProp'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(String),
TypeInfo(String),TypeInfo(Boolean)],Addr(EditMaskProp),cRegister);

RegRegisterMethod(TMaskEditForm,'MaskButtonClick',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TMaskEditForm.MaskButtonClick));

RegRegisterMethod(TMaskEditForm,'FormCreate',TypeInfo(_T2),[
TypeInfo(TObject)],Addr(TMaskEditForm.FormCreate));

RegRegisterMethod(TMaskEditForm,'FormDestroy',TypeInfo(_T3),[
TypeInfo(TObject)],Addr(TMaskEditForm.FormDestroy));

RegRegisterMethod(TMaskEditForm,'BlankEditChange',TypeInfo(_T4),[
TypeInfo(TObject)],Addr(TMaskEditForm.BlankEditChange));

RegRegisterMethod(TMaskEditForm,'InputMaskEditChange',TypeInfo(_T5),[
TypeInfo(TObject)],Addr(TMaskEditForm.InputMaskEditChange));

RegRegisterMethod(TMaskEditForm,'SaveLiteralClick',TypeInfo(_T6),[
TypeInfo(TObject)],Addr(TMaskEditForm.SaveLiteralClick));

RegRegisterMethod(TMaskEditForm,'MaskGridClick',TypeInfo(_T7),[
TypeInfo(TObject)],Addr(TMaskEditForm.MaskGridClick));

RegRegisterMethod(TMaskEditForm,'LoadMasksFromFile',TypeInfo(_T8),[
TypeInfo(String)],Addr(TMaskEditForm.LoadMasksFromFile));

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
