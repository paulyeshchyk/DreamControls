{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit DDEREG_D2006;
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
  SysUtils,
  Classes,
  Graphics,
  Forms,
  Controls,
  Buttons,
  TypInfo,
  DdeMan,
  Messages,
  StdCtrls,
  ExtCtrls,
  DdeReg;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure  of object;

_T1 = procedure (p0 : TObject) of object;

_T2 = _T1;

_T3 = _T1;

_T4 = _T1;

procedure __RegisterProps;
begin
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..5] of TClass = (
TCliConvEdit,
TDdeClientItemProperty,
TDdeLinkDlg,
TDdeLinkInfoProperty,
TSrvrConvEdit,
TSrvrItemEdit
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
'Register'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),NoParams,Addr(Register),cRegister);

RegRegisterMethod(TDdeLinkDlg,'doPasteLink',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TDdeLinkDlg.doPasteLink));

RegRegisterMethod(TDdeLinkDlg,'DoPasteCheck',TypeInfo(_T2),[
TypeInfo(TObject)],Addr(TDdeLinkDlg.DoPasteCheck));

RegRegisterMethod(TDdeLinkDlg,'FormCreate',TypeInfo(_T3),[
TypeInfo(TObject)],Addr(TDdeLinkDlg.FormCreate));

RegRegisterMethod(TDdeLinkDlg,'HelpBtnClick',TypeInfo(_T4),[
TypeInfo(TObject)],Addr(TDdeLinkDlg.HelpBtnClick));

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
