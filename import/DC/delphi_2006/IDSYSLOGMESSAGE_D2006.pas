{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDSYSLOGMESSAGE_D2006;
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
  IdGlobal,
  SysUtils,
  Classes,
  IdBaseComponent,
  IdSysLogMessage;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : TIdSyslogFacility): String of object;

_T1 = function (p0 : TIdSyslogSeverity): String of object;

_T2 = function (p0 : Word): TIdSyslogSeverity of object;

_T3 = function (p0 : TIdSyslogSeverity): Word of object;

_T4 = function (p0 : Word): TIdSyslogFacility of object;

_T5 = function (p0 : TIdSyslogFacility): Word of object;

_T6 = procedure (var p0 : String) of object;

_T7 = procedure (var p0 : Integer) of object;

_T8 = _T7;

_T9 = _T7;

_T10 = procedure  of object;

_T11 = _T10;

_T12 = function (p0 : String): TDateTime of object;

_T13 = function : String of object;

_T14 = procedure (p0 : TStream;
p1 : Integer;
p2 : String) of object;

_T15 = procedure (const p0 : String) of object;

_T16 = function (p0 : Integer): String of object;

function __DC__GetTIdSysLogMessage__RawMessage(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdSysLogMessage(Instance).RawMessage;
end;

procedure __DC__SetTIdSysLogMessage__RawMessage(Instance : TObject; Params : PVariantArgList);
begin
TIdSysLogMessage(Instance).RawMessage:=OleVariant(Params^[0]);
end;

function __DC__GetTIdSysLogMessage__TimeStamp(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdSysLogMessage(Instance).TimeStamp;
end;

procedure __DC__SetTIdSysLogMessage__TimeStamp(Instance : TObject; Params : PVariantArgList);
begin
TIdSysLogMessage(Instance).TimeStamp:=OleVariant(Params^[0]);
end;

function __DC__GetTIdSysLogMessage__Peer(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdSysLogMessage(Instance).Peer;
end;

procedure __DC__SetTIdSysLogMessage__Peer(Instance : TObject; Params : PVariantArgList);
begin
TIdSysLogMessage(Instance).Peer:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdSysLogMessage,'RawMessage',__DC__GetTIdSysLogMessage__RawMessage,__DC__SetTIdSysLogMessage__RawMessage);
RegisterProperty(TIdSysLogMessage,'TimeStamp',__DC__GetTIdSysLogMessage__TimeStamp,__DC__SetTIdSysLogMessage__TimeStamp);
RegisterProperty(TIdSysLogMessage,'Peer',__DC__GetTIdSysLogMessage__Peer,__DC__SetTIdSysLogMessage__Peer);
end;

const __ConstNames0 : array[0..31] of string = (
'sfKernel'
,'sfUserLevel'
,'sfMailSystem'
,'sfSystemDaemon'
,'sfSecurityOne'
,'sfSysLogInternal'
,'sfLPR'
,'sfNNTP'
,'sfUUCP'
,'sfClockDaemonOne'
,'sfSecurityTwo'
,'sfFTPDaemon'
,'sfNTP'
,'sfLogAudit'
,'sfLogAlert'
,'sfClockDaemonTwo'
,'sfLocalUseZero'
,'sfLocalUseOne'
,'sfLocalUseTwo'
,'sfLocalUseThree'
,'sfLocalUseFour'
,'sfLocalUseFive'
,'sfLocalUseSix'
,'sfLocalUseSeven'
,'slEmergency'
,'slAlert'
,'slCritical'
,'slError'
,'slWarning'
,'slNotice'
,'slInformational'
,'slDebug'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,sfKernel));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,sfUserLevel));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,sfMailSystem));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,sfSystemDaemon));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,sfSecurityOne));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,sfSysLogInternal));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,sfLPR));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,sfNNTP));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,sfUUCP));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,sfClockDaemonOne));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,sfSecurityTwo));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,sfFTPDaemon));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,sfNTP));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,sfLogAudit));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,sfLogAlert));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,sfClockDaemonTwo));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,sfLocalUseZero));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,sfLocalUseOne));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,sfLocalUseTwo));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,sfLocalUseThree));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,sfLocalUseFour));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,sfLocalUseFive));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,sfLocalUseSix));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,sfLocalUseSeven));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,slEmergency));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,slAlert));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,slCritical));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[27] ,slError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[28] ,slWarning));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[29] ,slNotice));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[30] ,slInformational));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[31] ,slDebug));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..1] of TClass = (
TIdSysLogMessage,
TIdSysLogMsgPart
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
const MethodNames : array[0..5] of string = (
'FacilityToString'
,'SeverityToString'
,'NoToSeverity'
,'logSeverityToNo'
,'NoToFacility'
,'logFacilityToNo'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(TIdSyslogFacility),TypeInfo(String)],Addr(FacilityToString),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[
TypeInfo(TIdSyslogSeverity),TypeInfo(String)],Addr(SeverityToString),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfo(Word),TypeInfo(TIdSyslogSeverity)],Addr(NoToSeverity),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T3),[
TypeInfo(TIdSyslogSeverity),TypeInfo(Word)],Addr(logSeverityToNo),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T4),[
TypeInfo(Word),TypeInfo(TIdSyslogFacility)],Addr(NoToFacility),cRegister);

