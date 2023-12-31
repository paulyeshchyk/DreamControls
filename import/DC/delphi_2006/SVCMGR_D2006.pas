{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit SVCMGR_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  Windows,
  Messages,
  SysUtils,
  Classes,
  WinSvc,
  SvcMgr;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : TPersistent) of object;

_T1 = procedure (p0 : String) of object;

_T2 = procedure (p0 : String;
p1 : DWord;
p2 : Word;
p3 : DWord) of object;

_T3 = procedure  of object;

_T4 = function : Boolean of object;

_T5 = _T4;

_T6 = _T4;

_T7 = _T3;

_T8 = _T3;

_T9 = function (p0 : DWord): Boolean of object;

{_T10 = function : TServiceController of object;}

_T11 = _T3;

_T12 = procedure (p0 : String;
p1 : DWord;
p2 : Integer;
p3 : Integer) of object;

_T13 = procedure (p0 : Exception) of object;

{_T14 = procedure (p0 : TComponentClass;
var p1) of object;}

_T15 = _T3;

_T16 = _T4;

_T17 = _T3;

_T18 = procedure (p0 : TService) of object;

_T19 = procedure (p0 : Boolean) of object;

procedure __TEventLogger__LogMessage__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
1:
begin
TEventLogger(__Instance).LogMessage(OleVariant(pargs^[0]));
end;
2:
begin
TEventLogger(__Instance).LogMessage(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
3:
begin
TEventLogger(__Instance).LogMessage(OleVariant(pargs^[2]),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
4:
begin
TEventLogger(__Instance).LogMessage(OleVariant(pargs^[3]),OleVariant(pargs^[2]),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

procedure __TService__LogMessage__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
1:
begin
TService(__Instance).LogMessage(OleVariant(pargs^[0]));
end;
2:
begin
TService(__Instance).LogMessage(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
3:
begin
TService(__Instance).LogMessage(OleVariant(pargs^[2]),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
4:
begin
TService(__Instance).LogMessage(OleVariant(pargs^[3]),OleVariant(pargs^[2]),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

function __DC__GetTDependencies__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDependencies(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTDependencies__Items(Instance : TObject; Params : PVariantArgList);
begin
TDependencies(Instance).Items[OleVariant(Params^[1])]:=TDependency(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTService__ErrCode(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TService(Instance).ErrCode;
end;

procedure __DC__SetTService__ErrCode(Instance : TObject; Params : PVariantArgList);
begin
TService(Instance).ErrCode:=OleVariant(Params^[0]);
end;

function __DC__GetTService__ParamCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TService(Instance).ParamCount;
end;

function __DC__GetTService__Param(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TService(Instance).Param[OleVariant(Params^[0])];
end;

function __DC__GetTService__ServiceThread(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TService(Instance).ServiceThread);
end;

function __DC__GetTService__Status(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TService(Instance).Status;
end;

procedure __DC__SetTService__Status(Instance : TObject; Params : PVariantArgList);
begin
TService(Instance).Status:=OleVariant(Params^[0]);
end;

function __DC__GetTService__Terminated(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TService(Instance).Terminated;
end;

function __DC__GetTService__Win32ErrCode(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TService(Instance).Win32ErrCode;
end;

procedure __DC__SetTService__Win32ErrCode(Instance : TObject; Params : PVariantArgList);
begin
TService(Instance).Win32ErrCode:=OleVariant(Params^[0]);
end;

function __DC__GetTServiceApplication__DelayInitialize(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TServiceApplication(Instance).DelayInitialize;
end;

procedure __DC__SetTServiceApplication__DelayInitialize(Instance : TObject; Params : PVariantArgList);
begin
TServiceApplication(Instance).DelayInitialize:=OleVariant(Params^[0]);
end;

function __DC__GetTServiceApplication__ServiceCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TServiceApplication(Instance).ServiceCount;
end;

function __DC__GetTServiceApplication__Title(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TServiceApplication(Instance).Title;
end;

procedure __DC__SetTServiceApplication__Title(Instance : TObject; Params : PVariantArgList);
begin
TServiceApplication(Instance).Title:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterIndexedProperty(TDependencies,'Items',1,True,__DC__GetTDependencies__Items,__DC__SetTDependencies__Items);
RegisterProperty(TService,'ErrCode',__DC__GetTService__ErrCode,__DC__SetTService__ErrCode);
RegisterProperty(TService,'ParamCount',__DC__GetTService__ParamCount,nil);
RegisterIndexedProperty(TService,'Param',1,False,__DC__GetTService__Param,nil);
RegisterProperty(TService,'ServiceThread',__DC__GetTService__ServiceThread,nil);
RegisterProperty(TService,'Status',__DC__GetTService__Status,__DC__SetTService__Status);
RegisterProperty(TService,'Terminated',__DC__GetTService__Terminated,nil);
RegisterProperty(TService,'Win32ErrCode',__DC__GetTService__Win32ErrCode,__DC__SetTService__Win32ErrCode);
RegisterProperty(TServiceApplication,'DelayInitialize',__DC__GetTServiceApplication__DelayInitialize,__DC__SetTServiceApplication__DelayInitialize);
RegisterProperty(TServiceApplication,'ServiceCount',__DC__GetTServiceApplication__ServiceCount,nil);
RegisterProperty(TServiceApplication,'Title',__DC__GetTServiceApplication__Title,__DC__SetTServiceApplication__Title);
end;

function __DC__GetSvcMgr__Application(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(SvcMgr.Application);
end;

procedure __DC__SetSvcMgr__Application(Instance : TObject; Params : PVariantArgList);
begin
TObject(SvcMgr.Application):=(VarToObject(OleVariant(Params^[0])));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('Application',__DC__GetSvcMgr__Application,__DC__SetSvcMgr__Application));
end;

procedure __UnregisterVars;
begin
__RegisteredVars.Free;
end;

const __ConstNames0 : array[0..19] of string = (
'CM_SERVICE_CONTROL_CODE'
,'stWin32'
,'stDevice'
,'stFileSystem'
,'csStopped'
,'csStartPending'
,'csStopPending'
,'csRunning'
,'csContinuePending'
,'csPausePending'
,'csPaused'
,'esIgnore'
,'esNormal'
,'esSevere'
,'esCritical'
,'stBoot'
,'stSystem'
,'stAuto'
,'stManual'
,'stDisabled'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,CM_SERVICE_CONTROL_CODE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,stWin32));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,stDevice));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,stFileSystem));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,csStopped));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,csStartPending));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,csStopPending));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,csRunning));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,csContinuePending));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,csPausePending));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,csPaused));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,esIgnore));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,esNormal));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,esSevere));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,esCritical));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,stBoot));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,stSystem));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,stAuto));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,stManual));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,stDisabled));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..5] of TClass = (
TDependencies,
TDependency,
TEventLogger,
TService,
TServiceApplication,
TServiceThread
);
 function __getFullMethodName(sclassName, smethodName:String):String; 
 begin 
   result := format('%s.%s',[sClassName, sMethodName]) 
 end; 
