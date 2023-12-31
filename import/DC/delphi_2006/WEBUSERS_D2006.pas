{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit WEBUSERS_D2006;
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
  HTTPApp,
  WebComp,
  SiteComp,
  SysUtils,
  WebUsers;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : string) of object;

_T1 = _T0;

_T2 = function (const p0 : string): Boolean of object;

_T3 = function (p0 : string): TWebUserItem of object;

_T4 = function (p0 : Variant): TWebUserItem of object;

{_T5 = procedure (p0 : TComponent;
p1 : TCollectionItemClass) of object;}

function __DC__GetTCustomWebUserList__UserItems(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TCustomWebUserList(Instance).UserItems);
end;

procedure __DC__SetTCustomWebUserList__UserItems(Instance : TObject; Params : PVariantArgList);
begin
TCustomWebUserList(Instance).UserItems:=TWebUserItems(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTCustomWebUserList__Users(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TCustomWebUserList(Instance).Users[OleVariant(Params^[0])]);
end;

function __DC__GetTWebUserItem__UserID(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWebUserItem(Instance).UserID;
end;

function __DC__GetTWebUserItem__AccessRightsStrings(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TWebUserItem(Instance).AccessRightsStrings);
end;

function __DC__GetTWebUserItems__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TWebUserItems(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTWebUserItems__Items(Instance : TObject; Params : PVariantArgList);
begin
TWebUserItems(Instance).Items[OleVariant(Params^[1])]:=TWebUserItem(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TCustomWebUserList,'UserItems',__DC__GetTCustomWebUserList__UserItems,__DC__SetTCustomWebUserList__UserItems);
RegisterIndexedProperty(TCustomWebUserList,'Users',1,False,__DC__GetTCustomWebUserList__Users,nil);
RegisterProperty(TWebUserItem,'UserID',__DC__GetTWebUserItem__UserID,nil);
RegisterProperty(TWebUserItem,'AccessRightsStrings',__DC__GetTWebUserItem__AccessRightsStrings,nil);
RegisterIndexedProperty(TWebUserItems,'Items',1,True,__DC__GetTWebUserItems__Items,__DC__SetTWebUserItems__Items);
end;

const __ConstNames0 : array[0..3] of string = (
'vuBlankPassword'
,'vuBlankUserName'
,'vuUnknownUserName'
,'vuUnknownPassword'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,vuBlankPassword));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,vuBlankUserName));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,vuUnknownUserName));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,vuUnknownPassword));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..6] of TClass = (
EUserIDNotFoundException,
EValidateUserException,
EWebUsersListException,
TCustomWebUserList,
TWebUserItem,
TWebUserItems,
TWebUserList
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
RegRegisterMethod(TCustomWebUserList,'LoadFromFile',TypeInfo(_T0),[
TypeInfo(string)],Addr(TCustomWebUserList.LoadFromFile));

RegRegisterMethod(TCustomWebUserList,'SaveToFile',TypeInfo(_T1),[
TypeInfo(string)],Addr(TCustomWebUserList.SaveToFile));

RegRegisterMethod(TWebUserItem,'CheckRights',TypeInfo(_T2),[
TypeInfo(string),TypeInfo(Boolean)],Addr(TWebUserItem.CheckRights));

RegRegisterMethod(TWebUserItems,'FindUserName',TypeInfo(_T3),[
TypeInfo(string),TypeInfo(TWebUserItem)],Addr(TWebUserItems.FindUserName));

RegRegisterMethod(TWebUserItems,'FindUserID',TypeInfo(_T4),[
TypeInfo(Variant),TypeInfo(TWebUserItem)],Addr(TWebUserItems.FindUserID));

end;
initialization
_mreg_0;
{RegisterProc(TWebUserItems,'Create',mtConstructor,TypeInfo(_T5),[
TypeInfo(TComponent),
TypeInfo(TCollectionItemClass)],Addr(TWebUserItems.Create),cRegister)}

RegisterEvent(TypeInfo(TCheckAccessRightsEvent),[
TypeInfo(Variant),
TypeInfo(string),
TypeInfo(Boolean)]);

RegisterEvent(TypeInfo(TCheckAccessRightsHandledEvent),[
TypeInfo(Variant),
TypeInfo(string),
TypeInfo(Boolean),
TypeInfo(Boolean)]);

RegisterEvent(TypeInfo(TValidateUserErrorEvent),[
TypeInfo(TValidateUserError),
TypeInfo(TStrings),
TypeInfo(Variant),
TypeInfo(Boolean)]);

RegisterEvent(TypeInfo(TValidateUserEvent),[
TypeInfo(TStrings),
TypeInfo(Variant)]);

RegisterEvent(TypeInfo(TValidateUserHandledEvent),[
TypeInfo(TStrings),
TypeInfo(Variant),
TypeInfo(Boolean)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
