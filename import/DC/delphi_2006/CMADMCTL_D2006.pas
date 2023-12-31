{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit CMADMCTL_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  dcscript,
  dcsystem,
  dcdreamlib,
  Windows,
  ActiveX,
  Classes,
  Graphics,
  OleServer,
  OleCtrls,
  StdVCL,
  COMAdmin,
  CmAdmCtl;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
{_T0 = function : ICOMAdminCatalog of object;}

{_T1 = function : ICatalogCollection of object;}

{_T2 = function : ICatalogObject of object;}

{_T3 = procedure (p0 : ICOMAdminCatalog) of object;}

_T4 = function (const p0 : WideString): TCOMAdminCatalogCollection of object;

_T5 = _T4;

_T6 = function : Integer of object;

_T7 = _T6;

{_T8 = function (const p0 : WideString;
var p1 : PSafeArray): TCOMAdminCatalogCollection of object;}

_T9 = procedure (const p0 : WideString;
const p1 : WideString) of object;

_T10 = procedure (const p0 : WideString;
const p1 : WideString;
const p2 : WideString;
const p3 : WideString) of object;

_T11 = procedure (const p0 : WideString) of object;

_T12 = procedure (const p0 : WideString;
const p1 : WideString;
p2 : Integer) of object;

_T13 = procedure (const p0 : WideString;
const p1 : WideString;
p2 : Integer;
const p3 : WideString;
const p4 : WideString;
const p5 : WideString) of object;

_T14 = procedure  of object;

_T15 = _T14;

_T16 = _T14;

{_T17 = procedure (const p0 : WideString;
var p1 : PSafeArray;
var p2 : PSafeArray) of object;}

{_T18 = procedure (const p0 : WideString;
var p1 : PSafeArray;
out p2 : PSafeArray;
out p3 : PSafeArray;
out p4 : PSafeArray;
out p5 : PSafeArray) of object;}

_T19 = _T14;

_T20 = _T11;

_T21 = _T11;

{_T22 = procedure (const p0 : WideString;
out p1 : WideString;
out p2 : WideString;
out p3 : WordBool;
out p4 : WordBool;
out p5 : PSafeArray) of object;}

_T23 = _T11;

_T24 = function (p0 : Integer): Integer of object;

{_T25 = procedure (const p0 : WideString;
var p1 : PSafeArray;
var p2 : PSafeArray) of object;}

_T26 = _T10;

{_T27 = procedure (const p0 : WideString;
out p1 : PSafeArray;
out p2 : PSafeArray;
out p3 : PSafeArray) of object;}

{_T28 = procedure (p0 : ICatalogCollection) of object;}

_T29 = function (p0 : Integer): TCOMAdminCatalogObject of object;

_T30 = _T6;

_T31 = procedure (p0 : Integer) of object;

_T32 = function : TCOMAdminCatalogObject of object;

_T33 = _T14;

_T34 = _T6;

_T35 = function (const p0 : WideString;
p1 : OleVariant): TCOMAdminCatalogCollection of object;

_T36 = function : OleVariant of object;

_T37 = function : WordBool of object;

_T38 = _T37;

{_T39 = function : IDispatch of object;}

_T40 = _T6;

_T41 = _T6;

{_T42 = procedure (p0 : PSafeArray) of object;}

_T43 = procedure (const p0 : WideString;
p1 : Integer) of object;

{_T44 = procedure (p0 : ICatalogObject) of object;}

_T45 = function (const p0 : WideString): OleVariant of object;

_T46 = procedure (const p0 : WideString;
p1 : OleVariant) of object;

_T47 = _T36;

_T48 = _T36;

_T49 = function (const p0 : WideString): WordBool of object;

_T50 = _T37;

_T51 = _T49;

function __DC__GetTCOMAdminCatalog__MajorVersion(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCOMAdminCatalog(Instance).MajorVersion;
end;

function __DC__GetTCOMAdminCatalog__MinorVersion(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCOMAdminCatalog(Instance).MinorVersion;
end;

function __DC__GetTCOMAdminCatalogCollection__Count(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCOMAdminCatalogCollection(Instance).Count;
end;

function __DC__GetTCOMAdminCatalogCollection__Name(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCOMAdminCatalogCollection(Instance).Name;
end;

function __DC__GetTCOMAdminCatalogCollection__AddEnabled(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCOMAdminCatalogCollection(Instance).AddEnabled;
end;

function __DC__GetTCOMAdminCatalogCollection__RemoveEnabled(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCOMAdminCatalogCollection(Instance).RemoveEnabled;
end;

function __DC__GetTCOMAdminCatalogCollection__DataStoreMajorVersion(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCOMAdminCatalogCollection(Instance).DataStoreMajorVersion;
end;

function __DC__GetTCOMAdminCatalogCollection__DataStoreMinorVersion(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCOMAdminCatalogCollection(Instance).DataStoreMinorVersion;
end;

function __DC__GetTCOMAdminCatalogObject__Value(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCOMAdminCatalogObject(Instance).Value[OleVariant(Params^[0])];
end;

procedure __DC__SetTCOMAdminCatalogObject__Value(Instance : TObject; Params : PVariantArgList);
begin
TCOMAdminCatalogObject(Instance).Value[OleVariant(Params^[1])]:=OleVariant(Params^[0]);
end;

function __DC__GetTCOMAdminCatalogObject__Key(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCOMAdminCatalogObject(Instance).Key;
end;

function __DC__GetTCOMAdminCatalogObject__Name(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCOMAdminCatalogObject(Instance).Name;
end;

function __DC__GetTCOMAdminCatalogObject__Valid(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCOMAdminCatalogObject(Instance).Valid;
end;

procedure __RegisterProps;
begin
RegisterProperty(TCOMAdminCatalog,'MajorVersion',__DC__GetTCOMAdminCatalog__MajorVersion,nil);
RegisterProperty(TCOMAdminCatalog,'MinorVersion',__DC__GetTCOMAdminCatalog__MinorVersion,nil);
RegisterProperty(TCOMAdminCatalogCollection,'Count',__DC__GetTCOMAdminCatalogCollection__Count,nil);
RegisterProperty(TCOMAdminCatalogCollection,'Name',__DC__GetTCOMAdminCatalogCollection__Name,nil);
RegisterProperty(TCOMAdminCatalogCollection,'AddEnabled',__DC__GetTCOMAdminCatalogCollection__AddEnabled,nil);
RegisterProperty(TCOMAdminCatalogCollection,'RemoveEnabled',__DC__GetTCOMAdminCatalogCollection__RemoveEnabled,nil);
RegisterProperty(TCOMAdminCatalogCollection,'DataStoreMajorVersion',__DC__GetTCOMAdminCatalogCollection__DataStoreMajorVersion,nil);
RegisterProperty(TCOMAdminCatalogCollection,'DataStoreMinorVersion',__DC__GetTCOMAdminCatalogCollection__DataStoreMinorVersion,nil);
RegisterIndexedProperty(TCOMAdminCatalogObject,'Value',1,False,__DC__GetTCOMAdminCatalogObject__Value,__DC__SetTCOMAdminCatalogObject__Value);
RegisterProperty(TCOMAdminCatalogObject,'Key',__DC__GetTCOMAdminCatalogObject__Key,nil);
RegisterProperty(TCOMAdminCatalogObject,'Name',__DC__GetTCOMAdminCatalogObject__Name,nil);
RegisterProperty(TCOMAdminCatalogObject,'Valid',__DC__GetTCOMAdminCatalogObject__Valid,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..5] of TClass = (
CoCOMAdminCatalog,
CoCOMAdminCatalogCollection,
CoCOMAdminCatalogObject,
TCOMAdminCatalog,
TCOMAdminCatalogCollection,
TCOMAdminCatalogObject
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
RegRegisterMethod(TCOMAdminCatalog,'GetCollection',TypeInfo(_T4),[
TypeInfo(WideString),TypeInfo(TCOMAdminCatalogCollection)],Addr(TCOMAdminCatalog.GetCollection));

RegRegisterMethod(TCOMAdminCatalog,'ICOMAdminCatalog_Connect',TypeInfo(_T5),[
TypeInfo(WideString),TypeInfo(TCOMAdminCatalogCollection)],Addr(TCOMAdminCatalog.ICOMAdminCatalog_Connect));

RegRegisterMethod(TCOMAdminCatalog,'Get_MajorVersion',TypeInfo(_T6),[TypeInfo(Integer)],Addr(TCOMAdminCatalog.Get_MajorVersion));

RegRegisterMethod(TCOMAdminCatalog,'Get_MinorVersion',TypeInfo(_T7),[TypeInfo(Integer)],Addr(TCOMAdminCatalog.Get_MinorVersion));

RegRegisterMethod(TCOMAdminCatalog,'ImportComponent',TypeInfo(_T9),[
TypeInfo(WideString),
TypeInfo(WideString)],Addr(TCOMAdminCatalog.ImportComponent));

RegRegisterMethod(TCOMAdminCatalog,'InstallComponent',TypeInfo(_T10),[
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(WideString)],Addr(TCOMAdminCatalog.InstallComponent));

RegRegisterMethod(TCOMAdminCatalog,'ShutdownApplication',TypeInfo(_T11),[
TypeInfo(WideString)],Addr(TCOMAdminCatalog.ShutdownApplication));

RegRegisterMethod(TCOMAdminCatalog,'ExportApplication',TypeInfo(_T12),[
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(Integer)],Addr(TCOMAdminCatalog.ExportApplication));

RegRegisterMethod(TCOMAdminCatalog,'InstallApplication',TypeInfo(_T13),[
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(Integer),
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(WideString)],Addr(TCOMAdminCatalog.InstallApplication));

RegRegisterMethod(TCOMAdminCatalog,'StopRouter',TypeInfo(_T14),NoParams,Addr(TCOMAdminCatalog.StopRouter));

RegRegisterMethod(TCOMAdminCatalog,'RefreshRouter',TypeInfo(_T15),NoParams,Addr(TCOMAdminCatalog.RefreshRouter));

RegRegisterMethod(TCOMAdminCatalog,'StartRouter',TypeInfo(_T16),NoParams,Addr(TCOMAdminCatalog.StartRouter));

RegRegisterMethod(TCOMAdminCatalog,'RefreshComponents',TypeInfo(_T19),NoParams,Addr(TCOMAdminCatalog.RefreshComponents));

RegRegisterMethod(TCOMAdminCatalog,'BackupREGDB',TypeInfo(_T20),[
TypeInfo(WideString)],Addr(TCOMAdminCatalog.BackupREGDB));

RegRegisterMethod(TCOMAdminCatalog,'RestoreREGDB',TypeInfo(_T21),[
TypeInfo(WideString)],Addr(TCOMAdminCatalog.RestoreREGDB));

RegRegisterMethod(TCOMAdminCatalog,'StartApplication',TypeInfo(_T23),[
TypeInfo(WideString)],Addr(TCOMAdminCatalog.StartApplication));

RegRegisterMethod(TCOMAdminCatalog,'ServiceCheck',TypeInfo(_T24),[
TypeInfo(Integer),TypeInfo(Integer)],Addr(TCOMAdminCatalog.ServiceCheck));

RegRegisterMethod(TCOMAdminCatalog,'InstallEventClass',TypeInfo(_T26),[
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(WideString)],Addr(TCOMAdminCatalog.InstallEventClass));

RegRegisterMethod(TCOMAdminCatalogCollection,'Get_Item',TypeInfo(_T29),[
TypeInfo(Integer),TypeInfo(TCOMAdminCatalogObject)],Addr(TCOMAdminCatalogCollection.Get_Item));

RegRegisterMethod(TCOMAdminCatalogCollection,'Get_Count',TypeInfo(_T30),[TypeInfo(Integer)],Addr(TCOMAdminCatalogCollection.Get_Count));

RegRegisterMethod(TCOMAdminCatalogCollection,'Remove',TypeInfo(_T31),[
TypeInfo(Integer)],Addr(TCOMAdminCatalogCollection.Remove));

RegRegisterMethod(TCOMAdminCatalogCollection,'Add',TypeInfo(_T32),[TypeInfo(TCOMAdminCatalogObject)],Addr(TCOMAdminCatalogCollection.Add));

RegRegisterMethod(TCOMAdminCatalogCollection,'Populate',TypeInfo(_T33),NoParams,Addr(TCOMAdminCatalogCollection.Populate));

RegRegisterMethod(TCOMAdminCatalogCollection,'SaveChanges',TypeInfo(_T34),[TypeInfo(Integer)],Addr(TCOMAdminCatalogCollection.SaveChanges));

RegRegisterMethod(TCOMAdminCatalogCollection,'GetCollection',TypeInfo(_T35),[
TypeInfo(WideString),
TypeInfo(OleVariant),TypeInfo(TCOMAdminCatalogCollection)],Addr(TCOMAdminCatalogCollection.GetCollection));

RegRegisterMethod(TCOMAdminCatalogCollection,'Get_Name',TypeInfo(_T36),[TypeInfo(OleVariant)],Addr(TCOMAdminCatalogCollection.Get_Name));

RegRegisterMethod(TCOMAdminCatalogCollection,'Get_AddEnabled',TypeInfo(_T37),[TypeInfo(WordBool)],Addr(TCOMAdminCatalogCollection.Get_AddEnabled));

RegRegisterMethod(TCOMAdminCatalogCollection,'Get_RemoveEnabled',TypeInfo(_T38),[TypeInfo(WordBool)],Addr(TCOMAdminCatalogCollection.Get_RemoveEnabled));

RegRegisterMethod(TCOMAdminCatalogCollection,'Get_DataStoreMajorVersion',TypeInfo(_T40),[TypeInfo(Integer)],Addr(TCOMAdminCatalogCollection.Get_DataStoreMajorVersion));

RegRegisterMethod(TCOMAdminCatalogCollection,'Get_DataStoreMinorVersion',TypeInfo(_T41),[TypeInfo(Integer)],Addr(TCOMAdminCatalogCollection.Get_DataStoreMinorVersion));

RegRegisterMethod(TCOMAdminCatalogCollection,'PopulateByQuery',TypeInfo(_T43),[
TypeInfo(WideString),
TypeInfo(Integer)],Addr(TCOMAdminCatalogCollection.PopulateByQuery));

RegRegisterMethod(TCOMAdminCatalogObject,'Get_Value',TypeInfo(_T45),[
TypeInfo(WideString),TypeInfo(OleVariant)],Addr(TCOMAdminCatalogObject.Get_Value));

RegRegisterMethod(TCOMAdminCatalogObject,'Set_Value',TypeInfo(_T46),[
TypeInfo(WideString),
TypeInfo(OleVariant)],Addr(TCOMAdminCatalogObject.Set_Value));

RegRegisterMethod(TCOMAdminCatalogObject,'Get_Key',TypeInfo(_T47),[TypeInfo(OleVariant)],Addr(TCOMAdminCatalogObject.Get_Key));

RegRegisterMethod(TCOMAdminCatalogObject,'Get_Name',TypeInfo(_T48),[TypeInfo(OleVariant)],Addr(TCOMAdminCatalogObject.Get_Name));

RegRegisterMethod(TCOMAdminCatalogObject,'IsPropertyReadOnly',TypeInfo(_T49),[
TypeInfo(WideString),TypeInfo(WordBool)],Addr(TCOMAdminCatalogObject.IsPropertyReadOnly));

RegRegisterMethod(TCOMAdminCatalogObject,'Get_Valid',TypeInfo(_T50),[TypeInfo(WordBool)],Addr(TCOMAdminCatalogObject.Get_Valid));

RegRegisterMethod(TCOMAdminCatalogObject,'IsPropertyWriteOnly',TypeInfo(_T51),[
TypeInfo(WideString),TypeInfo(WordBool)],Addr(TCOMAdminCatalogObject.IsPropertyWriteOnly));

end;
initialization
_mreg_0;
{RegisterProc(CoCOMAdminCatalog,'Create',mtClassMethod,TypeInfo(_T0),[TypeInfo(ICOMAdminCatalog)],Addr(CoCOMAdminCatalog.Create),cRegister)}

{RegisterProc(CoCOMAdminCatalogCollection,'Create',mtClassMethod,TypeInfo(_T1),[TypeInfo(ICatalogCollection)],Addr(CoCOMAdminCatalogCollection.Create),cRegister)}

{RegisterProc(CoCOMAdminCatalogObject,'Create',mtClassMethod,TypeInfo(_T2),[TypeInfo(ICatalogObject)],Addr(CoCOMAdminCatalogObject.Create),cRegister)}

{RegRegisterMethod(TCOMAdminCatalog,'ConnectTo',TypeInfo(_T3),[
TypeInfo(ICOMAdminCatalog)],Addr(TCOMAdminCatalog.ConnectTo))}

{RegRegisterMethod(TCOMAdminCatalog,'GetCollectionByQuery',TypeInfo(_T8),[
TypeInfo(WideString),
TypeInfoPointer,TypeInfo(TCOMAdminCatalogCollection)],Addr(TCOMAdminCatalog.GetCollectionByQuery))}

{RegRegisterMethod(TCOMAdminCatalog,'InstallMultipleComponents',TypeInfo(_T17),[
TypeInfo(WideString),
TypeInfoPointer,
TypeInfoPointer],Addr(TCOMAdminCatalog.InstallMultipleComponents))}

{RegRegisterMethod(TCOMAdminCatalog,'GetMultipleComponentsInfo',TypeInfo(_T18),[
TypeInfo(WideString),
TypeInfoPointer,
TypeInfoPointer,
TypeInfoPointer,
TypeInfoPointer,
TypeInfoPointer],Addr(TCOMAdminCatalog.GetMultipleComponentsInfo))}

{RegRegisterMethod(TCOMAdminCatalog,'QueryApplicationFile',TypeInfo(_T22),[
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(WordBool),
TypeInfo(WordBool),
TypeInfoPointer],Addr(TCOMAdminCatalog.QueryApplicationFile))}

{RegRegisterMethod(TCOMAdminCatalog,'InstallMultipleEventClasses',TypeInfo(_T25),[
TypeInfo(WideString),
TypeInfoPointer,
TypeInfoPointer],Addr(TCOMAdminCatalog.InstallMultipleEventClasses))}

{RegRegisterMethod(TCOMAdminCatalog,'GetEventClassesForIID',TypeInfo(_T27),[
TypeInfo(WideString),
TypeInfoPointer,
TypeInfoPointer,
TypeInfoPointer],Addr(TCOMAdminCatalog.GetEventClassesForIID))}

{RegRegisterMethod(TCOMAdminCatalogCollection,'ConnectTo',TypeInfo(_T28),[
TypeInfo(ICatalogCollection)],Addr(TCOMAdminCatalogCollection.ConnectTo))}

{RegRegisterMethod(TCOMAdminCatalogCollection,'GetUtilInterface',TypeInfo(_T39),[TypeInfo(IDispatch)],Addr(TCOMAdminCatalogCollection.GetUtilInterface))}

{RegRegisterMethod(TCOMAdminCatalogCollection,'PopulateByKey',TypeInfo(_T42),[
TypeInfoPointer],Addr(TCOMAdminCatalogCollection.PopulateByKey))}

{RegRegisterMethod(TCOMAdminCatalogObject,'ConnectTo',TypeInfo(_T44),[
TypeInfo(ICatalogObject)],Addr(TCOMAdminCatalogObject.ConnectTo))}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
