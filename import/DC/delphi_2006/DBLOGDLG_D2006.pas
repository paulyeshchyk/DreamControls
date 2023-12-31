{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit DBLOGDLG_D2006;
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
  StdCtrls,
  ExtCtrls,
  DB,
  DBLogDlg;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (const p0 : string;
var p1 : string;
var p2 : string): Boolean of object;

_T1 = function (const p0 : string;
var p1 : string;
var p2 : string;
p3 : Boolean): Boolean of object;

_T2 = function (var p0 : string;
var p1 : string): Boolean of object;

_T3 = procedure (const p0 : Integer) of object;

_T4 = procedure (p0 : TObject) of object;

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
TLoginDialog
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
'LoginDialog'
,'LoginDialogEx'
,'RemoteLoginDialog'
,'SetCursorType'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(LoginDialog),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(Boolean),TypeInfo(Boolean)],Addr(LoginDialogEx),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(RemoteLoginDialog),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T3),[
TypeInfo(Integer)],Addr(SetCursorType),cRegister);

RegRegisterMethod(TLoginDialog,'FormShow',TypeInfo(_T4),[
TypeInfo(TObject)],Addr(TLoginDialog.FormShow));

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
