{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit INQUIRE_V1_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  classes,
  dcscript,
  dcsystem,
  dcdreamlib,
  InvokeRegistry,
  Types,
  XSBuiltIns,
  inquire_v1;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : Integer): WideString of object;

_T1 = function : Integer of object;

_T2 = function (p0 : Integer): BindingTemplate of object;

_T3 = _T1;

_T4 = _T2;

_T5 = _T1;

_T6 = function (p0 : Integer): BusinessEntity of object;

_T7 = _T1;

_T8 = function (p0 : Integer): BusinessEntityExt of object;

_T9 = _T1;

_T10 = function (p0 : Integer): BusinessInfo of object;

_T11 = _T1;

_T12 = function (p0 : Integer): BusinessService of object;

_T13 = _T1;

_T14 = function (p0 : Integer): KeyedReference of object;

_T15 = _T1;

_T16 = function (p0 : Integer): Contact of object;

_T17 = _T1;

_T18 = function (p0 : Integer): DiscoveryUrl of object;

_T19 = _T1;

_T20 = _T0;

_T21 = _T1;

_T22 = _T0;

_T23 = _T1;

_T24 = _T0;

_T25 = _T1;

_T26 = _T0;

_T27 = _T1;

_T28 = _T0;

_T29 = _T1;

_T30 = _T0;

_T31 = _T1;

_T32 = _T14;

_T33 = _T1;

_T34 = _T12;

_T35 = _T1;

_T36 = function (p0 : Integer): ServiceInfo of object;

_T37 = _T1;

_T38 = _T0;

_T39 = _T1;

_T40 = function (p0 : Integer): TModel of object;

_T41 = _T1;

_T42 = function (p0 : Integer): TModelInfo of object;

_T43 = _T1;

_T44 = function (p0 : Integer): TModelInstanceInfo of object;

_T45 = _T1;

function __DC__GetAddress__WideStringArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := Address(Instance).WideStringArray[OleVariant(Params^[0])];
end;

function __DC__GetAddress__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := Address(Instance).Len;
end;

function __DC__GetBindingDetail__BindingTemplateArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(BindingDetail(Instance).BindingTemplateArray[OleVariant(Params^[0])]);
end;

function __DC__GetBindingDetail__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := BindingDetail(Instance).Len;
end;

function __DC__GetBindingTemplates__BindingTemplateArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(BindingTemplates(Instance).BindingTemplateArray[OleVariant(Params^[0])]);
end;

function __DC__GetBindingTemplates__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := BindingTemplates(Instance).Len;
end;

function __DC__GetBusinessDetail__BusinessEntityArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(BusinessDetail(Instance).BusinessEntityArray[OleVariant(Params^[0])]);
end;

function __DC__GetBusinessDetail__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := BusinessDetail(Instance).Len;
end;

function __DC__GetBusinessDetailExt__BusinessEntityExtArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(BusinessDetailExt(Instance).BusinessEntityExtArray[OleVariant(Params^[0])]);
end;

function __DC__GetBusinessDetailExt__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := BusinessDetailExt(Instance).Len;
end;

function __DC__GetBusinessInfos__BusinessInfoArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(BusinessInfos(Instance).BusinessInfoArray[OleVariant(Params^[0])]);
end;

function __DC__GetBusinessInfos__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := BusinessInfos(Instance).Len;
end;

function __DC__GetBusinessServices__BusinessServiceArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(BusinessServices(Instance).BusinessServiceArray[OleVariant(Params^[0])]);
end;

function __DC__GetBusinessServices__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := BusinessServices(Instance).Len;
end;

function __DC__GetCategoryBag__KeyedReferenceArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(CategoryBag(Instance).KeyedReferenceArray[OleVariant(Params^[0])]);
end;

function __DC__GetCategoryBag__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := CategoryBag(Instance).Len;
end;

function __DC__GetContacts__ContactArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(Contacts(Instance).ContactArray[OleVariant(Params^[0])]);
end;

function __DC__GetContacts__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := Contacts(Instance).Len;
end;

function __DC__GetDiscoveryURLs__DiscoveryUrlArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(DiscoveryURLs(Instance).DiscoveryUrlArray[OleVariant(Params^[0])]);
end;