procedure fillVMTProcs();
var
  ctx : TRttiContext;
  t:TRttiType;
  m:TRttiMethod;
  i:Integer;
begin
  ctx := TRttiContext.Create;
  try
    for i := 0 to length(classList) - 1 do
    begin
      t:=ctx.GetType(classList[i].ClassInfo);
      for m in t.GetMethods  do
      begin
        if m.DispatchKind = dkVtable then
        vmtMethodList.addObject(__getFullMethodName(classList[i].className,m.Name), pointer(m.VirtualIndex*4));
      end;
      t.free;
    end;
  finally
    ctx.free;
  end;
end;
function getVMTProcAddr(className, MethodName:String;oldAddr:Integer):Pointer;
var i:Integer;
begin
  i:=vmtMethodList.indexOf(__getFullMethodName(className,methodName));
  if i>-1 then 
    result:=pointer(vmtMethodList.Objects[i])
  else 
  result:=pointer(oldAddr);
end;  
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
RegisterProc(TDependencies,'Create',mtConstructor,TypeInfo(_T0),[
TypeInfo(TPersistent)],Addr(TDependencies.Create),cRegister);

RegisterProc(TEventLogger,'Create',mtConstructor,TypeInfo(_T1),[
TypeInfo(String)],Addr(TEventLogger.Create),cRegister);

RegisterProc(TEventLogger,'LogMessage',mtScriptMethod,TypeInfo(_T2),[
TypeInfo(String),
TypeInfo(DWord),
TypeInfo(Word),
TypeInfo(DWord)],Addr(__TEventLogger__LogMessage__Wrapper),cRegister);

//RegRegisterMethod(TService,'DoStart',TypeInfo(_T3),NoParams, pointer(60));
RegRegisterMethod(TService,'DoStart',TypeInfo(_T3),NoParams,  getVMTProcAddr('TService','DoStart',60));


