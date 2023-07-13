{ ******************************************************* }
{ }
{ Import unit generated by UNITIMPORTER program }
{ }
{ ******************************************************* }

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
  OPP_Guide_API_Context_Step;
function ConvertTOPPGuideAPIContextStepResultToVariant(var R: TOPPGuideAPIContextStepResult): OleVariant;
function ConvertVariantToTOPPGuideAPIContextStepResult(const V: OleVariant): TOPPGuideAPIContextStepResult;

implementation

{$IFDEF D3}
{$ELSE}

uses ole2;

type
  OleVariant = Variant;
{$ENDIF}

type
  __TOPPGuideAPIContextStepResult__Wrapper = class(TDCRecordWrapper)
  private
    fR: TOPPGuideAPIContextStepResult;
  public
    function GetRecordPtr: pointer; override;
  published
    procedure setstate(const val: TOPPGuideAPIContextStepState);
    function getstate: TOPPGuideAPIContextStepState;
    property state: TOPPGuideAPIContextStepState read getstate write setstate;
    procedure setdescription(const val: AnsiString);
    function getdescription: AnsiString;
    property description: AnsiString read getdescription write setdescription;
    procedure setvalue_str(const val: AnsiString);
    function getvalue_str: AnsiString;
    property value_str: AnsiString read getvalue_str write setvalue_str;
  end;

type
  _T0 = procedure of object;

  _T1 = function: IDispatch of object;

  _T2 = procedure(p0: Variant; p1: String) of object;

  _T3 = procedure(const p0: IDispatch) of object;

  _T4 = _T1;

  _T5 = function: String of object;

  _T6 = _T5;

  _T7 = _T5;

function __TOPPGuideAPIContextStepResult__Wrapper.GetRecordPtr: pointer;
begin
  result := @fR;
end;

procedure __TOPPGuideAPIContextStepResult__Wrapper.setstate(const val: TOPPGuideAPIContextStepState);
begin
  TOPPGuideAPIContextStepResult(GetRecordPtr^).state := val;
end;

function __TOPPGuideAPIContextStepResult__Wrapper.getstate: TOPPGuideAPIContextStepState;
begin
  result := TOPPGuideAPIContextStepResult(GetRecordPtr^).state;
end;

procedure __TOPPGuideAPIContextStepResult__Wrapper.setdescription(const val: AnsiString);
begin
  TOPPGuideAPIContextStepResult(GetRecordPtr^).description := val;
end;

function __TOPPGuideAPIContextStepResult__Wrapper.getdescription: AnsiString;
begin
  result := TOPPGuideAPIContextStepResult(GetRecordPtr^).description;
end;

procedure __TOPPGuideAPIContextStepResult__Wrapper.setvalue_str(const val: AnsiString);
begin
  TOPPGuideAPIContextStepResult(GetRecordPtr^).value_str := val;
end;

function __TOPPGuideAPIContextStepResult__Wrapper.getvalue_str: AnsiString;
begin
  result := TOPPGuideAPIContextStepResult(GetRecordPtr^).value_str;
end;

function __TOPPGuideAPIContextStep__GetTest__Wrapper(__Instance: TOPPGuideAPIContextStep): IDispatch;
var
  __result: TOPPGuideAPIContextStepResult;
  __wrapper: __TOPPGuideAPIContextStepResult__Wrapper;
begin
  __result := TOPPGuideAPIContextStep(__Instance).GetTest;
  __wrapper := __TOPPGuideAPIContextStepResult__Wrapper.Create;
  __wrapper.fR := __result;
  result := IDispatch(__wrapper);
end;

procedure __TOPPGuideAPIContextStep__SetExecutionResult__Wrapper(__Instance: TOPPGuideAPIContextStep; const p0: IDispatch);
var
  __p0: ^TOPPGuideAPIContextStepResult;
  __i0: IDispatch;
begin
  if p0 = nil then
    exit;
  __p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
  TOPPGuideAPIContextStep(__Instance).SetExecutionResult(__p0^);
end;

function __TOPPGuideAPIContextStep__GetExecutionResult__Wrapper(__Instance: TOPPGuideAPIContextStep): IDispatch;
var
  __result: TOPPGuideAPIContextStepResult;
  __wrapper: __TOPPGuideAPIContextStepResult__Wrapper;
