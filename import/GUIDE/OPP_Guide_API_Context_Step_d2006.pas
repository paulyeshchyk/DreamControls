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
  OPP_Guide_API_Identifiable,
  OPP_Guide_API_Context_Step_Result,
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

_T1 = procedure (p0 : String;
p1 : TOPPGuideAPIContextStepResultCallback) of object;

_T2 = function : String of object;

_T3 = _T2;

_T4 = _T2;

_T5 = _T2;

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

function __DC__GetTOPPGuideAPIContextStep__PIdentifier(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TOPPGuideAPIContextStep(Instance).PIdentifier;
end;

procedure __DC__SetTOPPGuideAPIContextStep__PIdentifier(Instance : TObject; Params : PVariantArgList);
begin
TOPPGuideAPIContextStep(Instance).PIdentifier:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TOPPGuideAPIContextStep,'NodeType',__DC__GetTOPPGuideAPIContextStep__NodeType,__DC__SetTOPPGuideAPIContextStep__NodeType);
RegisterProperty(TOPPGuideAPIContextStep,'Caption',__DC__GetTOPPGuideAPIContextStep__Caption,__DC__SetTOPPGuideAPIContextStep__Caption);
RegisterProperty(TOPPGuideAPIContextStep,'Identifier',__DC__GetTOPPGuideAPIContextStep__Identifier,__DC__SetTOPPGuideAPIContextStep__Identifier);
RegisterProperty(TOPPGuideAPIContextStep,'PIdentifier',__DC__GetTOPPGuideAPIContextStep__PIdentifier,__DC__SetTOPPGuideAPIContextStep__PIdentifier);
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

RegRegisterMethod(TOPPGuideAPIContextStep,'Execute',TypeInfo(_T1),[
TypeInfo(String),
TypeInfo(TOPPGuideAPIContextStepResultCallback)], pointer(0));

RegRegisterMethod(TOPPGuideAPIContextStep,'IdentifierName',TypeInfo(_T2),[TypeInfo(String)],Addr(TOPPGuideAPIContextStep.IdentifierName));

RegRegisterMethod(TOPPGuideAPIContextStep,'IdentifierValue',TypeInfo(_T3),[TypeInfo(String)],Addr(TOPPGuideAPIContextStep.IdentifierValue));

RegRegisterMethod(TOPPGuideAPIContextStep,'PIdentifierName',TypeInfo(_T4),[TypeInfo(String)],Addr(TOPPGuideAPIContextStep.PIdentifierName));

RegRegisterMethod(TOPPGuideAPIContextStep,'PIdentifierValue',TypeInfo(_T5),[TypeInfo(String)],Addr(TOPPGuideAPIContextStep.PIdentifierValue));

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
