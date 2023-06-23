{*******************************************************}
{                                                       }
{ Import unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

Unit ComObj_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  Messages,
  classes,
  dcscript,
  dcsystem,
  dcdreamlib,
  Variants,
  Windows,
  ActiveX,
  SysUtils,
  ComObj;
function ConvertTExcepInfoToVariant(var R : TExcepInfo) : OleVariant;
function ConvertVariantToTExcepInfo(const V : OleVariant) : TExcepInfo;
function ConvertTGUIDToVariant(var R : TGUID) : OleVariant;
function ConvertVariantToTGUID(const V : OleVariant) : TGUID;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TGUID__Wrapper = class(TDCRecordWrapper)
private
fR : TGUID;
public
function GetRecordPtr : pointer; override;
published
procedure setD1(const val : LongWord);
function getD1 : LongWord;
property D1 : LongWord read getD1 write setD1;
procedure setD2(const val : Word);
function getD2 : Word;
property D2 : Word read getD2 write setD2;
procedure setD3(const val : Word);
function getD3 : Word;
property D3 : Word read getD3 write setD3;
end;
type __TExcepInfo__Wrapper = class(TDCRecordWrapper)
private
fR : TExcepInfo;
public
function GetRecordPtr : pointer; override;
published
procedure setwCode(const val : Word);
function getwCode : Word;
property wCode : Word read getwCode write setwCode;
procedure setwReserved(const val : Word);
function getwReserved : Word;
property wReserved : Word read getwReserved write setwReserved;
procedure setbstrSource(const val : WideString);
function getbstrSource : WideString;
property bstrSource : WideString read getbstrSource write setbstrSource;
procedure setbstrDescription(const val : WideString);
function getbstrDescription : WideString;
property bstrDescription : WideString read getbstrDescription write setbstrDescription;
procedure setbstrHelpFile(const val : WideString);
function getbstrHelpFile : WideString;
property bstrHelpFile : WideString read getbstrHelpFile write setbstrHelpFile;
procedure setdwHelpContext(const val : Longint);
function getdwHelpContext : Longint;
property dwHelpContext : Longint read getdwHelpContext write setdwHelpContext;
end;
type __TAutoObject__ = class(TAutoObject);
type
_T0 = procedure (const Dispatch : IDispatch;
CallDesc : PCallDesc;
DispIDs : PDispIDList;
Params : Pointer;
Result : PVariant) of object;

_T1 = procedure (Status : Integer;
const ExcepInfo : IDispatch) of object;

_T2 = function (ExceptObject : TObject;
ExceptAddr : Pointer;
const ErrorIID : IDispatch;
const ProgID : WideString;
const HelpFileName : WideString): HResult of object;

_T5 = function (const ClassName : string): IDispatch of object;

_T6 = function (const ClassName : string): IDispatch of object;

_T7 = procedure (ErrorCode : HResult) of object;

_T8 = procedure (Result : HResult) of object;

_T9 = function (const S : string): IDispatch of object;

_T10 = function (const ClassID : IDispatch): string of object;

_T11 = function (const ProgID : string): IDispatch of object;

_T12 = _T10;

_T13 = procedure (const Key : string;
const ValueName : string;
const Value : string;
RootKey : DWord) of object;

_T14 = procedure (const Key : string;
RootKey : DWord) of object;

_T15 = function (const Key : string;
const ValueName : string;
RootKey : DWord): string of object;

_T16 = function (const Source : string): POleStr of object;

_T17 = procedure (const DLLName : string) of object;

_T18 = procedure (const ClassID : string;
const ServiceName : string) of object;

_T19 = function : string of object;

_T22 = function (Disp : IDispatch;
DispID : Integer): OleVariant of object;

_T23 = procedure (Disp : IDispatch;
DispID : Integer;
const Value : OleVariant) of object;

_T24 = function : TComClassManager of object;

_T25 = procedure (const Message : string;
ErrorCode : HResult;
const Source : string;
const HelpFile : string;
HelpContext : Integer) of object;

_T26 = procedure (const Message : string;
ErrorCode : HResult;
HelpContext : Integer) of object;

_T28 = function (const IID : IDispatch;
Names : Pointer;
NameCount : Integer;
LocaleID : Integer;
DispIDs : Pointer): HResult of object;

_T29 = function (Index : Integer;
LocaleID : Integer;
var TypeInfo): HResult of object;

_T30 = function (var Count : Integer): HResult of object;

_T31 = function (DispID : Integer;
const IID : IDispatch;
LocaleID : Integer;
Flags : Word;
var Params : Word;
VarResult : Pointer;
ExcepInfo : Pointer;
ArgErr : Pointer): HResult of object;

_T32 = procedure (const EventSink : IUnknown) of object;

_T35 = procedure  of object;

_T36 = procedure (ComServer : TComServerObject;
FactoryProc : TFactoryProc) of object;

_T37 = function (ComClass : TClass): TComObjectFactory of object;

_T38 = function (const ClassID : IDispatch): TComObjectFactory of object;

_T39 = _T35;

_T40 = procedure (const Controller : IUnknown) of object;

_T41 = procedure (Factory : TComObjectFactory;
const Controller : IUnknown) of object;

_T42 = _T35;

_T43 = function : Integer of object;

_T44 = function (const IID : IDispatch;
var Obj): HResult of object;

_T45 = _T43;

_T46 = _T19;

_T47 = function : WideString of object;

_T48 = function : Boolean of object;

_T49 = function (const LicStr : WideString): Boolean of object;

_T51 = function (const Controller : IUnknown): TComObject of object;

_T52 = _T35;

_T53 = procedure (Register : Boolean) of object;

_T54 = function (Created : Boolean): Integer of object;

_T55 = _T54;

_T56 = _T19;

_T57 = _T19;

_T58 = _T19;

_T59 = _T19;

_T60 = _T48;

_T61 = function : ITypeLib of object;

_T62 = procedure (const Value : string) of object;

_T64 = function (TypeFlags : Integer): ITypeInfo of object;

function __TGUID__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TGUID__Wrapper.setD1(const val : LongWord);
begin
TGUID(GetRecordPtr^).D1 := val;
end;
function __TGUID__Wrapper.getD1 : LongWord;
begin
result := TGUID(GetRecordPtr^).D1;
end;
procedure __TGUID__Wrapper.setD2(const val : Word);
begin
TGUID(GetRecordPtr^).D2 := val;
end;
function __TGUID__Wrapper.getD2 : Word;
begin
result := TGUID(GetRecordPtr^).D2;
end;
procedure __TGUID__Wrapper.setD3(const val : Word);
begin
TGUID(GetRecordPtr^).D3 := val;
end;
function __TGUID__Wrapper.getD3 : Word;
begin
result := TGUID(GetRecordPtr^).D3;
end;
function __TExcepInfo__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TExcepInfo__Wrapper.setwCode(const val : Word);
begin
TExcepInfo(GetRecordPtr^).wCode := val;
end;
function __TExcepInfo__Wrapper.getwCode : Word;
begin
result := TExcepInfo(GetRecordPtr^).wCode;
end;
procedure __TExcepInfo__Wrapper.setwReserved(const val : Word);
begin
TExcepInfo(GetRecordPtr^).wReserved := val;
end;
function __TExcepInfo__Wrapper.getwReserved : Word;
begin
result := TExcepInfo(GetRecordPtr^).wReserved;
end;
procedure __TExcepInfo__Wrapper.setbstrSource(const val : WideString);
begin
TExcepInfo(GetRecordPtr^).bstrSource := val;
end;
function __TExcepInfo__Wrapper.getbstrSource : WideString;
begin
result := TExcepInfo(GetRecordPtr^).bstrSource;
end;
procedure __TExcepInfo__Wrapper.setbstrDescription(const val : WideString);
begin
TExcepInfo(GetRecordPtr^).bstrDescription := val;
end;
function __TExcepInfo__Wrapper.getbstrDescription : WideString;
begin
result := TExcepInfo(GetRecordPtr^).bstrDescription;
end;
procedure __TExcepInfo__Wrapper.setbstrHelpFile(const val : WideString);
begin
TExcepInfo(GetRecordPtr^).bstrHelpFile := val;
end;
function __TExcepInfo__Wrapper.getbstrHelpFile : WideString;
begin
result := TExcepInfo(GetRecordPtr^).bstrHelpFile;
end;
procedure __TExcepInfo__Wrapper.setdwHelpContext(const val : Longint);
begin
TExcepInfo(GetRecordPtr^).dwHelpContext := val;
end;
function __TExcepInfo__Wrapper.getdwHelpContext : Longint;
begin
result := TExcepInfo(GetRecordPtr^).dwHelpContext;
end;
procedure ____DispatchInvokeError__Wrapper(p0 : Integer;
const p1 : IDispatch);
var
__p1 : ^TExcepInfo;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
DispatchInvokeError(p0,__p1^);
end;

function ____HandleSafeCallException__Wrapper(p0 : TObject;
p1 : Pointer;
const p2 : IDispatch;
const p3 : WideString;
const p4 : WideString): HResult;
var
__p2 : ^TGUID;
__i2 : IDispatch;
begin
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
result := HandleSafeCallException(p0,p1,__p2^,p3,p4);
end;

function ____StringToGUID__Wrapper(const p0 : string): IDispatch;
var
__result : TGUID;
__wrapper : __TGUID__Wrapper;
begin
__result := StringToGUID(p0);
__wrapper := __TGUID__Wrapper.Create;
__wrapper.fR := __result;
result := IDispatch(__wrapper);
end;

function ____GUIDToString__Wrapper(const p0 : IDispatch): string;
var
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := GUIDToString(__p0^);
end;

function ____ProgIDToClassID__Wrapper(const p0 : string): IDispatch;
var
__result : TGUID;
__wrapper : __TGUID__Wrapper;
begin
__result := ProgIDToClassID(p0);
__wrapper := __TGUID__Wrapper.Create;
__wrapper.fR := __result;
result := IDispatch(__wrapper);
end;

function ____ClassIDToProgID__Wrapper(const p0 : IDispatch): string;
var
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := ClassIDToProgID(__p0^);
end;

procedure ____CreateRegKey__Wrapper(cArgs : integer; pArgs : PArgList);
begin
case cArgs of
3:
begin
CreateRegKey(OleVariant(pargs^[2]),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
4:
begin
CreateRegKey(OleVariant(pargs^[3]),OleVariant(pargs^[2]),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

procedure ____DeleteRegKey__Wrapper(cArgs : integer; pArgs : PArgList);
begin
case cArgs of
1:
begin
DeleteRegKey(OleVariant(pargs^[0]));
end;
2:
begin
DeleteRegKey(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

function ____GetRegStringValue__Wrapper(cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
2:
begin
result := GetRegStringValue(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
3:
begin
result := GetRegStringValue(OleVariant(pargs^[2]),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

function __TAutoObject__GetIDsOfNames__Wrapper(__Instance : TAutoObject;
const p0 : IDispatch;
p1 : Pointer;
p2 : Integer;
p3 : Integer;
p4 : Pointer): HResult;
var
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := __TAutoObject__(__Instance).GetIDsOfNames(__p0^,p1,p2,p3,p4);
end;

function __TAutoObject__Invoke__Wrapper(__Instance : TAutoObject;
p0 : Integer;
const p1 : IDispatch;
p2 : Integer;
p3 : Word;
var p4 : Word;
p5 : Pointer;
p6 : Pointer;
p7 : Pointer): HResult;
var
__p1 : ^TGUID;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
result := __TAutoObject__(__Instance).Invoke(p0,__p1^,p2,p3,p4,p5,p6,p7);
end;

function __TComClassManager__GetFactoryFromClassID__Wrapper(__Instance : TComClassManager;
const p0 : IDispatch): TComObjectFactory;
var
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := TComClassManager(__Instance).GetFactoryFromClassID(__p0^);
end;

function __TComObject__ObjQueryInterface__Wrapper(__Instance : TComObject;
const p0 : IDispatch;
var p1): HResult;
var
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := TComObject(__Instance).ObjQueryInterface(__p0^,p1);
end;


type __TExcepInfo__Wrapper__ = class(__TExcepInfo__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TExcepInfo__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTExcepInfoToVariant(var R : TExcepInfo) : OleVariant;
var
__rw : __TExcepInfo__Wrapper__;
begin
__rw := __TExcepInfo__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTExcepInfo(const V : OleVariant) : TExcepInfo;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TExcepInfo((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __TGUID__Wrapper__ = class(__TGUID__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TGUID__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTGUIDToVariant(var R : TGUID) : OleVariant;
var
__rw : __TGUID__Wrapper__;
begin
__rw := __TGUID__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTGUID(const V : OleVariant) : TGUID;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TGUID((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
function __DC__GetEOleException__HelpFile(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := EOleException(Instance).HelpFile;
end;

procedure __DC__SetEOleException__HelpFile(Instance : TObject; Params : PVariantArgList);
begin
EOleException(Instance).HelpFile:=OleVariant(Params^[0]);
end;

function __DC__GetEOleException__Source(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := EOleException(Instance).Source;
end;

procedure __DC__SetEOleException__Source(Instance : TObject; Params : PVariantArgList);
begin
EOleException(Instance).Source:=OleVariant(Params^[0]);
end;

function __DC__GetEOleSysError__ErrorCode(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := EOleSysError(Instance).ErrorCode;
end;

procedure __DC__SetEOleSysError__ErrorCode(Instance : TObject; Params : PVariantArgList);
begin
EOleSysError(Instance).ErrorCode:=OleVariant(Params^[0]);
end;

function __DC__GetTAutoIntfObject__DispIID(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __TGUID__Wrapper;
begin
__wrapper := __TGUID__Wrapper.Create;
__wrapper.fR := TAutoIntfObject(Instance).DispIID;
result := IUnknown(__wrapper) as IDispatch;
end;

function __DC__GetTAutoObjectFactory__EventIID(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __TGUID__Wrapper;
begin
__wrapper := __TGUID__Wrapper.Create;
__wrapper.fR := TAutoObjectFactory(Instance).EventIID;
result := IUnknown(__wrapper) as IDispatch;
end;

function __DC__GetTComObject__Factory(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TComObject(Instance).Factory);
end;

function __DC__GetTComObject__RefCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComObject(Instance).RefCount;
end;

function __DC__GetTComObjectFactory__ClassID(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __TGUID__Wrapper;
begin
__wrapper := __TGUID__Wrapper.Create;
__wrapper.fR := TComObjectFactory(Instance).ClassID;
result := IUnknown(__wrapper) as IDispatch;
end;

function __DC__GetTComObjectFactory__ClassName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComObjectFactory(Instance).ClassName;
end;

function __DC__GetTComObjectFactory__ComServer(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TComObjectFactory(Instance).ComServer);
end;

function __DC__GetTComObjectFactory__Description(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComObjectFactory(Instance).Description;
end;

function __DC__GetTComObjectFactory__ErrorIID(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __TGUID__Wrapper;
begin
__wrapper := __TGUID__Wrapper.Create;
__wrapper.fR := TComObjectFactory(Instance).ErrorIID;
result := IUnknown(__wrapper) as IDispatch;
end;

procedure __DC__SetTComObjectFactory__ErrorIID(Instance : TObject; Params : PVariantArgList);
var
__idisp:IDispatch;
__iwrapper:IDCRecordWrapper;
begin
__idisp:=DCVarToInterface(OleVariant(Params^[0]));
if __idisp=nil then exit;
__idisp.QueryInterface(IDCRecordWrapper, __iwrapper);
TComObjectFactory(Instance).ErrorIID:=TGUID(__iwrapper.GetRecordPtr^);
end;

function __DC__GetTComObjectFactory__LicString(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComObjectFactory(Instance).LicString;
end;

procedure __DC__SetTComObjectFactory__LicString(Instance : TObject; Params : PVariantArgList);
begin
TComObjectFactory(Instance).LicString:=OleVariant(Params^[0]);
end;

function __DC__GetTComObjectFactory__ProgID(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComObjectFactory(Instance).ProgID;
end;

function __DC__GetTComObjectFactory__Instancing(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComObjectFactory(Instance).Instancing;
end;

function __DC__GetTComObjectFactory__ShowErrors(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComObjectFactory(Instance).ShowErrors;
end;

procedure __DC__SetTComObjectFactory__ShowErrors(Instance : TObject; Params : PVariantArgList);
begin
TComObjectFactory(Instance).ShowErrors:=OleVariant(Params^[0]);
end;

function __DC__GetTComObjectFactory__SupportsLicensing(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComObjectFactory(Instance).SupportsLicensing;
end;

procedure __DC__SetTComObjectFactory__SupportsLicensing(Instance : TObject; Params : PVariantArgList);
begin
TComObjectFactory(Instance).SupportsLicensing:=OleVariant(Params^[0]);
end;

function __DC__GetTComObjectFactory__ThreadingModel(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComObjectFactory(Instance).ThreadingModel;
end;

function __DC__GetTComServerObject__HelpFileName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComServerObject(Instance).HelpFileName;
end;

procedure __DC__SetTComServerObject__HelpFileName(Instance : TObject; Params : PVariantArgList);
begin
TComServerObject(Instance).HelpFileName:=OleVariant(Params^[0]);
end;

function __DC__GetTComServerObject__ServerFileName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComServerObject(Instance).ServerFileName;
end;

function __DC__GetTComServerObject__ServerKey(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComServerObject(Instance).ServerKey;
end;

function __DC__GetTComServerObject__ServerName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComServerObject(Instance).ServerName;
end;

function __DC__GetTComServerObject__StartSuspended(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TComServerObject(Instance).StartSuspended;
end;

procedure __RegisterProps;
begin
RegisterProperty(EOleException,'HelpFile',__DC__GetEOleException__HelpFile,__DC__SetEOleException__HelpFile);
RegisterProperty(EOleException,'Source',__DC__GetEOleException__Source,__DC__SetEOleException__Source);
RegisterProperty(EOleSysError,'ErrorCode',__DC__GetEOleSysError__ErrorCode,__DC__SetEOleSysError__ErrorCode);
RegisterProperty(TAutoIntfObject,'DispIID',__DC__GetTAutoIntfObject__DispIID,nil);
RegisterProperty(TAutoObjectFactory,'EventIID',__DC__GetTAutoObjectFactory__EventIID,nil);
RegisterProperty(TComObject,'Factory',__DC__GetTComObject__Factory,nil);
RegisterProperty(TComObject,'RefCount',__DC__GetTComObject__RefCount,nil);
RegisterProperty(TComObjectFactory,'ClassID',__DC__GetTComObjectFactory__ClassID,nil);
RegisterProperty(TComObjectFactory,'ClassName',__DC__GetTComObjectFactory__ClassName,nil);
RegisterProperty(TComObjectFactory,'ComServer',__DC__GetTComObjectFactory__ComServer,nil);
RegisterProperty(TComObjectFactory,'Description',__DC__GetTComObjectFactory__Description,nil);
RegisterProperty(TComObjectFactory,'ErrorIID',__DC__GetTComObjectFactory__ErrorIID,__DC__SetTComObjectFactory__ErrorIID);
RegisterProperty(TComObjectFactory,'LicString',__DC__GetTComObjectFactory__LicString,__DC__SetTComObjectFactory__LicString);
RegisterProperty(TComObjectFactory,'ProgID',__DC__GetTComObjectFactory__ProgID,nil);
RegisterProperty(TComObjectFactory,'Instancing',__DC__GetTComObjectFactory__Instancing,nil);
RegisterProperty(TComObjectFactory,'ShowErrors',__DC__GetTComObjectFactory__ShowErrors,__DC__SetTComObjectFactory__ShowErrors);
RegisterProperty(TComObjectFactory,'SupportsLicensing',__DC__GetTComObjectFactory__SupportsLicensing,__DC__SetTComObjectFactory__SupportsLicensing);
RegisterProperty(TComObjectFactory,'ThreadingModel',__DC__GetTComObjectFactory__ThreadingModel,nil);
RegisterProperty(TComServerObject,'HelpFileName',__DC__GetTComServerObject__HelpFileName,__DC__SetTComServerObject__HelpFileName);
RegisterProperty(TComServerObject,'ServerFileName',__DC__GetTComServerObject__ServerFileName,nil);
RegisterProperty(TComServerObject,'ServerKey',__DC__GetTComServerObject__ServerKey,nil);
RegisterProperty(TComServerObject,'ServerName',__DC__GetTComServerObject__ServerName,nil);
RegisterProperty(TComServerObject,'StartSuspended',__DC__GetTComServerObject__StartSuspended,nil);
end;

function __DC__GetComObj__CoInitFlags(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := ComObj.CoInitFlags;
end;

procedure __DC__SetComObj__CoInitFlags(Instance : TObject; Params : PVariantArgList);
begin
ComObj.CoInitFlags:=OleVariant(Params^[0]);
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('CoInitFlags',__DC__GetComObj__CoInitFlags,__DC__SetComObj__CoInitFlags));
end;

procedure __UnregisterVars;
begin
__RegisteredVars.Free;
end;

const __ConstNames0 : array[0..7] of string = (
'ciInternal'
,'ciSingleInstance'
,'ciMultiInstance'
,'tmSingle'
,'tmApartment'
,'tmFree'
,'tmBoth'
,'tmNeutral'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,ciInternal));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,ciSingleInstance));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,ciMultiInstance));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,tmSingle));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,tmApartment));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,tmFree));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,tmBoth));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,tmNeutral));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..12] of TClass = (
EOleError,
EOleException,
EOleRegistrationError,
EOleSysError,
TAutoIntfObject,
TAutoObject,
TAutoObjectFactory,
TComClassManager,
TComObject,
TComObjectFactory,
TComServerObject,
TTypedComObject,
TTypedComObjectFactory
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
const MethodNames : array[0..14] of string = (
'DispatchInvokeError'
,'HandleSafeCallException'
,'OleError'
,'OleCheck'
,'StringToGUID'
,'GUIDToString'
,'ProgIDToClassID'
,'ClassIDToProgID'
,'CreateRegKey'
,'DeleteRegKey'
,'GetRegStringValue'
,'RegisterComServer'
,'RegisterAsService'
,'CreateClassID'
,'ComClassManager'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T1),[
TypeInfo(Integer),
TypeInfo(IDispatch)],Addr(____DispatchInvokeError__Wrapper),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T2),[
TypeInfo(TObject),
TypeInfoPointer,
TypeInfo(IDispatch),
TypeInfo(WideString),
TypeInfo(WideString),TypeInfo(HResult)],Addr(____HandleSafeCallException__Wrapper),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T7),[
TypeInfo(HResult)],Addr(OleError),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T8),[
TypeInfo(HResult)],Addr(OleCheck),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T9),[
TypeInfo(string),TypeInfo(IDispatch)],Addr(____StringToGUID__Wrapper),cRegister);

RegisterProc(nil,MethodNames[5],mtProc,TypeInfo(_T10),[
TypeInfo(IDispatch),TypeInfo(string)],Addr(____GUIDToString__Wrapper),cRegister);

RegisterProc(nil,MethodNames[6],mtProc,TypeInfo(_T11),[
TypeInfo(string),TypeInfo(IDispatch)],Addr(____ProgIDToClassID__Wrapper),cRegister);

RegisterProc(nil,MethodNames[7],mtProc,TypeInfo(_T12),[
TypeInfo(IDispatch),TypeInfo(string)],Addr(____ClassIDToProgID__Wrapper),cRegister);

RegisterProc(nil,MethodNames[8],mtScriptProc,TypeInfo(_T13),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(DWord)],Addr(____CreateRegKey__Wrapper),cRegister);

RegisterProc(nil,MethodNames[9],mtScriptProc,TypeInfo(_T14),[
TypeInfo(string),
TypeInfo(DWord)],Addr(____DeleteRegKey__Wrapper),cRegister);

RegisterProc(nil,MethodNames[10],mtScriptProc,TypeInfo(_T15),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(DWord),TypeInfo(string)],Addr(____GetRegStringValue__Wrapper),cRegister);

RegisterProc(nil,MethodNames[11],mtProc,TypeInfo(_T17),[
TypeInfo(string)],Addr(RegisterComServer),cRegister);

RegisterProc(nil,MethodNames[12],mtProc,TypeInfo(_T18),[
TypeInfo(string),
TypeInfo(string)],Addr(RegisterAsService),cRegister);

RegisterProc(nil,MethodNames[13],mtProc,TypeInfo(_T19),[TypeInfo(string)],Addr(CreateClassID),cRegister);

RegisterProc(nil,MethodNames[14],mtProc,TypeInfo(_T24),[TypeInfo(TComClassManager)],Addr(ComClassManager),cRegister);

RegisterProc(EOleException,'Create',mtConstructor,TypeInfo(_T25),[
TypeInfo(string),
TypeInfo(HResult),
TypeInfo(string),
TypeInfo(string),
TypeInfo(Integer)],Addr(EOleException.Create),cRegister);

RegisterProc(EOleSysError,'Create',mtConstructor,TypeInfo(_T26),[
TypeInfo(string),
TypeInfo(HResult),
TypeInfo(Integer)],Addr(EOleSysError.Create),cRegister);

//RegisterProc(TAutoObject,'GetIDsOfNames',mtMethod,TypeInfo(_T28),[TypeInfo(IDispatch),TypeInfoPointer,TypeInfo(Integer),TypeInfo(Integer),TypeInfoPointer,TypeInfo(HResult)], pointer(16),cRegister);
RegisterProc(TAutoObject,'GetIDsOfNames',mtMethod,TypeInfo(_T28),[TypeInfo(IDispatch),TypeInfoPointer,TypeInfo(Integer),TypeInfo(Integer),TypeInfoPointer,TypeInfo(HResult)],  getVMTProcAddr('TAutoObject','GetIDsOfNames',16),cRegister);


//RegisterProc(TAutoObject,'GetTypeInfo',mtMethod,TypeInfo(_T29),[TypeInfo(Integer),TypeInfo(Integer),TypeInfoUntyped,TypeInfo(HResult)], pointer(20),cStdCall);
RegisterProc(TAutoObject,'GetTypeInfo',mtMethod,TypeInfo(_T29),[TypeInfo(Integer),TypeInfo(Integer),TypeInfoUntyped,TypeInfo(HResult)],  getVMTProcAddr('TAutoObject','GetTypeInfo',20),cStdCall);


//RegisterProc(TAutoObject,'GetTypeInfoCount',mtMethod,TypeInfo(_T30),[TypeInfo(Integer),TypeInfo(HResult)], pointer(24),cStdCall);
RegisterProc(TAutoObject,'GetTypeInfoCount',mtMethod,TypeInfo(_T30),[TypeInfo(Integer),TypeInfo(HResult)],  getVMTProcAddr('TAutoObject','GetTypeInfoCount',24),cStdCall);


//RegisterProc(TAutoObject,'Invoke',mtMethod,TypeInfo(_T31),[TypeInfo(Integer),TypeInfo(IDispatch),TypeInfo(Integer),TypeInfo(Word),TypeInfo(Word),TypeInfoPointer,TypeInfoPointer,TypeInfoPointer,TypeInfo(HResult)], pointer(28),cRegister);
RegisterProc(TAutoObject,'Invoke',mtMethod,TypeInfo(_T31),[TypeInfo(Integer),TypeInfo(IDispatch),TypeInfo(Integer),TypeInfo(Word),TypeInfo(Word),TypeInfoPointer,TypeInfoPointer,TypeInfoPointer,TypeInfo(HResult)],  getVMTProcAddr('TAutoObject','Invoke',28),cRegister);


RegisterProc(TComClassManager,'Create',mtConstructor,TypeInfo(_T35),NoParams,Addr(TComClassManager.Create),cRegister);

RegRegisterMethod(TComClassManager,'GetFactoryFromClassID',TypeInfo(_T38),[
TypeInfo(IDispatch),TypeInfo(TComObjectFactory)],Addr(__TComClassManager__GetFactoryFromClassID__Wrapper));

RegisterProc(TComObject,'Create',mtConstructor,TypeInfo(_T39),NoParams,Addr(TComObject.Create),cRegister);

//RegRegisterMethod(TComObject,'Initialize',TypeInfo(_T42),NoParams, pointer(0));
RegRegisterMethod(TComObject,'Initialize',TypeInfo(_T42),NoParams,  getVMTProcAddr('TComObject','Initialize',0));


RegisterProc(TComObject,'ObjAddRef',mtMethod,TypeInfo(_T43),[TypeInfo(Integer)], pointer(4),cStdCall);

RegisterProc(TComObject,'ObjQueryInterface',mtMethod,TypeInfo(_T44),[
TypeInfo(IDispatch),
TypeInfoUntyped,TypeInfo(HResult)], pointer(8),cRegister);

RegisterProc(TComObject,'ObjRelease',mtMethod,TypeInfo(_T45),[TypeInfo(Integer)], pointer(12),cStdCall);

//RegRegisterMethod(TComObjectFactory,'GetProgID',TypeInfo(_T46),[TypeInfo(string)], pointer(0));
RegRegisterMethod(TComObjectFactory,'GetProgID',TypeInfo(_T46),[TypeInfo(string)],  getVMTProcAddr('TComObjectFactory','GetProgID',0));


//RegRegisterMethod(TComObjectFactory,'GetLicenseString',TypeInfo(_T47),[TypeInfo(WideString)], pointer(4));
RegRegisterMethod(TComObjectFactory,'GetLicenseString',TypeInfo(_T47),[TypeInfo(WideString)],  getVMTProcAddr('TComObjectFactory','GetLicenseString',4));


//RegRegisterMethod(TComObjectFactory,'HasMachineLicense',TypeInfo(_T48),[TypeInfo(Boolean)], pointer(8));
RegRegisterMethod(TComObjectFactory,'HasMachineLicense',TypeInfo(_T48),[TypeInfo(Boolean)],  getVMTProcAddr('TComObjectFactory','HasMachineLicense',8));


//RegRegisterMethod(TComObjectFactory,'ValidateUserLicense',TypeInfo(_T49),[TypeInfo(WideString),TypeInfo(Boolean)], pointer(12));
RegRegisterMethod(TComObjectFactory,'ValidateUserLicense',TypeInfo(_T49),[TypeInfo(WideString),TypeInfo(Boolean)],  getVMTProcAddr('TComObjectFactory','ValidateUserLicense',12));


RegRegisterMethod(TComObjectFactory,'RegisterClassObject',TypeInfo(_T52),NoParams,Addr(TComObjectFactory.RegisterClassObject));

//RegRegisterMethod(TComObjectFactory,'UpdateRegistry',TypeInfo(_T53),[TypeInfo(Boolean)], pointer(20));
RegRegisterMethod(TComObjectFactory,'UpdateRegistry',TypeInfo(_T53),[TypeInfo(Boolean)],  getVMTProcAddr('TComObjectFactory','UpdateRegistry',20));


//RegRegisterMethod(TComServerObject,'CountObject',TypeInfo(_T54),[TypeInfo(Boolean),TypeInfo(Integer)], pointer(0));
RegRegisterMethod(TComServerObject,'CountObject',TypeInfo(_T54),[TypeInfo(Boolean),TypeInfo(Integer)],  getVMTProcAddr('TComServerObject','CountObject',0));


//RegRegisterMethod(TComServerObject,'CountFactory',TypeInfo(_T55),[TypeInfo(Boolean),TypeInfo(Integer)], pointer(4));
RegRegisterMethod(TComServerObject,'CountFactory',TypeInfo(_T55),[TypeInfo(Boolean),TypeInfo(Integer)],  getVMTProcAddr('TComServerObject','CountFactory',4));


//RegRegisterMethod(TComServerObject,'GetHelpFileName',TypeInfo(_T56),[TypeInfo(string)], pointer(8));
RegRegisterMethod(TComServerObject,'GetHelpFileName',TypeInfo(_T56),[TypeInfo(string)],  getVMTProcAddr('TComServerObject','GetHelpFileName',8));


//RegRegisterMethod(TComServerObject,'GetServerFileName',TypeInfo(_T57),[TypeInfo(string)], pointer(12));
RegRegisterMethod(TComServerObject,'GetServerFileName',TypeInfo(_T57),[TypeInfo(string)],  getVMTProcAddr('TComServerObject','GetServerFileName',12));


//RegRegisterMethod(TComServerObject,'GetServerKey',TypeInfo(_T58),[TypeInfo(string)], pointer(16));
RegRegisterMethod(TComServerObject,'GetServerKey',TypeInfo(_T58),[TypeInfo(string)],  getVMTProcAddr('TComServerObject','GetServerKey',16));


//RegRegisterMethod(TComServerObject,'GetServerName',TypeInfo(_T59),[TypeInfo(string)], pointer(20));
RegRegisterMethod(TComServerObject,'GetServerName',TypeInfo(_T59),[TypeInfo(string)],  getVMTProcAddr('TComServerObject','GetServerName',20));


//RegRegisterMethod(TComServerObject,'GetStartSuspended',TypeInfo(_T60),[TypeInfo(Boolean)], pointer(24));
RegRegisterMethod(TComServerObject,'GetStartSuspended',TypeInfo(_T60),[TypeInfo(Boolean)],  getVMTProcAddr('TComServerObject','GetStartSuspended',24));


//RegRegisterMethod(TComServerObject,'SetHelpFileName',TypeInfo(_T62),[TypeInfo(string)], pointer(32));
RegRegisterMethod(TComServerObject,'SetHelpFileName',TypeInfo(_T62),[TypeInfo(string)],  getVMTProcAddr('TComServerObject','SetHelpFileName',32));


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
RegisterProc(nil,'DispatchInvoke',mtProc,TypeInfo(_T0),[
TypeInfo(IDispatch),
TypeInfoPointer,
TypeInfoPointer,
TypeInfoPointer,
TypeInfoPointer],Addr(DispatchInvoke),cRegister);

RegisterProc(nil,'CreateOleObject',mtProc,TypeInfo(_T5),[
TypeInfo(string),TypeInfo(IDispatch)],Addr(CreateOleObject),cRegister);

RegisterProc(nil,'GetActiveOleObject',mtProc,TypeInfo(_T6),[
TypeInfo(string),TypeInfo(IDispatch)],Addr(GetActiveOleObject),cRegister);

RegisterProc(nil,'StringToLPOLESTR',mtProc,TypeInfo(_T16),[
TypeInfo(string),TypeInfoPWideChar],Addr(StringToLPOLESTR),cRegister);

RegisterProc(nil,'GetDispatchPropValue',mtProc,TypeInfo(_T22),[
TypeInfo(IDispatch),
TypeInfo(Integer),TypeInfo(OleVariant)],Addr(GetDispatchPropValue),cRegister);

RegisterProc(nil,'SetDispatchPropValue',mtProc,TypeInfo(_T23),[
TypeInfo(IDispatch),
TypeInfo(Integer),
TypeInfo(OleVariant)],Addr(SetDispatchPropValue),cRegister);

//RegRegisterMethod(TAutoObject,'EventSinkChanged',TypeInfo(_T32),[TypeInfo(IUnknown)], pointer(32));
RegRegisterMethod(TAutoObject,'EventSinkChanged',TypeInfo(_T32),[TypeInfo(IUnknown)],  getVMTProcAddr('TAutoObject','EventSinkChanged',32));


RegRegisterMethod(TComClassManager,'ForEachFactory',TypeInfo(_T36),[
TypeInfo(TComServerObject),
TypeInfo(TFactoryProc)],Addr(TComClassManager.ForEachFactory));

//RegRegisterMethod(TComClassManager,'GetFactoryFromClass',TypeInfo(_T37),[
//TypeInfo(TClass),TypeInfo(TComObjectFactory)],Addr(TComClassManager.GetFactoryFromClass));

RegisterProc(TComObject,'CreateAggregated',mtConstructor,TypeInfo(_T40),[
TypeInfo(IUnknown)],Addr(TComObject.CreateAggregated),cRegister);

RegisterProc(TComObject,'CreateFromFactory',mtConstructor,TypeInfo(_T41),[
TypeInfo(TComObjectFactory),
TypeInfo(IUnknown)],Addr(TComObject.CreateFromFactory),cRegister);

//RegRegisterMethod(TComObjectFactory,'CreateComObject',TypeInfo(_T51),[TypeInfo(IUnknown),TypeInfo(TComObject)], pointer(16));
//RegRegisterMethod(TComObjectFactory,'CreateComObject',TypeInfo(_T51),[TypeInfo(IUnknown),TypeInfo(TComObject)],  getVMTProcAddr('TComObjectFactory','CreateComObject',16));


//RegRegisterMethod(TComServerObject,'GetTypeLib',TypeInfo(_T61),[TypeInfo(ITypeLib)], pointer(28));
RegRegisterMethod(TComServerObject,'GetTypeLib',TypeInfo(_T61),[TypeInfo(ITypeLib)],  getVMTProcAddr('TComServerObject','GetTypeLib',28));


RegRegisterMethod(TTypedComObjectFactory,'GetInterfaceTypeInfo',TypeInfo(_T64),[
TypeInfo(Integer),TypeInfo(ITypeInfo)],Addr(TTypedComObjectFactory.GetInterfaceTypeInfo));

RegisterEvent(TypeInfo(TConnectEvent),[
TypeInfo(IUnknown),
TypeInfo(Boolean)]);

RegisterEvent(TypeInfo(TFactoryProc),[
TypeInfo(TComObjectFactory)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
__RegisterVars;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnRegisterVars;
__UnregisterProcs;
end.