{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDHL7_D2006;
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
  IdBaseComponent,
  IdException,
  IdGlobal,
  IdTCPClient,
  IdTCPConnection,
  IdTCPServer,
  SyncObjs,
  SysUtils,
  IdHL7;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : String;
p1 : String) of object;

_T1 = procedure  of object;

_T2 = function : Boolean of object;

_T3 = _T2;

_T4 = _T1;

_T5 = _T1;

_T6 = _T1;

_T7 = procedure (p0 : Integer) of object;

_T8 = function (p0 : String): TSendResponse of object;

_T9 = function (p0 : String;
var p1 : String): TSendResponse of object;

_T10 = procedure (p0 : TSendResponse;
p1 : String) of object;

_T11 = procedure (p0 : String) of object;

_T12 = function (var p0 : String): TSendResponse of object;

_T13 = function (var p0 : String): Pointer of object;

_T14 = procedure (p0 : Pointer;
p1 : String) of object;

_T15 = procedure (p0 : TIdHL7) of object;

function __DC__GetEHL7CommunicationError__InterfaceName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := EHL7CommunicationError(Instance).InterfaceName;
end;

function __DC__GetTIdHL7__ObjTag(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdHL7(Instance).ObjTag);
end;

procedure __DC__SetTIdHL7__ObjTag(Instance : TObject; Params : PVariantArgList);
begin
TIdHL7(Instance).ObjTag:=TObject(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdHL7__Status(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdHL7(Instance).Status;
end;

function __DC__GetTIdHL7__StatusDesc(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdHL7(Instance).StatusDesc;
end;

function __DC__GetTIdHL7__IsServer(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdHL7(Instance).IsServer;
end;

procedure __RegisterProps;
begin
RegisterProperty(EHL7CommunicationError,'InterfaceName',__DC__GetEHL7CommunicationError__InterfaceName,nil);
RegisterProperty(TIdHL7,'ObjTag',__DC__GetTIdHL7__ObjTag,__DC__SetTIdHL7__ObjTag);
RegisterProperty(TIdHL7,'Status',__DC__GetTIdHL7__Status,nil);
RegisterProperty(TIdHL7,'StatusDesc',__DC__GetTIdHL7__StatusDesc,nil);
RegisterProperty(TIdHL7,'IsServer',__DC__GetTIdHL7__IsServer,nil);
end;

const __ConstNames0 : array[0..28] of string = (
'MSG_START'
,'MSG_END'
,'BUFFER_SIZE_LIMIT'
,'WAIT_STOP'
,'cmUnknown'
,'cmAsynchronous'
,'cmSynchronous'
,'cmSingleThread'
,'srNone'
,'srError'
,'srNoConnection'
,'srSent'
,'srOK'
,'srTimeout'
,'isStopped'
,'isNotConnected'
,'isConnecting'
,'isWaitReconnect'
,'isConnected'
,'isUnusable'
,'DEFAULT_ADDRESS'
,'DEFAULT_PORT'
,'DEFAULT_TIMEOUT'
,'DEFAULT_RECEIVE_TIMEOUT'
,'NULL_IP'
,'DEFAULT_CONN_LIMIT'
,'DEFAULT_RECONNECT_DELAY'
,'DEFAULT_COMM_MODE'
,'MILLISECOND_LENGTH'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,MSG_START));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,MSG_END));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,BUFFER_SIZE_LIMIT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,WAIT_STOP));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,cmUnknown));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,cmAsynchronous));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,cmSynchronous));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,cmSingleThread));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,srNone));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,srError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,srNoConnection));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,srSent));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,srOK));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,srTimeout));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,isStopped));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,isNotConnected));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,isConnecting));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,isWaitReconnect));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,isConnected));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,isUnusable));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,DEFAULT_ADDRESS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,DEFAULT_PORT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,DEFAULT_TIMEOUT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,DEFAULT_RECEIVE_TIMEOUT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,NULL_IP));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,DEFAULT_CONN_LIMIT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,DEFAULT_RECONNECT_DELAY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[27] ,DEFAULT_COMM_MODE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[28] ,MILLISECOND_LENGTH));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..3] of TClass = (
EHL7CommunicationError,
TIdHL7,
TIdHL7ClientThread,
TIdHL7PeerThread
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
RegisterProc(EHL7CommunicationError,'Create',mtConstructor,TypeInfo(_T0),[
TypeInfo(String),
TypeInfo(String)],Addr(EHL7CommunicationError.Create),cRegister);

RegRegisterMethod(TIdHL7,'EnforceWaitReplyTimeout',TypeInfo(_T1),NoParams,Addr(TIdHL7.EnforceWaitReplyTimeout));

RegRegisterMethod(TIdHL7,'Going',TypeInfo(_T2),[TypeInfo(Boolean)],Addr(TIdHL7.Going));

RegRegisterMethod(TIdHL7,'Connected',TypeInfo(_T3),[TypeInfo(Boolean)],Addr(TIdHL7.Connected));

RegRegisterMethod(TIdHL7,'Start',TypeInfo(_T4),NoParams,Addr(TIdHL7.Start));

RegRegisterMethod(TIdHL7,'PreStop',TypeInfo(_T5),NoParams,Addr(TIdHL7.PreStop));

RegRegisterMethod(TIdHL7,'Stop',TypeInfo(_T6),NoParams,Addr(TIdHL7.Stop));

RegRegisterMethod(TIdHL7,'WaitForConnection',TypeInfo(_T7),[
TypeInfo(Integer)],Addr(TIdHL7.WaitForConnection));

RegRegisterMethod(TIdHL7,'AsynchronousSend',TypeInfo(_T8),[
TypeInfo(String),TypeInfo(TSendResponse)],Addr(TIdHL7.AsynchronousSend));

RegRegisterMethod(TIdHL7,'SynchronousSend',TypeInfo(_T9),[
TypeInfo(String),
TypeInfo(String),TypeInfo(TSendResponse)],Addr(TIdHL7.SynchronousSend));

RegRegisterMethod(TIdHL7,'CheckSynchronousSendResult',TypeInfo(_T10),[
TypeInfo(TSendResponse),
TypeInfo(String)],Addr(TIdHL7.CheckSynchronousSendResult));

RegRegisterMethod(TIdHL7,'SendMessage',TypeInfo(_T11),[
TypeInfo(String)],Addr(TIdHL7.SendMessage));

RegRegisterMethod(TIdHL7,'GetReply',TypeInfo(_T12),[
TypeInfo(String),TypeInfo(TSendResponse)],Addr(TIdHL7.GetReply));

RegRegisterMethod(TIdHL7,'GetMessage',TypeInfo(_T13),[
TypeInfo(String),TypeInfoPointer],Addr(TIdHL7.GetMessage));

RegRegisterMethod(TIdHL7,'SendReply',TypeInfo(_T14),[
TypeInfoPointer,
TypeInfo(String)],Addr(TIdHL7.SendReply));

RegisterProc(TIdHL7ClientThread,'Create',mtConstructor,TypeInfo(_T15),[
TypeInfo(TIdHL7)],Addr(TIdHL7ClientThread.Create),cRegister);

end;
initialization
_mreg_0;
RegisterEvent(TypeInfo(TIdHL7ConnCountEvent),[
TypeInfo(TIdHL7),
TypeInfo(Integer)]);

RegisterEvent(TypeInfo(TMessageArriveEvent),[
TypeInfo(TObject),
TypeInfo(TIdTCPConnection),
TypeInfo(String)]);

RegisterEvent(TypeInfo(TMessageReceiveEvent),[
TypeInfo(TObject),
TypeInfo(TIdTCPConnection),
TypeInfo(String),
TypeInfo(Boolean),
TypeInfo(String)]);

RegisterEvent(TypeInfo(TReceiveErrorEvent),[
TypeInfo(TObject),
TypeInfo(TIdTCPConnection),
TypeInfo(String),
TypeInfo(Exception),
TypeInfo(String),
TypeInfo(Boolean)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.