//RegRegisterMethod(TService,'DoStop',TypeInfo(_T4),[TypeInfo(Boolean)], pointer(64));
RegRegisterMethod(TService,'DoStop',TypeInfo(_T4),[TypeInfo(Boolean)],  getVMTProcAddr('TService','DoStop',64));


//RegRegisterMethod(TService,'DoPause',TypeInfo(_T5),[TypeInfo(Boolean)], pointer(68));
RegRegisterMethod(TService,'DoPause',TypeInfo(_T5),[TypeInfo(Boolean)],  getVMTProcAddr('TService','DoPause',68));


//RegRegisterMethod(TService,'DoContinue',TypeInfo(_T6),[TypeInfo(Boolean)], pointer(72));
RegRegisterMethod(TService,'DoContinue',TypeInfo(_T6),[TypeInfo(Boolean)],  getVMTProcAddr('TService','DoContinue',72));


//RegRegisterMethod(TService,'DoInterrogate',TypeInfo(_T7),NoParams, pointer(76));
RegRegisterMethod(TService,'DoInterrogate',TypeInfo(_T7),NoParams,  getVMTProcAddr('TService','DoInterrogate',76));


//RegRegisterMethod(TService,'DoShutdown',TypeInfo(_T8),NoParams, pointer(80));
RegRegisterMethod(TService,'DoShutdown',TypeInfo(_T8),NoParams,  getVMTProcAddr('TService','DoShutdown',80));


//RegRegisterMethod(TService,'DoCustomControl',TypeInfo(_T9),[TypeInfo(DWord),TypeInfo(Boolean)], pointer(84));
RegRegisterMethod(TService,'DoCustomControl',TypeInfo(_T9),[TypeInfo(DWord),TypeInfo(Boolean)],  getVMTProcAddr('TService','DoCustomControl',84));


RegRegisterMethod(TService,'ReportStatus',TypeInfo(_T11),NoParams,Addr(TService.ReportStatus));

RegisterProc(TService,'LogMessage',mtScriptMethod,TypeInfo(_T12),[
TypeInfo(String),
TypeInfo(DWord),
TypeInfo(Integer),
TypeInfo(Integer)],Addr(__TService__LogMessage__Wrapper),cRegister);

RegRegisterMethod(TServiceApplication,'DoHandleException',TypeInfo(_T13),[
TypeInfo(Exception)], pointer(MinVMTOffset - 16));

//RegRegisterMethod(TServiceApplication,'Initialize',TypeInfo(_T15),NoParams, pointer(52));
RegRegisterMethod(TServiceApplication,'Initialize',TypeInfo(_T15),NoParams,  getVMTProcAddr('TServiceApplication','Initialize',52));


RegRegisterMethod(TServiceApplication,'Installing',TypeInfo(_T16),[TypeInfo(Boolean)],Addr(TServiceApplication.Installing));

//RegRegisterMethod(TServiceApplication,'Run',TypeInfo(_T17),NoParams, pointer(56));
RegRegisterMethod(TServiceApplication,'Run',TypeInfo(_T17),NoParams,  getVMTProcAddr('TServiceApplication','Run',56));


RegisterProc(TServiceThread,'Create',mtConstructor,TypeInfo(_T18),[
TypeInfo(TService)],Addr(TServiceThread.Create),cRegister);

RegRegisterMethod(TServiceThread,'ProcessRequests',TypeInfo(_T19),[
TypeInfo(Boolean)],Addr(TServiceThread.ProcessRequests));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
{RegRegisterMethod(TService,'GetServiceController',TypeInfo(_T10),[TypeInfo(TServiceController)], pointer(88))}

{RegRegisterMethod(TServiceApplication,'CreateForm',TypeInfo(_T14),[
TypeInfo(TComponentClass),
TypeInfoUntyped], pointer(48))}

RegisterEvent(TypeInfo(TContinueEvent),[
TypeInfo(TService),
TypeInfo(Boolean)]);

RegisterEvent(TypeInfo(TPauseEvent),[
TypeInfo(TService),
TypeInfo(Boolean)]);

RegisterEvent(TypeInfo(TServiceEvent),[
TypeInfo(TService)]);

RegisterEvent(TypeInfo(TStartEvent),[
TypeInfo(TService),
TypeInfo(Boolean)]);

RegisterEvent(TypeInfo(TStopEvent),[
TypeInfo(TService),
TypeInfo(Boolean)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
__RegisterVars;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnRegisterVars;
end.