RegisterProc(nil,MethodNames[5],mtProc,TypeInfo(_T5),[
TypeInfo(TIdSyslogFacility),TypeInfo(Word)],Addr(logFacilityToNo),cRegister);

//RegRegisterMethod(TIdSysLogMessage,'CheckASCIIRange',TypeInfo(_T6),[TypeInfo(String)], pointer(48));
RegRegisterMethod(TIdSysLogMessage,'CheckASCIIRange',TypeInfo(_T6),[TypeInfo(String)],  getVMTProcAddr('TIdSysLogMessage','CheckASCIIRange',48));


//RegRegisterMethod(TIdSysLogMessage,'ReadPRI',TypeInfo(_T7),[TypeInfo(Integer)], pointer(52));
RegRegisterMethod(TIdSysLogMessage,'ReadPRI',TypeInfo(_T7),[TypeInfo(Integer)],  getVMTProcAddr('TIdSysLogMessage','ReadPRI',52));


//RegRegisterMethod(TIdSysLogMessage,'ReadHeader',TypeInfo(_T8),[TypeInfo(Integer)], pointer(56));
RegRegisterMethod(TIdSysLogMessage,'ReadHeader',TypeInfo(_T8),[TypeInfo(Integer)],  getVMTProcAddr('TIdSysLogMessage','ReadHeader',56));


//RegRegisterMethod(TIdSysLogMessage,'ReadMSG',TypeInfo(_T9),[TypeInfo(Integer)], pointer(60));
RegRegisterMethod(TIdSysLogMessage,'ReadMSG',TypeInfo(_T9),[TypeInfo(Integer)],  getVMTProcAddr('TIdSysLogMessage','ReadMSG',60));


//RegRegisterMethod(TIdSysLogMessage,'parse',TypeInfo(_T10),NoParams, pointer(64));
RegRegisterMethod(TIdSysLogMessage,'parse',TypeInfo(_T10),NoParams,  getVMTProcAddr('TIdSysLogMessage','parse',64));


//RegRegisterMethod(TIdSysLogMessage,'UpdatePRI',TypeInfo(_T11),NoParams, pointer(68));
RegRegisterMethod(TIdSysLogMessage,'UpdatePRI',TypeInfo(_T11),NoParams,  getVMTProcAddr('TIdSysLogMessage','UpdatePRI',68));


//RegRegisterMethod(TIdSysLogMessage,'DecodeTimeStamp',TypeInfo(_T12),[TypeInfo(String),TypeInfo(TDateTime)], pointer(72));
RegRegisterMethod(TIdSysLogMessage,'DecodeTimeStamp',TypeInfo(_T12),[TypeInfo(String),TypeInfo(TDateTime)],  getVMTProcAddr('TIdSysLogMessage','DecodeTimeStamp',72));


//RegRegisterMethod(TIdSysLogMessage,'EncodeMessage',TypeInfo(_T13),[TypeInfo(String)], pointer(76));
RegRegisterMethod(TIdSysLogMessage,'EncodeMessage',TypeInfo(_T13),[TypeInfo(String)],  getVMTProcAddr('TIdSysLogMessage','EncodeMessage',76));


//RegRegisterMethod(TIdSysLogMessage,'ReadFromStream',TypeInfo(_T14),[TypeInfo(TStream),TypeInfo(Integer),TypeInfo(String)], pointer(80));
RegRegisterMethod(TIdSysLogMessage,'ReadFromStream',TypeInfo(_T14),[TypeInfo(TStream),TypeInfo(Integer),TypeInfo(String)],  getVMTProcAddr('TIdSysLogMessage','ReadFromStream',80));


RegRegisterMethod(TIdSysLogMessage,'SendToHost',TypeInfo(_T15),[
TypeInfo(String)],Addr(TIdSysLogMessage.SendToHost));

//RegRegisterMethod(TIdSysLogMsgPart,'PIDToStr',TypeInfo(_T16),[TypeInfo(Integer),TypeInfo(String)], pointer(12));
RegRegisterMethod(TIdSysLogMsgPart,'PIDToStr',TypeInfo(_T16),[TypeInfo(Integer),TypeInfo(String)],  getVMTProcAddr('TIdSysLogMsgPart','PIDToStr',12));


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
