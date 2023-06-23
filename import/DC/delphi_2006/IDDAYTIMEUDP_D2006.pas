{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDDAYTIMEUDP_D2006;
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
  IdDayTimeUDP;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
function __DC__GetTIdDayTimeUDP__DayTimeStr(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdDayTimeUDP(Instance).DayTimeStr;
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdDayTimeUDP,'DayTimeStr',__DC__GetTIdDayTimeUDP__DayTimeStr,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TIdDayTimeUDP
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
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
