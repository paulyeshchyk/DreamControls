{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit SVRSTATSFRAME_D2006;
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
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  ActnList,
  SvrLog,
  SvrStatsFrame;
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

_T2 = procedure (p0 : TTransactionLogEntry) of object;

function __DC__GetTStatsFrame__RequestCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TStatsFrame(Instance).RequestCount;
end;

function __DC__GetTStatsFrame__ResponseCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TStatsFrame(Instance).ResponseCount;
end;

function __DC__GetTStatsFrame__TotalResponseTime(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TStatsFrame(Instance).TotalResponseTime;
end;

function __DC__GetTStatsFrame__AvgResponseTime(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TStatsFrame(Instance).AvgResponseTime;
end;

function __DC__GetTStatsFrame__LastResponseTime(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TStatsFrame(Instance).LastResponseTime;
end;

function __DC__GetTStatsFrame__MaxResponseTime(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TStatsFrame(Instance).MaxResponseTime;
end;

function __DC__GetTStatsFrame__MinResponseTime(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TStatsFrame(Instance).MinResponseTime;
end;

procedure __RegisterProps;
begin
RegisterProperty(TStatsFrame,'RequestCount',__DC__GetTStatsFrame__RequestCount,nil);
RegisterProperty(TStatsFrame,'ResponseCount',__DC__GetTStatsFrame__ResponseCount,nil);
RegisterProperty(TStatsFrame,'TotalResponseTime',__DC__GetTStatsFrame__TotalResponseTime,nil);
RegisterProperty(TStatsFrame,'AvgResponseTime',__DC__GetTStatsFrame__AvgResponseTime,nil);
RegisterProperty(TStatsFrame,'LastResponseTime',__DC__GetTStatsFrame__LastResponseTime,nil);
RegisterProperty(TStatsFrame,'MaxResponseTime',__DC__GetTStatsFrame__MaxResponseTime,nil);
RegisterProperty(TStatsFrame,'MinResponseTime',__DC__GetTStatsFrame__MinResponseTime,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TStatsFrame
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
RegRegisterMethod(TStatsFrame,'ResetCountsActionExecute',TypeInfo(_T0),[
TypeInfo(TObject)],Addr(TStatsFrame.ResetCountsActionExecute));

RegRegisterMethod(TStatsFrame,'ResetCountsActionUpdate',TypeInfo(_T1),[
TypeInfo(TObject)],Addr(TStatsFrame.ResetCountsActionUpdate));

RegRegisterMethod(TStatsFrame,'LogStatistics',TypeInfo(_T2),[
TypeInfo(TTransactionLogEntry)],Addr(TStatsFrame.LogStatistics));

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