function __DC__GetDiscoveryURLs__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := DiscoveryURLs(Instance).Len;
end;

function __DC__GetFindQualifiers__WideStringArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := FindQualifiers(Instance).WideStringArray[OleVariant(Params^[0])];
end;

function __DC__GetFindQualifiers__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := FindQualifiers(Instance).Len;
end;

function __DC__GetGetBindingDetail__WideStringArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := GetBindingDetail(Instance).WideStringArray[OleVariant(Params^[0])];
end;

function __DC__GetGetBindingDetail__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := GetBindingDetail(Instance).Len;
end;

function __DC__GetGetBusinessDetail__WideStringArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := GetBusinessDetail(Instance).WideStringArray[OleVariant(Params^[0])];
end;

function __DC__GetGetBusinessDetail__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := GetBusinessDetail(Instance).Len;
end;

function __DC__GetGetBusinessDetailExt__WideStringArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := GetBusinessDetailExt(Instance).WideStringArray[OleVariant(Params^[0])];
end;

function __DC__GetGetBusinessDetailExt__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := GetBusinessDetailExt(Instance).Len;
end;

function __DC__GetGetServiceDetail__WideStringArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := GetServiceDetail(Instance).WideStringArray[OleVariant(Params^[0])];
end;

function __DC__GetGetServiceDetail__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := GetServiceDetail(Instance).Len;
end;

function __DC__GetGetTModelDetail__WideStringArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := GetTModelDetail(Instance).WideStringArray[OleVariant(Params^[0])];
end;

function __DC__GetGetTModelDetail__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := GetTModelDetail(Instance).Len;
end;

function __DC__GetIdentifierBag__KeyedReferenceArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(IdentifierBag(Instance).KeyedReferenceArray[OleVariant(Params^[0])]);
end;

function __DC__GetIdentifierBag__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := IdentifierBag(Instance).Len;
end;

function __DC__GetServiceDetail__BusinessServiceArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(ServiceDetail(Instance).BusinessServiceArray[OleVariant(Params^[0])]);
end;

function __DC__GetServiceDetail__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := ServiceDetail(Instance).Len;
end;

function __DC__GetServiceInfos__ServiceInfoArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(ServiceInfos(Instance).ServiceInfoArray[OleVariant(Params^[0])]);
end;

function __DC__GetServiceInfos__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := ServiceInfos(Instance).Len;
end;

function __DC__GetTModelBag__WideStringArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TModelBag(Instance).WideStringArray[OleVariant(Params^[0])];
end;

function __DC__GetTModelBag__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TModelBag(Instance).Len;
end;

function __DC__GetTModelDetail__TModelArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TModelDetail(Instance).TModelArray[OleVariant(Params^[0])]);
end;

function __DC__GetTModelDetail__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TModelDetail(Instance).Len;
end;

function __DC__GetTModelInfos__TModelInfoArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TModelInfos(Instance).TModelInfoArray[OleVariant(Params^[0])]);
end;

function __DC__GetTModelInfos__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TModelInfos(Instance).Len;
end;

function __DC__GetTModelInstanceDetails__TModelInstanceInfoArray(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TModelInstanceDetails(Instance).TModelInstanceInfoArray[OleVariant(Params^[0])]);
end;

