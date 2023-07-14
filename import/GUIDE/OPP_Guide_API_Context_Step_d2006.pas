{*******************************************************}
{                                                       }
{ Import unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

Unit OPP_Guide_API_Context_Step_d2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  SysUtils,
  Classes,
  OPP_Guide_API,
  OPP_Guide_API_Context_Step;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure  of object;

_T1 = function : TOPPGuideAPIContextStepResult of object;

_T2 = procedure (p0 : Variant;
p1 : String) of object;

_T3 = procedure (const p0 : TOPPGuideAPIContextStepResult) of object;

_T4 = _T1;

_T5 = function : String of object;

_T6 = _T5;

_T7 = _T5;

function __DC__GetTOPPGuideAPIContextStep__ExecutionResult(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TOPPGuideAPIContextStep(Instance).ExecutionResult);
end;

procedure __DC__SetTOPPGuideAPIContextStep__ExecutionResult(Instance : TObject; Params : PVariantArgList);
begin
TOPPGuideAPIContextStep(Instance).ExecutionResult:=TOPPGuideAPIContextStepResult(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTOPPGuideAPIContextStep__StateDescription(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TOPPGuideAPIContextStep(Instance).StateDescription;
end;

procedure __DC__SetTOPPGuideAPIContextStep__StateDescription(Instance : TObject; Params : PVariantArgList);
begin
TOPPGuideAPIContextStep(Instance).StateDescription:=OleVariant(Params^[0]);
end;

function __DC__GetTOPPGuideAPIContextStep__NodeType(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TOPPGuideAPIContextStep(Instance).NodeType;
end;

procedure __DC__SetTOPPGuideAPIContextStep__NodeType(Instance : TObject; Params : PVariantArgList);
begin
TOPPGuideAPIContextStep(Instance).NodeType:=OleVariant(Params^[0]);
end;

function __DC__GetTOPPGuideAPIContextStep__Caption(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TOPPGuideAPIContextStep(Instance).Caption;
end;

procedure __DC__SetTOPPGuideAPIContextStep__Caption(Instance : TObject; Params : PVariantArgList);
begin
TOPPGuideAPIContextStep(Instance).Caption:=OleVariant(Params^[0]);
end;

function __DC__GetTOPPGuideAPIContextStep__Identifier(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TOPPGuideAPIContextStep(Instance).Identifier;
end;

procedure __DC__SetTOPPGuideAPIContextStep__Identifier(Instance : TObject; Params : PVariantArgList);
begin
TOPPGuideAPIContextStep(Instance).Identifier:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TOPPGuideAPIContextStep,'ExecutionResult',__DC__GetTOPPGuideAPIContextStep__ExecutionResult,__DC__SetTOPPGuideAPIContextStep__ExecutionResult);
RegisterProperty(TOPPGuideAPIContextStep,'StateDescription',__DC__GetTOPPGuideAPIContextStep__StateDescription,__DC__SetTOPPGuideAPIContextStep__StateDescription);
RegisterProperty(TOPPGuideAPIContextStep,'NodeType',__DC__GetTOPPGuideAPIContextStep__NodeType,__DC__SetTOPPGuideAPIContextStep__NodeType);
RegisterProperty(TOPPGuideAPIContextStep,'Caption',__DC__GetTOPPGuideAPIContextStep__Caption,__DC__SetTOPPGuideAPIContextStep__Caption);
RegisterProperty(TOPPGuideAPIContextStep,'Identifier',__DC__GetTOPPGuideAPIContextStep__Identifier,__DC__SetTOPPGuideAPIContextStep__Identifier);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TOPPGuideAPIContextStep
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
UnRegisterClassesInScript(ClassList);
end;

var __RegisteredMethods : TList;
procedure _mreg_0;
begin
RegisterProc(TOPPGuideAPIContextStep,'Create',mtConstructor,TypeInfo(_T0),NoParams,Addr(TOPPGuideAPIContextStep.Create),cRegister);

RegRegisterMethod(TOPPGuideAPIContextStep,'GetTest',TypeInfo(_T1),[TypeInfo(TOPPGuideAPIContextStepResult)],Addr(TOPPGuideAPIContextStep.GetTest));

RegRegisterMethod(TOPPGuideAPIContextStep,'PerformIn',TypeInfo(_T2),[
TypeInfo(Variant),
TypeInfo(String)], pointer(0));

RegRegisterMethod(TOPPGuideAPIContextStep,'SetExecutionResult',TypeInfo(_T3),[
TypeInfo(TOPPGuideAPIContextStepResult)],Addr(TOPPGuideAPIContextStep.SetExecutionResult));

RegRegisterMethod(TOPPGuideAPIContextStep,'GetExecutionResult',TypeInfo(_T4),[TypeInfo(TOPPGuideAPIContextStepResult)],Addr(TOPPGuideAPIContextStep.GetExecutionResult));

RegRegisterMethod(TOPPGuideAPIContextStep,'IdentifierName',TypeInfo(_T5),[TypeInfo(String)],Addr(TOPPGuideAPIContextStep.IdentifierName));

RegRegisterMethod(TOPPGuideAPIContextStep,'IdentifierValue',TypeInfo(_T6),[TypeInfo(String)],Addr(TOPPGuideAPIContextStep.IdentifierValue));

RegRegisterMethod(TOPPGuideAPIContextStep,'PIdentifierName',TypeInfo(_T7),[TypeInfo(String)],Addr(TOPPGuideAPIContextStep.PIdentifierName));

end;
initialization
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
