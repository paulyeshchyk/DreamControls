{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDUSERACCOUNTS_D2006;
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
  IdException,
  IdGlobal,
  IdBaseComponent,
  IdComponent,
  IdStrings,
  SysUtils,
  IdUserAccounts;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (const p0 : String): Boolean of object;

_T1 = function : TIdUserAccount of object;

_T2 = procedure (p0 : TIdUserManager) of object;

_T3 = function (const p0 : String;
const p1 : String): Boolean of object;

function __DC__GetTIdUserAccount__Data(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdUserAccount(Instance).Data);
end;

procedure __DC__SetTIdUserAccount__Data(Instance : TObject; Params : PVariantArgList);
begin
TIdUserAccount(Instance).Data:=TObject(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdUserAccounts__CaseSensitiveUsernames(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdUserAccounts(Instance).CaseSensitiveUsernames;
end;

procedure __DC__SetTIdUserAccounts__CaseSensitiveUsernames(Instance : TObject; Params : PVariantArgList);
begin
TIdUserAccounts(Instance).CaseSensitiveUsernames:=OleVariant(Params^[0]);
end;

function __DC__GetTIdUserAccounts__CaseSensitivePasswords(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdUserAccounts(Instance).CaseSensitivePasswords;
end;

procedure __DC__SetTIdUserAccounts__CaseSensitivePasswords(Instance : TObject; Params : PVariantArgList);
begin
TIdUserAccounts(Instance).CaseSensitivePasswords:=OleVariant(Params^[0]);
end;

function __DC__GetTIdUserAccounts__UserNames(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdUserAccounts(Instance).UserNames[OleVariant(Params^[0])]);
end;

function __DC__GetTIdUserAccounts__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdUserAccounts(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTIdUserAccounts__Items(Instance : TObject; Params : PVariantArgList);
begin
TIdUserAccounts(Instance).Items[OleVariant(Params^[1])]:=TIdUserAccount(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdUserAccount,'Data',__DC__GetTIdUserAccount__Data,__DC__SetTIdUserAccount__Data);
RegisterProperty(TIdUserAccounts,'CaseSensitiveUsernames',__DC__GetTIdUserAccounts__CaseSensitiveUsernames,__DC__SetTIdUserAccounts__CaseSensitiveUsernames);
RegisterProperty(TIdUserAccounts,'CaseSensitivePasswords',__DC__GetTIdUserAccounts__CaseSensitivePasswords,__DC__SetTIdUserAccounts__CaseSensitivePasswords);
RegisterIndexedProperty(TIdUserAccounts,'UserNames',1,True,__DC__GetTIdUserAccounts__UserNames,nil);
RegisterIndexedProperty(TIdUserAccounts,'Items',1,False,__DC__GetTIdUserAccounts__Items,__DC__SetTIdUserAccounts__Items);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..2] of TClass = (
TIdUserAccount,
TIdUserAccounts,
TIdUserManager
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
RegRegisterMethod(TIdUserAccount,'CheckPassword',TypeInfo(_T0),[
TypeInfo(String),TypeInfo(Boolean)],Addr(TIdUserAccount.CheckPassword));

RegRegisterMethod(TIdUserAccounts,'Add',TypeInfo(_T1),[TypeInfo(TIdUserAccount)],Addr(TIdUserAccounts.Add));

RegisterProc(TIdUserAccounts,'Create',mtConstructor,TypeInfo(_T2),[
TypeInfo(TIdUserManager)],Addr(TIdUserAccounts.Create),cRegister);

RegRegisterMethod(TIdUserManager,'AuthenticateUser',TypeInfo(_T3),[
TypeInfo(String),
TypeInfo(String),TypeInfo(Boolean)],Addr(TIdUserManager.AuthenticateUser));

end;
initialization
_mreg_0;
RegisterEvent(TypeInfo(TOnAfterAuthentication),[
TypeInfo(String),
TypeInfo(String),
TypeInfo(Boolean)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.