function __DC__GetTModelInstanceDetails__Len(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TModelInstanceDetails(Instance).Len;
end;

procedure __RegisterProps;
begin
RegisterIndexedProperty(Address,'WideStringArray',1,True,__DC__GetAddress__WideStringArray,nil);
RegisterProperty(Address,'Len',__DC__GetAddress__Len,nil);
RegisterIndexedProperty(BindingDetail,'BindingTemplateArray',1,True,__DC__GetBindingDetail__BindingTemplateArray,nil);
RegisterProperty(BindingDetail,'Len',__DC__GetBindingDetail__Len,nil);
RegisterIndexedProperty(BindingTemplates,'BindingTemplateArray',1,True,__DC__GetBindingTemplates__BindingTemplateArray,nil);
RegisterProperty(BindingTemplates,'Len',__DC__GetBindingTemplates__Len,nil);
RegisterIndexedProperty(BusinessDetail,'BusinessEntityArray',1,True,__DC__GetBusinessDetail__BusinessEntityArray,nil);
RegisterProperty(BusinessDetail,'Len',__DC__GetBusinessDetail__Len,nil);
RegisterIndexedProperty(BusinessDetailExt,'BusinessEntityExtArray',1,True,__DC__GetBusinessDetailExt__BusinessEntityExtArray,nil);
RegisterProperty(BusinessDetailExt,'Len',__DC__GetBusinessDetailExt__Len,nil);
RegisterIndexedProperty(BusinessInfos,'BusinessInfoArray',1,True,__DC__GetBusinessInfos__BusinessInfoArray,nil);
RegisterProperty(BusinessInfos,'Len',__DC__GetBusinessInfos__Len,nil);
RegisterIndexedProperty(BusinessServices,'BusinessServiceArray',1,True,__DC__GetBusinessServices__BusinessServiceArray,nil);
RegisterProperty(BusinessServices,'Len',__DC__GetBusinessServices__Len,nil);
RegisterIndexedProperty(CategoryBag,'KeyedReferenceArray',1,True,__DC__GetCategoryBag__KeyedReferenceArray,nil);
RegisterProperty(CategoryBag,'Len',__DC__GetCategoryBag__Len,nil);
RegisterIndexedProperty(Contacts,'ContactArray',1,True,__DC__GetContacts__ContactArray,nil);
RegisterProperty(Contacts,'Len',__DC__GetContacts__Len,nil);
RegisterIndexedProperty(DiscoveryURLs,'DiscoveryUrlArray',1,True,__DC__GetDiscoveryURLs__DiscoveryUrlArray,nil);
RegisterProperty(DiscoveryURLs,'Len',__DC__GetDiscoveryURLs__Len,nil);
RegisterIndexedProperty(FindQualifiers,'WideStringArray',1,True,__DC__GetFindQualifiers__WideStringArray,nil);
RegisterProperty(FindQualifiers,'Len',__DC__GetFindQualifiers__Len,nil);
RegisterIndexedProperty(GetBindingDetail,'WideStringArray',1,True,__DC__GetGetBindingDetail__WideStringArray,nil);
RegisterProperty(GetBindingDetail,'Len',__DC__GetGetBindingDetail__Len,nil);
RegisterIndexedProperty(GetBusinessDetail,'WideStringArray',1,True,__DC__GetGetBusinessDetail__WideStringArray,nil);
RegisterProperty(GetBusinessDetail,'Len',__DC__GetGetBusinessDetail__Len,nil);
RegisterIndexedProperty(GetBusinessDetailExt,'WideStringArray',1,True,__DC__GetGetBusinessDetailExt__WideStringArray,nil);
RegisterProperty(GetBusinessDetailExt,'Len',__DC__GetGetBusinessDetailExt__Len,nil);
RegisterIndexedProperty(GetServiceDetail,'WideStringArray',1,True,__DC__GetGetServiceDetail__WideStringArray,nil);
RegisterProperty(GetServiceDetail,'Len',__DC__GetGetServiceDetail__Len,nil);
RegisterIndexedProperty(GetTModelDetail,'WideStringArray',1,True,__DC__GetGetTModelDetail__WideStringArray,nil);
RegisterProperty(GetTModelDetail,'Len',__DC__GetGetTModelDetail__Len,nil);
RegisterIndexedProperty(IdentifierBag,'KeyedReferenceArray',1,True,__DC__GetIdentifierBag__KeyedReferenceArray,nil);
RegisterProperty(IdentifierBag,'Len',__DC__GetIdentifierBag__Len,nil);
RegisterIndexedProperty(ServiceDetail,'BusinessServiceArray',1,True,__DC__GetServiceDetail__BusinessServiceArray,nil);
RegisterProperty(ServiceDetail,'Len',__DC__GetServiceDetail__Len,nil);
RegisterIndexedProperty(ServiceInfos,'ServiceInfoArray',1,True,__DC__GetServiceInfos__ServiceInfoArray,nil);
RegisterProperty(ServiceInfos,'Len',__DC__GetServiceInfos__Len,nil);
RegisterIndexedProperty(TModelBag,'WideStringArray',1,True,__DC__GetTModelBag__WideStringArray,nil);
RegisterProperty(TModelBag,'Len',__DC__GetTModelBag__Len,nil);
RegisterIndexedProperty(TModelDetail,'TModelArray',1,True,__DC__GetTModelDetail__TModelArray,nil);
RegisterProperty(TModelDetail,'Len',__DC__GetTModelDetail__Len,nil);
RegisterIndexedProperty(TModelInfos,'TModelInfoArray',1,True,__DC__GetTModelInfos__TModelInfoArray,nil);
RegisterProperty(TModelInfos,'Len',__DC__GetTModelInfos__Len,nil);
RegisterIndexedProperty(TModelInstanceDetails,'TModelInstanceInfoArray',1,True,__DC__GetTModelInstanceDetails__TModelInstanceInfoArray,nil);
RegisterProperty(TModelInstanceDetails,'Len',__DC__GetTModelInstanceDetails__Len,nil);
end;

const __ConstNames0 : array[0..8] of string = (
'false'
,'true'
,'mailto'
,'http'
,'https'
,'ftp'
,'fax'
,'phone'
,'other'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,false));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,true));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,mailto));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,http));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,https));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,ftp));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,fax));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,phone));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,other));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..64] of TClass = (
AccessPoint,
Address,
BindingDetail,
bindingDetail2,
BindingTemplate,
BindingTemplates,
BusinessDetail,
businessDetail2,
BusinessDetailExt,
businessDetailExt2,
BusinessEntity,
BusinessEntityExt,
BusinessInfo,
BusinessInfos,
BusinessList,
businessList2,
BusinessService,
BusinessServices,
CategoryBag,
Contact,
Contacts,
DiscoveryUrl,
DiscoveryURLs,
Email,
find_binding,
find_business,
find_service,
find_tModel,
FindBinding,
FindBusiness,
FindQualifiers,
FindService,
FindTModel,
get_bindingDetail,
get_businessDetail,
get_businessDetailExt,
get_serviceDetail,
get_tModelDetail,
GetBindingDetail,
GetBusinessDetail,
GetBusinessDetailExt,
GetServiceDetail,
GetTModelDetail,
HostingRedirector,
IdentifierBag,
InstanceDetails,
KeyedReference,
OverviewDoc,
Phone2,
ServiceDetail,
serviceDetail2,
ServiceInfo,
ServiceInfos,
ServiceList,
serviceList2,
TModel,
TModelBag,
TModelDetail,
tModelDetail2,
TModelInfo,
TModelInfos,
TModelInstanceDetails,
TModelInstanceInfo,
TModelList,
tModelList2
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
RegRegisterMethod(Address,'GetWideStringArray',TypeInfo(_T0),[
TypeInfo(Integer),TypeInfo(WideString)],Addr(Address.GetWideStringArray));

RegRegisterMethod(Address,'GetWideStringArrayLength',TypeInfo(_T1),[TypeInfo(Integer)],Addr(Address.GetWideStringArrayLength));

RegRegisterMethod(BindingDetail,'GetBindingTemplateArray',TypeInfo(_T2),[
TypeInfo(Integer),TypeInfo(BindingTemplate)],Addr(BindingDetail.GetBindingTemplateArray));

RegRegisterMethod(BindingDetail,'GetBindingTemplateArrayLength',TypeInfo(_T3),[TypeInfo(Integer)],Addr(BindingDetail.GetBindingTemplateArrayLength));

RegRegisterMethod(BindingTemplates,'GetBindingTemplateArray',TypeInfo(_T4),[
TypeInfo(Integer),TypeInfo(BindingTemplate)],Addr(BindingTemplates.GetBindingTemplateArray));

RegRegisterMethod(BindingTemplates,'GetBindingTemplateArrayLength',TypeInfo(_T5),[TypeInfo(Integer)],Addr(BindingTemplates.GetBindingTemplateArrayLength));

RegRegisterMethod(BusinessDetail,'GetBusinessEntityArray',TypeInfo(_T6),[
TypeInfo(Integer),TypeInfo(BusinessEntity)],Addr(BusinessDetail.GetBusinessEntityArray));

RegRegisterMethod(BusinessDetail,'GetBusinessEntityArrayLength',TypeInfo(_T7),[TypeInfo(Integer)],Addr(BusinessDetail.GetBusinessEntityArrayLength));

RegRegisterMethod(BusinessDetailExt,'GetBusinessEntityExtArray',TypeInfo(_T8),[
TypeInfo(Integer),TypeInfo(BusinessEntityExt)],Addr(BusinessDetailExt.GetBusinessEntityExtArray));

RegRegisterMethod(BusinessDetailExt,'GetBusinessEntityExtArrayLength',TypeInfo(_T9),[TypeInfo(Integer)],Addr(BusinessDetailExt.GetBusinessEntityExtArrayLength));

RegRegisterMethod(BusinessInfos,'GetBusinessInfoArray',TypeInfo(_T10),[
TypeInfo(Integer),TypeInfo(BusinessInfo)],Addr(BusinessInfos.GetBusinessInfoArray));

RegRegisterMethod(BusinessInfos,'GetBusinessInfoArrayLength',TypeInfo(_T11),[TypeInfo(Integer)],Addr(BusinessInfos.GetBusinessInfoArrayLength));

RegRegisterMethod(BusinessServices,'GetBusinessServiceArray',TypeInfo(_T12),[
TypeInfo(Integer),TypeInfo(BusinessService)],Addr(BusinessServices.GetBusinessServiceArray));

RegRegisterMethod(BusinessServices,'GetBusinessServiceArrayLength',TypeInfo(_T13),[TypeInfo(Integer)],Addr(BusinessServices.GetBusinessServiceArrayLength));

RegRegisterMethod(CategoryBag,'GetKeyedReferenceArray',TypeInfo(_T14),[
TypeInfo(Integer),TypeInfo(KeyedReference)],Addr(CategoryBag.GetKeyedReferenceArray));

RegRegisterMethod(CategoryBag,'GetKeyedReferenceArrayLength',TypeInfo(_T15),[TypeInfo(Integer)],Addr(CategoryBag.GetKeyedReferenceArrayLength));

RegRegisterMethod(Contacts,'GetContactArray',TypeInfo(_T16),[
TypeInfo(Integer),TypeInfo(Contact)],Addr(Contacts.GetContactArray));

RegRegisterMethod(Contacts,'GetContactArrayLength',TypeInfo(_T17),[TypeInfo(Integer)],Addr(Contacts.GetContactArrayLength));

RegRegisterMethod(DiscoveryURLs,'GetDiscoveryUrlArray',TypeInfo(_T18),[
TypeInfo(Integer),TypeInfo(DiscoveryUrl)],Addr(DiscoveryURLs.GetDiscoveryUrlArray));

RegRegisterMethod(DiscoveryURLs,'GetDiscoveryUrlArrayLength',TypeInfo(_T19),[TypeInfo(Integer)],Addr(DiscoveryURLs.GetDiscoveryUrlArrayLength));

RegRegisterMethod(FindQualifiers,'GetWideStringArray',TypeInfo(_T20),[
TypeInfo(Integer),TypeInfo(WideString)],Addr(FindQualifiers.GetWideStringArray));

RegRegisterMethod(FindQualifiers,'GetWideStringArrayLength',TypeInfo(_T21),[TypeInfo(Integer)],Addr(FindQualifiers.GetWideStringArrayLength));

RegRegisterMethod(GetBindingDetail,'GetWideStringArray',TypeInfo(_T22),[
TypeInfo(Integer),TypeInfo(WideString)],Addr(GetBindingDetail.GetWideStringArray));

RegRegisterMethod(GetBindingDetail,'GetWideStringArrayLength',TypeInfo(_T23),[TypeInfo(Integer)],Addr(GetBindingDetail.GetWideStringArrayLength));

RegRegisterMethod(GetBusinessDetail,'GetWideStringArray',TypeInfo(_T24),[
TypeInfo(Integer),TypeInfo(WideString)],Addr(GetBusinessDetail.GetWideStringArray));

RegRegisterMethod(GetBusinessDetail,'GetWideStringArrayLength',TypeInfo(_T25),[TypeInfo(Integer)],Addr(GetBusinessDetail.GetWideStringArrayLength));

RegRegisterMethod(GetBusinessDetailExt,'GetWideStringArray',TypeInfo(_T26),[
TypeInfo(Integer),TypeInfo(WideString)],Addr(GetBusinessDetailExt.GetWideStringArray));

RegRegisterMethod(GetBusinessDetailExt,'GetWideStringArrayLength',TypeInfo(_T27),[TypeInfo(Integer)],Addr(GetBusinessDetailExt.GetWideStringArrayLength));

RegRegisterMethod(GetServiceDetail,'GetWideStringArray',TypeInfo(_T28),[
TypeInfo(Integer),TypeInfo(WideString)],Addr(GetServiceDetail.GetWideStringArray));

RegRegisterMethod(GetServiceDetail,'GetWideStringArrayLength',TypeInfo(_T29),[TypeInfo(Integer)],Addr(GetServiceDetail.GetWideStringArrayLength));

RegRegisterMethod(GetTModelDetail,'GetWideStringArray',TypeInfo(_T30),[
TypeInfo(Integer),TypeInfo(WideString)],Addr(GetTModelDetail.GetWideStringArray));

RegRegisterMethod(GetTModelDetail,'GetWideStringArrayLength',TypeInfo(_T31),[TypeInfo(Integer)],Addr(GetTModelDetail.GetWideStringArrayLength));

RegRegisterMethod(IdentifierBag,'GetKeyedReferenceArray',TypeInfo(_T32),[
TypeInfo(Integer),TypeInfo(KeyedReference)],Addr(IdentifierBag.GetKeyedReferenceArray));

RegRegisterMethod(IdentifierBag,'GetKeyedReferenceArrayLength',TypeInfo(_T33),[TypeInfo(Integer)],Addr(IdentifierBag.GetKeyedReferenceArrayLength));

RegRegisterMethod(ServiceDetail,'GetBusinessServiceArray',TypeInfo(_T34),[
TypeInfo(Integer),TypeInfo(BusinessService)],Addr(ServiceDetail.GetBusinessServiceArray));

RegRegisterMethod(ServiceDetail,'GetBusinessServiceArrayLength',TypeInfo(_T35),[TypeInfo(Integer)],Addr(ServiceDetail.GetBusinessServiceArrayLength));

RegRegisterMethod(ServiceInfos,'GetServiceInfoArray',TypeInfo(_T36),[
TypeInfo(Integer),TypeInfo(ServiceInfo)],Addr(ServiceInfos.GetServiceInfoArray));

RegRegisterMethod(ServiceInfos,'GetServiceInfoArrayLength',TypeInfo(_T37),[TypeInfo(Integer)],Addr(ServiceInfos.GetServiceInfoArrayLength));

RegRegisterMethod(TModelBag,'GetWideStringArray',TypeInfo(_T38),[
TypeInfo(Integer),TypeInfo(WideString)],Addr(TModelBag.GetWideStringArray));

RegRegisterMethod(TModelBag,'GetWideStringArrayLength',TypeInfo(_T39),[TypeInfo(Integer)],Addr(TModelBag.GetWideStringArrayLength));

RegRegisterMethod(TModelDetail,'GetTModelArray',TypeInfo(_T40),[
TypeInfo(Integer),TypeInfo(TModel)],Addr(TModelDetail.GetTModelArray));

RegRegisterMethod(TModelDetail,'GetTModelArrayLength',TypeInfo(_T41),[TypeInfo(Integer)],Addr(TModelDetail.GetTModelArrayLength));

RegRegisterMethod(TModelInfos,'GetTModelInfoArray',TypeInfo(_T42),[
TypeInfo(Integer),TypeInfo(TModelInfo)],Addr(TModelInfos.GetTModelInfoArray));

RegRegisterMethod(TModelInfos,'GetTModelInfoArrayLength',TypeInfo(_T43),[TypeInfo(Integer)],Addr(TModelInfos.GetTModelInfoArrayLength));

RegRegisterMethod(TModelInstanceDetails,'GetTModelInstanceInfoArray',TypeInfo(_T44),[
TypeInfo(Integer),TypeInfo(TModelInstanceInfo)],Addr(TModelInstanceDetails.GetTModelInstanceInfoArray));

RegRegisterMethod(TModelInstanceDetails,'GetTModelInstanceInfoArrayLength',TypeInfo(_T45),[TypeInfo(Integer)],Addr(TModelInstanceDetails.GetTModelInstanceInfoArrayLength));

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
