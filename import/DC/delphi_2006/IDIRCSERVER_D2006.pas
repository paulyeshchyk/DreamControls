{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDIRCSERVER_D2006;
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
  IdTCPServer,
  IdIrcServer;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
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
TIdIRCServer
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

procedure _mreg_0;
begin
end;
initialization
_mreg_0;
RegisterEvent(TypeInfo(TIdIrcFiveParmEvent),[
TypeInfo(TIdPeerThread),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string)]);

RegisterEvent(TypeInfo(TIdIrcGetEvent),[
TypeInfo(TIdPeerThread)]);

RegisterEvent(TypeInfo(TIdIrcOneParmEvent),[
TypeInfo(TIdPeerThread),
TypeInfo(string)]);

RegisterEvent(TypeInfo(TIdIrcOtherEvent),[
TypeInfo(TIdPeerThread),
TypeInfo(string),
TypeInfo(string)]);

RegisterEvent(TypeInfo(TIdIrcServerEvent),[
TypeInfo(TIdPeerThread),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string)]);

RegisterEvent(TypeInfo(TIdIrcThreeParmEvent),[
TypeInfo(TIdPeerThread),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string)]);

RegisterEvent(TypeInfo(TIdIrcTwoParmEvent),[
TypeInfo(TIdPeerThread),
TypeInfo(string),
TypeInfo(string)]);

RegisterEvent(TypeInfo(TIdIrcUserEvent),[
TypeInfo(TIdPeerThread),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.