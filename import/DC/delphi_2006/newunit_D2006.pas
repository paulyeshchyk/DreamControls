{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit newunit_D2006;
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
  dcapp,
  StdCtrls,
  ExtCtrls,
  dcconsts,
  consts,
  ComCtrls,
  dcpalet,
  dcstdctl,
  dcgen,
  dccommon,
  dcdreamlib,
  newunit;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function : TObjectParamListItem of object;

_T1 = function : TIDEObject of object;

_T2 = procedure (p0 : TObject) of object;

_T3 = _T2;

procedure __RegisterProps;
begin
end;

function __DC__Getnewunit__NewFrm(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(newunit.NewFrm);
end;

procedure __DC__Setnewunit__NewFrm(Instance : TObject; Params : PVariantArgList);
begin
TObject(newunit.NewFrm):=(VarToObject(OleVariant(Params^[0])));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('NewFrm',__DC__Getnewunit__NewFrm,__DC__Setnewunit__NewFrm));
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
TNewFrm
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..1] of string = (
'GetNewIDEObjectData'
,'CreateNewIDEObject'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[TypeInfo(TObjectParamListItem)],Addr(GetNewIDEObjectData),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[TypeInfo(TIDEObject)],Addr(CreateNewIDEObject),cRegister);

RegRegisterMethod(TNewFrm,'FormCreate',TypeInfo(_T2),[
TypeInfo(TObject)],Addr(TNewFrm.FormCreate));

RegRegisterMethod(TNewFrm,'PageControlDblClick',TypeInfo(_T3),[
TypeInfo(TObject)],Addr(TNewFrm.PageControlDblClick));

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