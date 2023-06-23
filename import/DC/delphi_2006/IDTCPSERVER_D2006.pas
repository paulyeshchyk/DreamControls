{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDTCPSERVER_D2006;
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
  Classes,
  SysUtils,
  IdComponent,
  IdException,
  IdSocketHandle,
  IdTCPConnection,
  IdThread,
  IdThreadMgr,
  IdIOHandlerSocket,
  IdIOHandler,
  IdThreadMgrDefault,
  IdIntercept,
  IdStackConsts,
  IdGlobal,
  IdRFCReply,
  IdServerIOHandler,
  IdServerIOHandlerSocket,
  IdTCPServer;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure  of object;

_T1 = _T0;

_T2 = _T0;

_T3 = procedure (p0 : TStrings) of object;

_T4 = function (const p0 : string;
p1 : TIdPeerThread): Boolean of object;

_T5 = function (p0 : string): Boolean of object;

_T6 = function : TIdCommandHandler of object;

_T7 = procedure (p0 : TIdTCPServer) of object;

_T8 = procedure (p0 : TIdTCPServer;
p1 : TIdSocketHandle) of object;

_T9 = procedure (p0 : TIdPeerThread) of object;

_T10 = _T9;

_T11 = function (p0 : TIdPeerThread): Boolean of object;

_T12 = _T0;

_T13 = procedure (p0 : Boolean) of object;

_T14 = procedure (const p0 : TIdSocketHandles) of object;

_T15 = procedure (const p0 : Integer) of object;

_T16 = procedure (const p0 : TIdServerIntercept) of object;

_T17 = procedure (const p0 : TIdServerIOHandler) of object;

_T18 = procedure (const p0 : TIdThreadMgr) of object;

_T19 = _T7;

function __DC__GetTIdCommand__CommandHandler(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdCommand(Instance).CommandHandler);
end;

function __DC__GetTIdCommand__PerformReply(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdCommand(Instance).PerformReply;
end;

procedure __DC__SetTIdCommand__PerformReply(Instance : TObject; Params : PVariantArgList);
begin
TIdCommand(Instance).PerformReply:=OleVariant(Params^[0]);
end;

function __DC__GetTIdCommand__Params(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdCommand(Instance).Params);
end;

function __DC__GetTIdCommand__RawLine(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdCommand(Instance).RawLine;
end;

function __DC__GetTIdCommand__Reply(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdCommand(Instance).Reply);
end;

procedure __DC__SetTIdCommand__Reply(Instance : TObject; Params : PVariantArgList);
begin
TIdCommand(Instance).Reply:=TIdRFCReply(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdCommand__Response(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdCommand(Instance).Response);
end;

procedure __DC__SetTIdCommand__Response(Instance : TObject; Params : PVariantArgList);
begin
TIdCommand(Instance).Response:=TStrings(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdCommand__Thread(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdCommand(Instance).Thread);
end;

function __DC__GetTIdCommand__UnparsedParams(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdCommand(Instance).UnparsedParams;
end;

function __DC__GetTIdCommandHandler__Data(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdCommandHandler(Instance).Data);
end;

procedure __DC__SetTIdCommandHandler__Data(Instance : TObject; Params : PVariantArgList);
begin
TIdCommandHandler(Instance).Data:=TObject(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdCommandHandlers__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdCommandHandlers(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTIdCommandHandlers__Items(Instance : TObject; Params : PVariantArgList);
begin
TIdCommandHandlers(Instance).Items[OleVariant(Params^[1])]:=TIdCommandHandler(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdCommandHandlers__OwnedBy(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdCommandHandlers(Instance).OwnedBy);
end;

function __DC__GetTIdCommandHandlers__Server(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdCommandHandlers(Instance).Server);
end;

function __DC__GetTIdListenerThread__Binding(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdListenerThread(Instance).Binding);
end;

procedure __DC__SetTIdListenerThread__Binding(Instance : TObject; Params : PVariantArgList);
begin
TIdListenerThread(Instance).Binding:=TIdSocketHandle(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdListenerThread__Server(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdListenerThread(Instance).Server);
end;

function __DC__GetTIdPeerThread__Connection(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdPeerThread(Instance).Connection);
end;

function __DC__GetTIdTCPServer__ImplicitIOHandler(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdTCPServer(Instance).ImplicitIOHandler;
end;

function __DC__GetTIdTCPServer__ImplicitThreadMgr(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdTCPServer(Instance).ImplicitThreadMgr;
end;

function __DC__GetTIdTCPServer__Threads(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdTCPServer(Instance).Threads);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdCommand,'CommandHandler',__DC__GetTIdCommand__CommandHandler,nil);
RegisterProperty(TIdCommand,'PerformReply',__DC__GetTIdCommand__PerformReply,__DC__SetTIdCommand__PerformReply);
RegisterProperty(TIdCommand,'Params',__DC__GetTIdCommand__Params,nil);
RegisterProperty(TIdCommand,'RawLine',__DC__GetTIdCommand__RawLine,nil);
RegisterProperty(TIdCommand,'Reply',__DC__GetTIdCommand__Reply,__DC__SetTIdCommand__Reply);
RegisterProperty(TIdCommand,'Response',__DC__GetTIdCommand__Response,__DC__SetTIdCommand__Response);
RegisterProperty(TIdCommand,'Thread',__DC__GetTIdCommand__Thread,nil);
RegisterProperty(TIdCommand,'UnparsedParams',__DC__GetTIdCommand__UnparsedParams,nil);
RegisterProperty(TIdCommandHandler,'Data',__DC__GetTIdCommandHandler__Data,__DC__SetTIdCommandHandler__Data);
RegisterIndexedProperty(TIdCommandHandlers,'Items',1,False,__DC__GetTIdCommandHandlers__Items,__DC__SetTIdCommandHandlers__Items);
RegisterProperty(TIdCommandHandlers,'OwnedBy',__DC__GetTIdCommandHandlers__OwnedBy,nil);
RegisterProperty(TIdCommandHandlers,'Server',__DC__GetTIdCommandHandlers__Server,nil);
RegisterProperty(TIdListenerThread,'Binding',__DC__GetTIdListenerThread__Binding,__DC__SetTIdListenerThread__Binding);
RegisterProperty(TIdListenerThread,'Server',__DC__GetTIdListenerThread__Server,nil);
RegisterProperty(TIdPeerThread,'Connection',__DC__GetTIdPeerThread__Connection,nil);
RegisterProperty(TIdTCPServer,'ImplicitIOHandler',__DC__GetTIdTCPServer__ImplicitIOHandler,nil);
RegisterProperty(TIdTCPServer,'ImplicitThreadMgr',__DC__GetTIdTCPServer__ImplicitThreadMgr,nil);
RegisterProperty(TIdTCPServer,'Threads',__DC__GetTIdTCPServer__Threads,nil);
end;

const __ConstNames0 : array[0..0] of string = (
'IdListenQueueDefault'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,IdListenQueueDefault));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..9] of TClass = (
EIdNoExecuteSpecified,
EIdTCPServerError,
EIdTerminateThreadTimeout,
TIdCommand,
TIdCommandHandler,
TIdCommandHandlers,
TIdListenerThread,
TIdPeerThread,
TIdTCPServer,
TIdTCPServerConnection
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
//RegRegisterMethod(TIdCommand,'DoCommand',TypeInfo(_T0),NoParams, pointer(0));
RegRegisterMethod(TIdCommand,'DoCommand',TypeInfo(_T0),NoParams,  getVMTProcAddr('TIdCommand','DoCommand',0));


RegisterProc(TIdCommand,'Create',mtConstructor,TypeInfo(_T1),NoParams, pointer(4),cRegister);

RegRegisterMethod(TIdCommand,'SendReply',TypeInfo(_T2),NoParams,Addr(TIdCommand.SendReply));

RegRegisterMethod(TIdCommand,'SetResponse',TypeInfo(_T3),[
TypeInfo(TStrings)],Addr(TIdCommand.SetResponse));

//RegRegisterMethod(TIdCommandHandler,'Check',TypeInfo(_T4),[TypeInfo(string),TypeInfo(TIdPeerThread),TypeInfo(Boolean)], pointer(32));
RegRegisterMethod(TIdCommandHandler,'Check',TypeInfo(_T4),[TypeInfo(string),TypeInfo(TIdPeerThread),TypeInfo(Boolean)],  getVMTProcAddr('TIdCommandHandler','Check',32));


RegRegisterMethod(TIdCommandHandler,'NameIs',TypeInfo(_T5),[
TypeInfo(string),TypeInfo(Boolean)],Addr(TIdCommandHandler.NameIs));

RegRegisterMethod(TIdCommandHandlers,'Add',TypeInfo(_T6),[TypeInfo(TIdCommandHandler)],Addr(TIdCommandHandlers.Add));

RegisterProc(TIdCommandHandlers,'Create',mtConstructor,TypeInfo(_T7),[
TypeInfo(TIdTCPServer)],Addr(TIdCommandHandlers.Create),cRegister);

RegisterProc(TIdListenerThread,'Create',mtConstructor,TypeInfo(_T8),[
TypeInfo(TIdTCPServer),
TypeInfo(TIdSocketHandle)],Addr(TIdListenerThread.Create),cRegister);

//RegRegisterMethod(TIdTCPServer,'DoConnect',TypeInfo(_T9),[TypeInfo(TIdPeerThread)], pointer(60));
RegRegisterMethod(TIdTCPServer,'DoConnect',TypeInfo(_T9),[TypeInfo(TIdPeerThread)],  getVMTProcAddr('TIdTCPServer','DoConnect',60));


//RegRegisterMethod(TIdTCPServer,'DoDisconnect',TypeInfo(_T10),[TypeInfo(TIdPeerThread)], pointer(64));
RegRegisterMethod(TIdTCPServer,'DoDisconnect',TypeInfo(_T10),[TypeInfo(TIdPeerThread)],  getVMTProcAddr('TIdTCPServer','DoDisconnect',64));


//RegRegisterMethod(TIdTCPServer,'DoExecute',TypeInfo(_T11),[TypeInfo(TIdPeerThread),TypeInfo(Boolean)], pointer(68));
RegRegisterMethod(TIdTCPServer,'DoExecute',TypeInfo(_T11),[TypeInfo(TIdPeerThread),TypeInfo(Boolean)],  getVMTProcAddr('TIdTCPServer','DoExecute',68));


//RegRegisterMethod(TIdTCPServer,'InitializeCommandHandlers',TypeInfo(_T12),NoParams, pointer(72));
RegRegisterMethod(TIdTCPServer,'InitializeCommandHandlers',TypeInfo(_T12),NoParams,  getVMTProcAddr('TIdTCPServer','InitializeCommandHandlers',72));


//RegRegisterMethod(TIdTCPServer,'SetActive',TypeInfo(_T13),[TypeInfo(Boolean)], pointer(76));
RegRegisterMethod(TIdTCPServer,'SetActive',TypeInfo(_T13),[TypeInfo(Boolean)],  getVMTProcAddr('TIdTCPServer','SetActive',76));


//RegRegisterMethod(TIdTCPServer,'SetBindings',TypeInfo(_T14),[TypeInfo(TIdSocketHandles)], pointer(80));
RegRegisterMethod(TIdTCPServer,'SetBindings',TypeInfo(_T14),[TypeInfo(TIdSocketHandles)],  getVMTProcAddr('TIdTCPServer','SetBindings',80));


//RegRegisterMethod(TIdTCPServer,'SetDefaultPort',TypeInfo(_T15),[TypeInfo(Integer)], pointer(84));
RegRegisterMethod(TIdTCPServer,'SetDefaultPort',TypeInfo(_T15),[TypeInfo(Integer)],  getVMTProcAddr('TIdTCPServer','SetDefaultPort',84));


//RegRegisterMethod(TIdTCPServer,'SetIntercept',TypeInfo(_T16),[TypeInfo(TIdServerIntercept)], pointer(88));
RegRegisterMethod(TIdTCPServer,'SetIntercept',TypeInfo(_T16),[TypeInfo(TIdServerIntercept)],  getVMTProcAddr('TIdTCPServer','SetIntercept',88));


//RegRegisterMethod(TIdTCPServer,'SetIOHandler',TypeInfo(_T17),[TypeInfo(TIdServerIOHandler)], pointer(92));
RegRegisterMethod(TIdTCPServer,'SetIOHandler',TypeInfo(_T17),[TypeInfo(TIdServerIOHandler)],  getVMTProcAddr('TIdTCPServer','SetIOHandler',92));


//RegRegisterMethod(TIdTCPServer,'SetThreadMgr',TypeInfo(_T18),[TypeInfo(TIdThreadMgr)], pointer(96));
RegRegisterMethod(TIdTCPServer,'SetThreadMgr',TypeInfo(_T18),[TypeInfo(TIdThreadMgr)],  getVMTProcAddr('TIdTCPServer','SetThreadMgr',96));


RegisterProc(TIdTCPServerConnection,'Create',mtConstructor,TypeInfo(_T19),[
TypeInfo(TIdTCPServer)],Addr(TIdTCPServerConnection.Create),cRegister);

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
RegisterEvent(TypeInfo(TIdAfterCommandHandlerEvent),[
TypeInfo(TIdTCPServer),
TypeInfo(TIdPeerThread)]);

RegisterEvent(TypeInfo(TIdBeforeCommandHandlerEvent),[
TypeInfo(TIdTCPServer),
TypeInfo(string),
TypeInfo(TIdPeerThread)]);

RegisterEvent(TypeInfo(TIdCommandEvent),[
TypeInfo(TIdCommand)]);

RegisterEvent(TypeInfo(TIdListenExceptionEvent),[
TypeInfo(TIdListenerThread),
TypeInfo(Exception)]);

RegisterEvent(TypeInfo(TIdNoCommandHandlerEvent),[
TypeInfo(TIdTCPServer),
TypeInfo(string),
TypeInfo(TIdPeerThread)]);

RegisterEvent(TypeInfo(TIdServerThreadEvent),[
TypeInfo(TIdPeerThread)]);

RegisterEvent(TypeInfo(TIdServerThreadExceptionEvent),[
TypeInfo(TIdPeerThread),
TypeInfo(Exception)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
