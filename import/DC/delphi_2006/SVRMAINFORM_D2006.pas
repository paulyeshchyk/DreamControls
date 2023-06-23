{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit SVRMAINFORM_D2006;
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
  Registry,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ActnList,
  StdCtrls,
  SvrHTTPIndy,
  Menus,
  IniFiles,
  ExtCtrls,
  ComCtrls,
  SvrLog,
  SvrLogFrame,
  SvrStatsFrame,
  SvrMainForm;
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

_T2 = _T0;

_T3 = _T0;

_T4 = _T0;

_T5 = _T0;

_T6 = _T0;

_T7 = _T0;

_T8 = _T0;

_T9 = _T0;

_T10 = _T0;

_T11 = _T0;

_T12 = _T0;

_T13 = procedure (p0 : TObject;
var p1 : TCloseAction) of object;

_T14 = _T0;

_T15 = _T0;

_T16 = _T0;

_T17 = _T0;

_T18 = _T0;

_T19 = _T0;

procedure __RegisterProps;
begin
end;

function __DC__GetSvrMainForm__WebAppDbgMainForm(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(SvrMainForm.WebAppDbgMainForm);
end;

procedure __DC__SetSvrMainForm__WebAppDbgMainForm(Instance : TObject; Params : PVariantArgList);
begin
TObject(SvrMainForm.WebAppDbgMainForm):=(VarToObject(OleVariant(Params^[0])));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('WebAppDbgMainForm',__DC__GetSvrMainForm__WebAppDbgMainForm,__DC__SetSvrMainForm__WebAppDbgMainForm));
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
TWebAppDbgMainForm
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
RegRegisterMethod(TWebAppDbgMainForm,'ToggleServerActionExecute',TypeInfo(_T0),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.ToggleServerActionExecute));

RegRegisterMethod(TWebAppDbgMainForm,'FormCreate',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.FormCreate));

RegRegisterMethod(TWebAppDbgMainForm,'ToggleServerActionUpdate',TypeInfo(_T2),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.ToggleServerActionUpdate));

RegRegisterMethod(TWebAppDbgMainForm,'StopActionExecute',TypeInfo(_T3),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.StopActionExecute));

RegRegisterMethod(TWebAppDbgMainForm,'StopActionUpdate',TypeInfo(_T4),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.StopActionUpdate));

RegRegisterMethod(TWebAppDbgMainForm,'StartActionExecute',TypeInfo(_T5),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.StartActionExecute));

RegRegisterMethod(TWebAppDbgMainForm,'StartActionUpdate',TypeInfo(_T6),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.StartActionUpdate));

RegRegisterMethod(TWebAppDbgMainForm,'PropertiesActionExecute',TypeInfo(_T7),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.PropertiesActionExecute));

RegRegisterMethod(TWebAppDbgMainForm,'ExitActionExecute',TypeInfo(_T8),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.ExitActionExecute));

RegRegisterMethod(TWebAppDbgMainForm,'FormDestroy',TypeInfo(_T9),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.FormDestroy));

RegRegisterMethod(TWebAppDbgMainForm,'HomeClick',TypeInfo(_T10),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.HomeClick));

RegRegisterMethod(TWebAppDbgMainForm,'HideActionExecute',TypeInfo(_T11),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.HideActionExecute));

RegRegisterMethod(TWebAppDbgMainForm,'SysTray1DblClick',TypeInfo(_T12),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.SysTray1DblClick));

RegRegisterMethod(TWebAppDbgMainForm,'FormClose',TypeInfo(_T13),[
TypeInfo(TObject),
TypeInfo(TCloseAction)],Addr(TWebAppDbgMainForm.FormClose));

RegRegisterMethod(TWebAppDbgMainForm,'MainUpdateActionExecute',TypeInfo(_T14),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.MainUpdateActionExecute));

RegRegisterMethod(TWebAppDbgMainForm,'MainUpdateActionUpdate',TypeInfo(_T15),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.MainUpdateActionUpdate));

RegRegisterMethod(TWebAppDbgMainForm,'ToggleLogActionExecute',TypeInfo(_T16),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.ToggleLogActionExecute));

RegRegisterMethod(TWebAppDbgMainForm,'ToggleLogActionUpdate',TypeInfo(_T17),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.ToggleLogActionUpdate));

RegRegisterMethod(TWebAppDbgMainForm,'AboutActionExecute',TypeInfo(_T18),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.AboutActionExecute));

RegRegisterMethod(TWebAppDbgMainForm,'StatsFrameResetCountsActionExecute',TypeInfo(_T19),[
TypeInfo(TObject)],Addr(TWebAppDbgMainForm.StatsFrameResetCountsActionExecute));

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