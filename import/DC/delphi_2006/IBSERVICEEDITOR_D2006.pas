{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IBSERVICEEDITOR_D2006;
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
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  ExtCtrls,
  IBServices,
  IBXConst,
  IBServiceEditor;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : TIBCustomService): Boolean of object;

_T1 = procedure (p0 : TObject) of object;

_T2 = _T1;

_T3 = _T1;

_T4 = _T1;

_T5 = _T1;

_T6 = function : Boolean of object;

function __DC__GetTfrmIBServiceEditor__Service(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TfrmIBServiceEditor(Instance).Service);
end;

procedure __DC__SetTfrmIBServiceEditor__Service(Instance : TObject; Params : PVariantArgList);
begin
TfrmIBServiceEditor(Instance).Service:=TIBCustomService(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TfrmIBServiceEditor,'Service',__DC__GetTfrmIBServiceEditor__Service,__DC__SetTfrmIBServiceEditor__Service);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TfrmIBServiceEditor
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
'EditIBService'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(TIBCustomService),TypeInfo(Boolean)],Addr(EditIBService),cRegister);

RegRegisterMethod(TfrmIBServiceEditor,'LocalRbtnClick',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TfrmIBServiceEditor.LocalRbtnClick));

RegRegisterMethod(TfrmIBServiceEditor,'RemoteRbtnClick',TypeInfo(_T2),[
TypeInfo(TObject)],Addr(TfrmIBServiceEditor.RemoteRbtnClick));

RegRegisterMethod(TfrmIBServiceEditor,'BrowseClick',TypeInfo(_T3),[
TypeInfo(TObject)],Addr(TfrmIBServiceEditor.BrowseClick));

RegRegisterMethod(TfrmIBServiceEditor,'UserNameChange',TypeInfo(_T4),[
TypeInfo(TObject)],Addr(TfrmIBServiceEditor.UserNameChange));

RegRegisterMethod(TfrmIBServiceEditor,'PasswordChange',TypeInfo(_T5),[
TypeInfo(TObject)],Addr(TfrmIBServiceEditor.PasswordChange));

RegRegisterMethod(TfrmIBServiceEditor,'Edit',TypeInfo(_T6),[TypeInfo(Boolean)],Addr(TfrmIBServiceEditor.Edit));

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
