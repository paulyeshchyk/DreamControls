{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDECHOUDP_D2006;
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
  Classes,
  IdAssignedNumbers,
  IdUDPBase,
  IdUDPClient,
  IdEchoUDP;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : String): String of object;

function __DC__GetTIdEchoUDP__EchoTime(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdEchoUDP(Instance).EchoTime;
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdEchoUDP,'EchoTime',__DC__GetTIdEchoUDP__EchoTime,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TIdEchoUDP
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
RegRegisterMethod(TIdEchoUDP,'Echo',TypeInfo(_T0),[
TypeInfo(String),TypeInfo(String)],Addr(TIdEchoUDP.Echo));

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