{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit newfield_D2006;
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
  StdCtrls,
  ExtCtrls,
  dcGen,
  dccommon,
  dcdreamlib,
  dcconsts,
  consts,
  newfield;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : TObject) of object;

_T1 = _T0;

procedure __RegisterProps;
begin
end;

function __DC__Getnewfield__NewFieldForm(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(newfield.NewFieldForm);
end;

procedure __DC__Setnewfield__NewFieldForm(Instance : TObject; Params : PVariantArgList);
begin
TObject(newfield.NewFieldForm):=(VarToObject(OleVariant(Params^[0])));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('NewFieldForm',__DC__Getnewfield__NewFieldForm,__DC__Setnewfield__NewFieldForm));
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
TNewFieldForm
);
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
RegRegisterMethod(TNewFieldForm,'FormCreate',TypeInfo(_T0),[
TypeInfo(TObject)],Addr(TNewFieldForm.FormCreate));

RegRegisterMethod(TNewFieldForm,'OkButClick',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TNewFieldForm.OkButClick));

end;
initialization
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
__RegisterVars;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnRegisterVars;
end.
