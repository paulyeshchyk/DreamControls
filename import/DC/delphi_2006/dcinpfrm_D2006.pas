{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcinpfrm_D2006;
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
  Graphics,
  Controls,
  Forms,
  StdCtrls,
  ExtCtrls,
  SysUtils,
  Classes,
  dccommon,
  dcedit,
  dcsystem,
  dcdreamlib,
  dcconsts,
  consts,
  dcinpfrm;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (const p0 : String;
const p1 : String;
p2 : Integer;
var p3 : Integer): Boolean of object;

_T1 = function (const p0 : String;
const p1 : String;
p2 : Integer): TInputLineForm of object;

_T2 = function (const p0 : String;
const p1 : String;
p2 : Integer;
var p3 : String): Boolean of object;

_T3 = function (var p0 : Extended): Boolean of object;

_T4 = procedure (p0 : TObject) of object;

procedure __RegisterProps;
begin
end;

function __DC__Getdcinpfrm__InputLineForm(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(dcinpfrm.InputLineForm);
end;

procedure __DC__Setdcinpfrm__InputLineForm(Instance : TObject; Params : PVariantArgList);
begin
TObject(dcinpfrm.InputLineForm):=(VarToObject(OleVariant(Params^[0])));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('InputLineForm',__DC__Getdcinpfrm__InputLineForm,__DC__Setdcinpfrm__InputLineForm));
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
TInputLineForm
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
'ReadInteger'
,'CreateInputForm'
,'ReadString'
,'ReadScaleFactor'
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
TypeInfo(String),
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(Boolean)],Addr(ReadInteger),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[
TypeInfo(String),
TypeInfo(String),
TypeInfo(Integer),TypeInfo(TInputLineForm)],Addr(CreateInputForm),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfo(String),
TypeInfo(String),
TypeInfo(Integer),
TypeInfo(String),TypeInfo(Boolean)],Addr(ReadString),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T3),[
TypeInfo(Extended),TypeInfo(Boolean)],Addr(ReadScaleFactor),cRegister);

RegRegisterMethod(TInputLineForm,'FormCreate',TypeInfo(_T4),[
TypeInfo(TObject)],Addr(TInputLineForm.FormCreate));

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