begin
  __result := TOPPGuideAPIContextStep(__Instance).GetExecutionResult;
  __wrapper := __TOPPGuideAPIContextStepResult__Wrapper.Create;
  __wrapper.fR := __result;
  result := IDispatch(__wrapper);
end;

type
  __TOPPGuideAPIContextStepResult__Wrapper__ = class(__TOPPGuideAPIContextStepResult__Wrapper)
  private
    fRPtr: pointer;
    function GetRecordPtr: pointer; override;
  end;

function __TOPPGuideAPIContextStepResult__Wrapper__.GetRecordPtr: pointer;
begin
  result := fRPtr;
end;

function ConvertTOPPGuideAPIContextStepResultToVariant(var R: TOPPGuideAPIContextStepResult): OleVariant;
var
  __rw: __TOPPGuideAPIContextStepResult__Wrapper__;
begin
  __rw := __TOPPGuideAPIContextStepResult__Wrapper__.Create;
  __rw.fRPtr := @R;
  result := IDispatch(__rw);
end;

function ConvertVariantToTOPPGuideAPIContextStepResult(const V: OleVariant): TOPPGuideAPIContextStepResult;
var
  _idisp: IDispatch;
begin
  _idisp := VarToInterface(V);
  if _idisp = nil then
    exit;
  result := TOPPGuideAPIContextStepResult((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

function __DC__GetTOPPGuideAPIContextStep__ExecutionResult(Instance: TObject; Params: PVariantArgList): OleVariant;
var
  __wrapper: __TOPPGuideAPIContextStepResult__Wrapper;
begin
  __wrapper := __TOPPGuideAPIContextStepResult__Wrapper.Create;
  __wrapper.fR := TOPPGuideAPIContextStep(Instance).ExecutionResult;
  result := IUnknown(__wrapper) as IDispatch;
end;

procedure __DC__SetTOPPGuideAPIContextStep__ExecutionResult(Instance: TObject; Params: PVariantArgList);
var
  __idisp: IDispatch;
  __iwrapper: IDCRecordWrapper;
begin
  __idisp := DCVarToInterface(OleVariant(Params^[0]));
  if __idisp = nil then
    exit;
  __idisp.QueryInterface(IDCRecordWrapper, __iwrapper);
  TOPPGuideAPIContextStep(Instance).ExecutionResult := TOPPGuideAPIContextStepResult(__iwrapper.GetRecordPtr^);
end;

function __DC__GetTOPPGuideAPIContextStep__StateDescription(Instance: TObject; Params: PVariantArgList): OleVariant;
begin
  result := TOPPGuideAPIContextStep(Instance).StateDescription;
end;

procedure __DC__SetTOPPGuideAPIContextStep__StateDescription(Instance: TObject; Params: PVariantArgList);
begin
  TOPPGuideAPIContextStep(Instance).StateDescription := OleVariant(Params^[0]);
end;

function __DC__GetTOPPGuideAPIContextStep__NodeType(Instance: TObject; Params: PVariantArgList): OleVariant;
begin
  result := TOPPGuideAPIContextStep(Instance).NodeType;
end;

procedure __DC__SetTOPPGuideAPIContextStep__NodeType(Instance: TObject; Params: PVariantArgList);
begin
  TOPPGuideAPIContextStep(Instance).NodeType := OleVariant(Params^[0]);
end;

function __DC__GetTOPPGuideAPIContextStep__Caption(Instance: TObject; Params: PVariantArgList): OleVariant;
begin
  result := TOPPGuideAPIContextStep(Instance).Caption;
end;

procedure __DC__SetTOPPGuideAPIContextStep__Caption(Instance: TObject; Params: PVariantArgList);
begin
  TOPPGuideAPIContextStep(Instance).Caption := OleVariant(Params^[0]);
end;

function __DC__GetTOPPGuideAPIContextStep__ReactionIdentifier(Instance: TObject; Params: PVariantArgList): OleVariant;
begin
  result := TOPPGuideAPIContextStep(Instance).ReactionIdentifier;
end;

procedure __DC__SetTOPPGuideAPIContextStep__ReactionIdentifier(Instance: TObject; Params: PVariantArgList);
begin
  TOPPGuideAPIContextStep(Instance).ReactionIdentifier := OleVariant(Params^[0]);
end;

function __DC__GetTOPPGuideAPIContextStep__ActionIdentifier(Instance: TObject; Params: PVariantArgList): OleVariant;
begin
  result := TOPPGuideAPIContextStep(Instance).ActionIdentifier;
end;

procedure __DC__SetTOPPGuideAPIContextStep__ActionIdentifier(Instance: TObject; Params: PVariantArgList);
begin
  TOPPGuideAPIContextStep(Instance).ActionIdentifier := OleVariant(Params^[0]);
end;

function __DC__GetTOPPGuideAPIContextStep__Identifier(Instance: TObject; Params: PVariantArgList): OleVariant;
begin
  result := TOPPGuideAPIContextStep(Instance).Identifier;
end;

procedure __DC__SetTOPPGuideAPIContextStep__Identifier(Instance: TObject; Params: PVariantArgList);
begin
  TOPPGuideAPIContextStep(Instance).Identifier := OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
  RegisterProperty(TOPPGuideAPIContextStep, 'ExecutionResult', __DC__GetTOPPGuideAPIContextStep__ExecutionResult, __DC__SetTOPPGuideAPIContextStep__ExecutionResult);
  RegisterProperty(TOPPGuideAPIContextStep, 'StateDescription', __DC__GetTOPPGuideAPIContextStep__StateDescription, __DC__SetTOPPGuideAPIContextStep__StateDescription);
  RegisterProperty(TOPPGuideAPIContextStep, 'NodeType', __DC__GetTOPPGuideAPIContextStep__NodeType, __DC__SetTOPPGuideAPIContextStep__NodeType);
  RegisterProperty(TOPPGuideAPIContextStep, 'Caption', __DC__GetTOPPGuideAPIContextStep__Caption, __DC__SetTOPPGuideAPIContextStep__Caption);
  RegisterProperty(TOPPGuideAPIContextStep, 'ReactionIdentifier', __DC__GetTOPPGuideAPIContextStep__ReactionIdentifier, __DC__SetTOPPGuideAPIContextStep__ReactionIdentifier);
  RegisterProperty(TOPPGuideAPIContextStep, 'ActionIdentifier', __DC__GetTOPPGuideAPIContextStep__ActionIdentifier, __DC__SetTOPPGuideAPIContextStep__ActionIdentifier);
  RegisterProperty(TOPPGuideAPIContextStep, 'Identifier', __DC__GetTOPPGuideAPIContextStep__Identifier, __DC__SetTOPPGuideAPIContextStep__Identifier);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const
  ClassList: array [0 .. 0] of TClass = (TOPPGuideAPIContextStep);

procedure __RegisterClasses;
begin
  RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
  UnRegisterClassesInScript(ClassList);
end;

var
  __RegisteredMethods: TList;

procedure _mreg_0;
begin
  RegisterProc(TOPPGuideAPIContextStep, 'Create', mtConstructor, TypeInfo(_T0), NoParams, Addr(TOPPGuideAPIContextStep.Create), cRegister);

  RegRegisterMethod(TOPPGuideAPIContextStep, 'GetTest', TypeInfo(_T1), [TypeInfo(IDispatch)], Addr(__TOPPGuideAPIContextStep__GetTest__Wrapper));

  RegRegisterMethod(TOPPGuideAPIContextStep, 'PerformIn', TypeInfo(_T2), [TypeInfo(Variant), TypeInfo(String)], pointer(0));

  RegRegisterMethod(TOPPGuideAPIContextStep, 'SetExecutionResult', TypeInfo(_T3), [TypeInfo(IDispatch)], Addr(__TOPPGuideAPIContextStep__SetExecutionResult__Wrapper));

  RegRegisterMethod(TOPPGuideAPIContextStep, 'GetExecutionResult', TypeInfo(_T4), [TypeInfo(IDispatch)], Addr(__TOPPGuideAPIContextStep__GetExecutionResult__Wrapper));

  RegRegisterMethod(TOPPGuideAPIContextStep, 'IdentifierName', TypeInfo(_T5), [TypeInfo(String)], Addr(TOPPGuideAPIContextStep.IdentifierName));

  RegRegisterMethod(TOPPGuideAPIContextStep, 'IdentifierValue', TypeInfo(_T6), [TypeInfo(String)], Addr(TOPPGuideAPIContextStep.IdentifierValue));

  RegRegisterMethod(TOPPGuideAPIContextStep, 'PIdentifierName', TypeInfo(_T7), [TypeInfo(String)], Addr(TOPPGuideAPIContextStep.PIdentifierName));

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