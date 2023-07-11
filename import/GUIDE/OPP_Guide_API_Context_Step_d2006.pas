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
  Forms,
  Variants,
  SysUtils,
  Classes,
  OPP_Guide_API,
  OPP_Help_Predicate,
  OPP_Guide_API_Context_Step;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : OLEVariant) of object;

function __DC__GetTOPPGuideAPIContextStep__State(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TOPPGuideAPIContextStep(Instance).State;
end;

procedure __DC__SetTOPPGuideAPIContextStep__State(Instance : TObject; Params : PVariantArgList);
begin
TOPPGuideAPIContextStep(Instance).State:=OleVariant(Params^[0]);
end;

function __DC__GetTOPPGuideAPIContextStep__StateDescription(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TOPPGuideAPIContextStep(Instance).StateDescription;
end;

procedure __DC__SetTOPPGuideAPIContextStep__StateDescription(Instance : TObject; Params : PVariantArgList);
begin
TOPPGuideAPIContextStep(Instance).StateDescription:=OleVariant(Params^[0]);
end;

function __DC__GetTOPPGuideAPIContextStep__StepResult(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TOPPGuideAPIContextStep(Instance).StepResult;
end;

function __DC__GetTOPPGuideAPIContextStepProcess__ApplicationName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TOPPGuideAPIContextStepProcess(Instance).ApplicationName;
end;

procedure __DC__SetTOPPGuideAPIContextStepProcess__ApplicationName(Instance : TObject; Params : PVariantArgList);
begin
TOPPGuideAPIContextStepProcess(Instance).ApplicationName:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TOPPGuideAPIContextStep,'State',__DC__GetTOPPGuideAPIContextStep__State,__DC__SetTOPPGuideAPIContextStep__State);
RegisterProperty(TOPPGuideAPIContextStep,'StateDescription',__DC__GetTOPPGuideAPIContextStep__StateDescription,__DC__SetTOPPGuideAPIContextStep__StateDescription);
RegisterProperty(TOPPGuideAPIContextStep,'StepResult',__DC__GetTOPPGuideAPIContextStep__StepResult,nil);
RegisterProperty(TOPPGuideAPIContextStepProcess,'ApplicationName',__DC__GetTOPPGuideAPIContextStepProcess__ApplicationName,__DC__SetTOPPGuideAPIContextStepProcess__ApplicationName);
end;

const __ConstNames0 : array[0..2] of string = (
'osIdle'
,'osRunning'
,'osError'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,osIdle));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,osRunning));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,osError));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
for i := 0 to 2 do
UnregisterConst(__ConstNames0[i], __RegisteredConstsList0[i]);
__RegisteredConstsList0.Free
end;

const ClassList : array[0..1] of TClass = (
TOPPGuideAPIContextStep,
TOPPGuideAPIContextStepProcess
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
RegRegisterMethod(TOPPGuideAPIContextStep,'Run',TypeInfo(_T0),[
TypeInfo(OLEVariant)], pointer(0));

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
