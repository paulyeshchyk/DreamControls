{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit SVRHTTPINDY_D2006;
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
  Windows,
  Registry,
  SysUtils,
  Classes,
  SyncObjs,
  WebBroker,
  HTTPApp,
  SvrLog,
  IdHTTPServer,
  IdCustomHTTPServer,
  IdTCPServer,
  IdIntercept,
  IdSocketHandle,
  IniFiles,
  SockAppNotify,
  IdStackConsts,
  IdGlobal,
  SvrHTTPIndy;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (const p0 : string;
p1 : TWebServerRequest) of object;

_T1 = procedure (p0 : TCustomWebServer) of object;

_T2 = procedure (p0 : Integer;
p1 : string;
p2 : string;
p3 : TIdHTTPRequestInfo;
p4 : TIdHTTPResponseInfo;
p5 : TThread) of object;

_T3 = procedure (p0 : TWebServerRequest;
p1 : TIdHTTPResponseInfo;
p2 : TServerLog) of object;

function __DC__GetEWebServerException__Request(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(EWebServerException(Instance).Request);
end;

function __DC__GetTCustomWebServer__TranslatedDefaultURL(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCustomWebServer(Instance).TranslatedDefaultURL;
end;

function __DC__GetTCustomWebServer__Active(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCustomWebServer(Instance).Active;
end;

procedure __DC__SetTCustomWebServer__Active(Instance : TObject; Params : PVariantArgList);
begin
TCustomWebServer(Instance).Active:=OleVariant(Params^[0]);
end;

function __DC__GetTCustomWebServer__SearchPath(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCustomWebServer(Instance).SearchPath;
end;

procedure __DC__SetTCustomWebServer__SearchPath(Instance : TObject; Params : PVariantArgList);
begin
TCustomWebServer(Instance).SearchPath:=OleVariant(Params^[0]);
end;

function __DC__GetTCustomWebServer__DefaultURL(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCustomWebServer(Instance).DefaultURL;
end;

procedure __DC__SetTCustomWebServer__DefaultURL(Instance : TObject; Params : PVariantArgList);
begin
TCustomWebServer(Instance).DefaultURL:=OleVariant(Params^[0]);
end;

function __DC__GetTCustomWebServer__Port(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCustomWebServer(Instance).Port;
end;

procedure __DC__SetTCustomWebServer__Port(Instance : TObject; Params : PVariantArgList);
begin
TCustomWebServer(Instance).Port:=OleVariant(Params^[0]);
end;

function __DC__GetTCustomWebServer__RunningWebAppListener(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TCustomWebServer(Instance).RunningWebAppListener);
end;

function __DC__GetTWebServerRequest__RequestInfo(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TWebServerRequest(Instance).RequestInfo);
end;

function __DC__GetTWebServerRequest__Thread(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TWebServerRequest(Instance).Thread);
end;

function __DC__GetTWebServerResponse__Request(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TWebServerResponse(Instance).Request);
end;

procedure __RegisterProps;
begin
RegisterProperty(EWebServerException,'Request',__DC__GetEWebServerException__Request,nil);
RegisterProperty(TCustomWebServer,'TranslatedDefaultURL',__DC__GetTCustomWebServer__TranslatedDefaultURL,nil);
RegisterProperty(TCustomWebServer,'Active',__DC__GetTCustomWebServer__Active,__DC__SetTCustomWebServer__Active);
RegisterProperty(TCustomWebServer,'SearchPath',__DC__GetTCustomWebServer__SearchPath,__DC__SetTCustomWebServer__SearchPath);
RegisterProperty(TCustomWebServer,'DefaultURL',__DC__GetTCustomWebServer__DefaultURL,__DC__SetTCustomWebServer__DefaultURL);
RegisterProperty(TCustomWebServer,'Port',__DC__GetTCustomWebServer__Port,__DC__SetTCustomWebServer__Port);
RegisterProperty(TCustomWebServer,'RunningWebAppListener',__DC__GetTCustomWebServer__RunningWebAppListener,nil);
RegisterProperty(TWebServerRequest,'RequestInfo',__DC__GetTWebServerRequest__RequestInfo,nil);
RegisterProperty(TWebServerRequest,'Thread',__DC__GetTWebServerRequest__Thread,nil);
RegisterProperty(TWebServerResponse,'Request',__DC__GetTWebServerResponse__Request,nil);
end;

const __ConstNames0 : array[0..3] of string = (
'ecTimeout'
,'ecExecFail'
,'ecTokenMismatch'
,'ecOK'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,ecTimeout));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,ecExecFail));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,ecTokenMismatch));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,ecOK));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..8] of TClass = (
EFailedToRetreiveTimeZoneInfo,
EWebServerException,
TConnectionIntercept,
TCustomWebServer,
TRequestLogBuffer,
TServerIntercept,
TServerLog,
TWebServerRequest,
TWebServerResponse
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
RegisterProc(EWebServerException,'Create',mtConstructor,TypeInfo(_T0),[
TypeInfo(string),
TypeInfo(TWebServerRequest)],Addr(EWebServerException.Create),cRegister);

RegisterProc(TServerLog,'Create',mtConstructor,TypeInfo(_T1),[
TypeInfo(TCustomWebServer)],Addr(TServerLog.Create),cRegister);

RegisterProc(TWebServerRequest,'Create',mtConstructor,TypeInfo(_T2),[
TypeInfo(Integer),
TypeInfo(string),
TypeInfo(string),
TypeInfo(TIdHTTPRequestInfo),
TypeInfo(TIdHTTPResponseInfo),
TypeInfo(TThread)],Addr(TWebServerRequest.Create),cRegister);

RegisterProc(TWebServerResponse,'Create',mtConstructor,TypeInfo(_T3),[
TypeInfo(TWebServerRequest),
TypeInfo(TIdHTTPResponseInfo),
TypeInfo(TServerLog)],Addr(TWebServerResponse.Create),cRegister);

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
