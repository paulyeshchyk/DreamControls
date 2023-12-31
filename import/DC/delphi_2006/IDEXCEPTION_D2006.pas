{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDEXCEPTION_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  activex,
  classes,
  dcscript,
  dcsystem,
  dcdreamlib,
  SysUtils,
  IdException;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (const p0 : Integer;
const p1 : string) of object;

_T1 = _T0;

function __DC__GetEIdProtocolReplyError__ReplyErrorCode(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := EIdProtocolReplyError(Instance).ReplyErrorCode;
end;

function __DC__GetEIdSocketError__LastError(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := EIdSocketError(Instance).LastError;
end;

procedure __RegisterProps;
begin
RegisterProperty(EIdProtocolReplyError,'ReplyErrorCode',__DC__GetEIdProtocolReplyError__ReplyErrorCode,nil);
RegisterProperty(EIdSocketError,'LastError',__DC__GetEIdSocketError__LastError,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..44] of TClass = (
EIdAlreadyConnected,
EIdClosedSocket,
EIdConnClosedGracefully,
EIdConnectException,
EIdConnectionStateError,
EIdConnectTimeout,
EIdDnsResolverError,
EIdException,
EIdIcmpException,
EIdInvalidServiceName,
EIdInvalidSocket,
EIdProtocolReplyError,
EIdReadLnMaxLineLengthExceeded,
EIdReadTimeout,
EIdResponseError,
EIdSetSizeExceeded,
EIdSilentException,
EIdSocketError,
EIdSocksAuthError,
EIdSocksAuthMethodError,
EIdSocksError,
EIdSocksRequestFailed,
EIdSocksRequestIdentFailed,
EIdSocksRequestServerFailed,
EIdSocksServerAddressError,
EIdSocksServerCommandError,
EIdSocksServerConnectionRefusedError,
EIdSocksServerGeneralError,
EIdSocksServerHostUnreachableError,
EIdSocksServerNetUnreachableError,
EIdSocksServerPermissionError,
EIdSocksServerRespondError,
EIdSocksServerTTLExpiredError,
EIdSocksUnknownError,
EIdSSLProtocolReplyError,
EIdTFTPAccessViolation,
EIdTFTPAllocationExceeded,
EIdTFTPException,
EIdTFTPFileAlreadyExists,
EIdTFTPFileNotFound,
EIdTFTPIllegalOperation,
EIdTFTPNoSuchUser,
EIdTFTPOptionNegotiationFailed,
EIdTFTPUnknownTransferID,
EInvalidSyslogMessage
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
//RegisterProc(EIdProtocolReplyError,'CreateError',mtConstructor,TypeInfo(_T0),[TypeInfo(Integer),TypeInfo(string)], pointer(0),cRegister);
RegisterProc(EIdProtocolReplyError,'CreateError',mtConstructor,TypeInfo(_T0),[TypeInfo(Integer),TypeInfo(string)],  getVMTProcAddr('EIdProtocolReplyError','CreateError',0),cRegister);


//RegisterProc(EIdSocketError,'CreateError',mtConstructor,TypeInfo(_T1),[TypeInfo(Integer),TypeInfo(string)], pointer(0),cRegister);
RegisterProc(EIdSocketError,'CreateError',mtConstructor,TypeInfo(_T1),[TypeInfo(Integer),TypeInfo(string)],  getVMTProcAddr('EIdSocketError','CreateError',0),cRegister);


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
