{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDTIMEUDP_D2006;
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
  IdTimeUDP;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function : Boolean of object;

function __DC__GetTIdTimeUDP__DateTimeCard(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdTimeUDP(Instance).DateTimeCard;
end;

function __DC__GetTIdTimeUDP__DateTime(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdTimeUDP(Instance).DateTime;
end;

function __DC__GetTIdTimeUDP__RoundTripDelay(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdTimeUDP(Instance).RoundTripDelay;
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdTimeUDP,'DateTimeCard',__DC__GetTIdTimeUDP__DateTimeCard,nil);
RegisterProperty(TIdTimeUDP,'DateTime',__DC__GetTIdTimeUDP__DateTime,nil);
RegisterProperty(TIdTimeUDP,'RoundTripDelay',__DC__GetTIdTimeUDP__RoundTripDelay,nil);
end;

const __ConstNames0 : array[0..0] of string = (
'TIMEUDP_BASEDATE'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,TIMEUDP_BASEDATE));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..0] of TClass = (
TIdTimeUDP
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
RegRegisterMethod(TIdTimeUDP,'SyncTime',TypeInfo(_T0),[TypeInfo(Boolean)],Addr(TIdTimeUDP.SyncTime));

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