{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit DBEDIT_D2006;
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
  Windows,
  Messages,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  Buttons,
  StdCtrls,
  DB,
  DBTables,
  Dbedit;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : TDatabase): Boolean of object;

_T1 = procedure (p0 : TObject) of object;

_T2 = _T1;

_T3 = _T1;

_T4 = _T1;

_T5 = _T1;

_T6 = _T1;

_T7 = _T1;

_T8 = _T1;

_T9 = _T1;

procedure __RegisterProps;
begin
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TDBEditForm
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
'EditDatabase'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(TDatabase),TypeInfo(Boolean)],Addr(EditDatabase),cRegister);

RegRegisterMethod(TDBEditForm,'AliasNameChange',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TDBEditForm.AliasNameChange));

RegRegisterMethod(TDBEditForm,'AliasNameDropDown',TypeInfo(_T2),[
TypeInfo(TObject)],Addr(TDBEditForm.AliasNameDropDown));

RegRegisterMethod(TDBEditForm,'DriverNameChange',TypeInfo(_T3),[
TypeInfo(TObject)],Addr(TDBEditForm.DriverNameChange));

RegRegisterMethod(TDBEditForm,'DriverNameDropDown',TypeInfo(_T4),[
TypeInfo(TObject)],Addr(TDBEditForm.DriverNameDropDown));

RegRegisterMethod(TDBEditForm,'DefaultsButtonClick',TypeInfo(_T5),[
TypeInfo(TObject)],Addr(TDBEditForm.DefaultsButtonClick));

RegRegisterMethod(TDBEditForm,'ClearButtonClick',TypeInfo(_T6),[
TypeInfo(TObject)],Addr(TDBEditForm.ClearButtonClick));

RegRegisterMethod(TDBEditForm,'OkButtonClick',TypeInfo(_T7),[
TypeInfo(TObject)],Addr(TDBEditForm.OkButtonClick));

RegRegisterMethod(TDBEditForm,'FormCreate',TypeInfo(_T8),[
TypeInfo(TObject)],Addr(TDBEditForm.FormCreate));

RegRegisterMethod(TDBEditForm,'HelpButtonClick',TypeInfo(_T9),[
TypeInfo(TObject)],Addr(TDBEditForm.HelpButtonClick));

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
