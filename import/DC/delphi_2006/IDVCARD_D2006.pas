{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDVCARD_D2006;
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
  IdGlobal,
  IdVCard;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : TStrings) of object;

_T1 = procedure (p0 : TPersistent) of object;

_T2 = function : TIdCardAddressItem of object;

_T3 = procedure  of object;

_T4 = _T1;

_T5 = function : TIdVCardEMailItem of object;

_T6 = _T3;

_T7 = _T1;

_T8 = function : TIdVCardMailingLabelItem of object;

_T9 = _T3;

_T10 = _T1;

_T11 = function : TIdCardPhoneNumber of object;

function __DC__GetTIdVCard__RawForm(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdVCard(Instance).RawForm);
end;

function __DC__GetTIdVCardAddresses__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdVCardAddresses(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTIdVCardAddresses__Items(Instance : TObject; Params : PVariantArgList);
begin
TIdVCardAddresses(Instance).Items[OleVariant(Params^[1])]:=TIdCardAddressItem(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdVCardEMailAddresses__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdVCardEMailAddresses(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTIdVCardEMailAddresses__Items(Instance : TObject; Params : PVariantArgList);
begin
TIdVCardEMailAddresses(Instance).Items[OleVariant(Params^[1])]:=TIdVCardEMailItem(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdVCardMailingLabels__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdVCardMailingLabels(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTIdVCardMailingLabels__Items(Instance : TObject; Params : PVariantArgList);
begin
TIdVCardMailingLabels(Instance).Items[OleVariant(Params^[1])]:=TIdVCardMailingLabelItem(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdVCardTelephones__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdVCardTelephones(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTIdVCardTelephones__Items(Instance : TObject; Params : PVariantArgList);
begin
TIdVCardTelephones(Instance).Items[OleVariant(Params^[1])]:=TIdCardPhoneNumber(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdVCard,'RawForm',__DC__GetTIdVCard__RawForm,nil);
RegisterIndexedProperty(TIdVCardAddresses,'Items',1,True,__DC__GetTIdVCardAddresses__Items,__DC__SetTIdVCardAddresses__Items);
RegisterIndexedProperty(TIdVCardEMailAddresses,'Items',1,True,__DC__GetTIdVCardEMailAddresses__Items,__DC__SetTIdVCardEMailAddresses__Items);
RegisterIndexedProperty(TIdVCardMailingLabels,'Items',1,True,__DC__GetTIdVCardMailingLabels__Items,__DC__SetTIdVCardMailingLabels__Items);
RegisterIndexedProperty(TIdVCardTelephones,'Items',1,True,__DC__GetTIdVCardTelephones__Items,__DC__SetTIdVCardTelephones__Items);
end;

const __ConstNames0 : array[0..32] of string = (
'tpaHome'
,'tpaVoiceMessaging'
,'tpaWork'
,'tpaPreferred'
,'tpaVoice'
,'tpaFax'
,'tpaCellular'
,'tpaVideo'
,'tpaBBS'
,'tpaModem'
,'tpaCar'
,'tpaISDN'
,'tpaPCS'
,'tpaPager'
,'tatHome'
,'tatDomestic'
,'tatInternational'
,'tatPostal'
,'tatParcel'
,'tatWork'
,'tatPreferred'
,'ematAOL'
,'ematAppleLink'
,'ematATT'
,'ematCIS'
,'emateWorld'
,'ematInternet'
,'ematIBMMail'
,'ematMCIMail'
,'ematPowerShare'
,'ematProdigy'
,'ematTelex'
,'ematX400'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,tpaHome));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,tpaVoiceMessaging));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,tpaWork));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,tpaPreferred));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,tpaVoice));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,tpaFax));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,tpaCellular));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,tpaVideo));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,tpaBBS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,tpaModem));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,tpaCar));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,tpaISDN));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,tpaPCS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,tpaPager));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,tatHome));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,tatDomestic));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,tatInternational));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,tatPostal));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,tatParcel));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,tatWork));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,tatPreferred));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,ematAOL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,ematAppleLink));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,ematATT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,ematCIS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,emateWorld));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,ematInternet));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[27] ,ematIBMMail));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[28] ,ematMCIMail));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[29] ,ematPowerShare));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[30] ,ematProdigy));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[31] ,ematTelex));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[32] ,ematX400));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..12] of TClass = (
TIdCardAddressItem,
TIdCardPhoneNumber,
TIdVCard,
TIdVCardAddresses,
TIdVCardBusinessInfo,
TIdVCardEMailAddresses,
TIdVCardEMailItem,
TIdVCardEmbeddedObject,
TIdVCardGeog,
TIdVCardMailingLabelItem,
TIdVCardMailingLabels,
TIdVCardName,
TIdVCardTelephones
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
RegRegisterMethod(TIdVCard,'ReadFromTStrings',TypeInfo(_T0),[
TypeInfo(TStrings)],Addr(TIdVCard.ReadFromTStrings));

RegisterProc(TIdVCardAddresses,'Create',mtConstructor,TypeInfo(_T1),[
TypeInfo(TPersistent)],Addr(TIdVCardAddresses.Create),cRegister);

RegRegisterMethod(TIdVCardAddresses,'Add',TypeInfo(_T2),[TypeInfo(TIdCardAddressItem)],Addr(TIdVCardAddresses.Add));

RegisterProc(TIdVCardBusinessInfo,'Create',mtConstructor,TypeInfo(_T3),NoParams,Addr(TIdVCardBusinessInfo.Create),cRegister);

RegisterProc(TIdVCardEMailAddresses,'Create',mtConstructor,TypeInfo(_T4),[
TypeInfo(TPersistent)],Addr(TIdVCardEMailAddresses.Create),cRegister);

RegRegisterMethod(TIdVCardEMailAddresses,'Add',TypeInfo(_T5),[TypeInfo(TIdVCardEMailItem)],Addr(TIdVCardEMailAddresses.Add));

RegisterProc(TIdVCardEmbeddedObject,'Create',mtConstructor,TypeInfo(_T6),NoParams,Addr(TIdVCardEmbeddedObject.Create),cRegister);

RegisterProc(TIdVCardMailingLabels,'Create',mtConstructor,TypeInfo(_T7),[
TypeInfo(TPersistent)],Addr(TIdVCardMailingLabels.Create),cRegister);

RegRegisterMethod(TIdVCardMailingLabels,'Add',TypeInfo(_T8),[TypeInfo(TIdVCardMailingLabelItem)],Addr(TIdVCardMailingLabels.Add));

RegisterProc(TIdVCardName,'Create',mtConstructor,TypeInfo(_T9),NoParams,Addr(TIdVCardName.Create),cRegister);

RegisterProc(TIdVCardTelephones,'Create',mtConstructor,TypeInfo(_T10),[
TypeInfo(TPersistent)],Addr(TIdVCardTelephones.Create),cRegister);

RegRegisterMethod(TIdVCardTelephones,'Add',TypeInfo(_T11),[TypeInfo(TIdCardPhoneNumber)],Addr(TIdVCardTelephones.Add));

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
