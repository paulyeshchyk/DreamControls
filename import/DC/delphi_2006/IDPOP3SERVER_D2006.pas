{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDPOP3SERVER_D2006;
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
  IdGlobal,
  IdTCPServer,
  IdMailBox,
  IdPOP3Server;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
function __DC__GetTIdPOP3ServerThread__Username(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdPOP3ServerThread(Instance).Username;
end;

procedure __DC__SetTIdPOP3ServerThread__Username(Instance : TObject; Params : PVariantArgList);
begin
TIdPOP3ServerThread(Instance).Username:=OleVariant(Params^[0]);
end;

function __DC__GetTIdPOP3ServerThread__Password(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdPOP3ServerThread(Instance).Password;
end;

procedure __DC__SetTIdPOP3ServerThread__Password(Instance : TObject; Params : PVariantArgList);
begin
TIdPOP3ServerThread(Instance).Password:=OleVariant(Params^[0]);
end;

function __DC__GetTIdPOP3ServerThread__State(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdPOP3ServerThread(Instance).State;
end;

procedure __DC__SetTIdPOP3ServerThread__State(Instance : TObject; Params : PVariantArgList);
begin
TIdPOP3ServerThread(Instance).State:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdPOP3ServerThread,'Username',__DC__GetTIdPOP3ServerThread__Username,__DC__SetTIdPOP3ServerThread__Username);
RegisterProperty(TIdPOP3ServerThread,'Password',__DC__GetTIdPOP3ServerThread__Password,__DC__SetTIdPOP3ServerThread__Password);
RegisterProperty(TIdPOP3ServerThread,'State',__DC__GetTIdPOP3ServerThread__State,__DC__SetTIdPOP3ServerThread__State);
end;

const __ConstNames0 : array[0..2] of string = (
'Auth'
,'Trans'
,'Update'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,Auth));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,Trans));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,Update));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..1] of TClass = (
TIdPOP3Server,
TIdPOP3ServerThread
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

procedure _mreg_0;
begin
end;
initialization
_mreg_0;
RegisterEvent(TypeInfo(TIdPOP3ServerAPOPCommandEvent),[
TypeInfo(TIdCommand),
TypeInfo(String),
TypeInfo(String)]);

RegisterEvent(TypeInfo(TIdPOP3ServerLogin),[
TypeInfo(TIdPeerThread),
TypeInfo(TIdPOP3ServerThread)]);

RegisterEvent(TypeInfo(TIdPOP3ServerMessageNumberEvent),[
TypeInfo(TIdCommand),
TypeInfo(Integer)]);

RegisterEvent(TypeInfo(TIdPOP3ServerNoParamEvent),[
TypeInfo(TIdCommand)]);

RegisterEvent(TypeInfo(TIdPOP3ServerTOPCommandEvent),[
TypeInfo(TIdCommand),
TypeInfo(Integer),
TypeInfo(Integer)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.