{*******************************************************}
{                                                       }
{ Import unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

Unit OPP_Guide_API_VIPER_d2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  classes,
  dcscript,
  dcsystem,
  dcdreamlib,
  SyncObjs,
  OPP_Guide_API,
  OPP_Guide_API_Context,
  OPP_Guide_API_Dataprovider,
  OPP_Guide_API_Executor,
  OPP_Guide_API_VIPER;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure  of object;

_T1 = function : TOPPGuideVIPER of object;

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
TOPPGuideVIPER
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
UnRegisterClassesInScript(ClassList);
end;

var __RegisteredMethods : TList;
procedure _mreg_0;
begin
RegisterProc(TOPPGuideVIPER,'Create',mtConstructor,TypeInfo(_T0),NoParams,Addr(TOPPGuideVIPER.Create),cRegister);

RegisterProc(TOPPGuideVIPER,'SharedInstance',mtClassMethod,TypeInfo(_T1),[TypeInfo(TOPPGuideVIPER)],Addr(TOPPGuideVIPER.SharedInstance),cRegister);

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
