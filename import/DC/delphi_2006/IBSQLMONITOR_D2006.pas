{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IBSQLMONITOR_D2006;
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
  IB,
  IBUtils,
  IBSQL,
  IBCustomDataSet,
  IBDatabase,
  IBServices,
  IBXConst,
  IBSQLMonitor;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
{_T0 = function : IIBSQLMonitorHook of object;}

_T1 = procedure  of object;

_T2 = _T1;

_T3 = function : Boolean of object;

_T4 = _T1;

function __DC__GetTIBCustomSQLMonitor__Handle(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBCustomSQLMonitor(Instance).Handle;
end;

procedure __RegisterProps;
begin
RegisterProperty(TIBCustomSQLMonitor,'Handle',__DC__GetTIBCustomSQLMonitor__Handle,nil);
end;

const __ConstNames0 : array[0..2] of string = (
'WM_MIN_IBSQL_MONITOR'
,'WM_MAX_IBSQL_MONITOR'
,'WM_IBSQL_SQL_EVENT'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,WM_MIN_IBSQL_MONITOR));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,WM_MAX_IBSQL_MONITOR));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,WM_IBSQL_SQL_EVENT));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..1] of TClass = (
TIBCustomSQLMonitor,
TIBSQLMonitor
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..2] of string = (
'EnableMonitoring'
,'DisableMonitoring'
,'MonitoringEnabled'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T1),NoParams,Addr(EnableMonitoring),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T2),NoParams,Addr(DisableMonitoring),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T3),[TypeInfo(Boolean)],Addr(MonitoringEnabled),cRegister);

RegRegisterMethod(TIBCustomSQLMonitor,'Release',TypeInfo(_T4),NoParams,Addr(TIBCustomSQLMonitor.Release));

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
{RegisterProc(nil,'MonitorHook',mtProc,TypeInfo(_T0),[TypeInfo(IIBSQLMonitorHook)],Addr(MonitorHook),cRegister)}

RegisterEvent(TypeInfo(TSQLEvent),[
TypeInfo(String),
TypeInfo(TDateTime)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.