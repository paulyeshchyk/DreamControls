{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IBCTRLS_D2006;
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
  DB,
  DBTables,
  IBProc32,
  BDE,
  IBCtrls;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure  of object;

_T1 = _T0;

_T2 = _T0;

_T3 = _T0;

function __DC__GetTIBEventAlerter__Queued(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBEventAlerter(Instance).Queued;
end;

procedure __RegisterProps;
begin
RegisterProperty(TIBEventAlerter,'Queued',__DC__GetTIBEventAlerter__Queued,nil);
end;

const __ConstNames0 : array[0..1] of string = (
'MaxEvents'
,'EventLength'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,MaxEvents));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,EventLength));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..2] of TClass = (
EIBError,
TIBComponent,
TIBEventAlerter
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
RegRegisterMethod(TIBEventAlerter,'CancelEvents',TypeInfo(_T0),NoParams,Addr(TIBEventAlerter.CancelEvents));

RegRegisterMethod(TIBEventAlerter,'QueueEvents',TypeInfo(_T1),NoParams,Addr(TIBEventAlerter.QueueEvents));

RegRegisterMethod(TIBEventAlerter,'RegisterEvents',TypeInfo(_T2),NoParams,Addr(TIBEventAlerter.RegisterEvents));

RegRegisterMethod(TIBEventAlerter,'UnRegisterEvents',TypeInfo(_T3),NoParams,Addr(TIBEventAlerter.UnRegisterEvents));

end;
initialization
_mreg_0;
RegisterEvent(TypeInfo(TEventAlert),[
TypeInfo(TObject),
TypeInfo(string),
TypeInfo(Longint),
TypeInfo(Boolean)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
