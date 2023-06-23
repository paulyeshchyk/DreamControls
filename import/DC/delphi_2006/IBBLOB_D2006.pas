{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IBBLOB_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  Windows,
  Types,
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  SysUtils,
  Classes,
  IBHeader,
  IBErrorCodes,
  IBExternals,
  DB,
  IB,
  IBDatabase,
  IBIntf,
  IBUtils,
  IBBlob;
function ConvertTISC_QUADToVariant(var R : TISC_QUAD) : OleVariant;
function ConvertVariantToTISC_QUAD(const V : OleVariant) : TISC_QUAD;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TISC_QUAD__Wrapper = class(TDCRecordWrapper)
private
fR : TISC_QUAD;
public
function GetRecordPtr : pointer; override;
published
procedure setgds_quad_high(const val : ISC_LONG);
function getgds_quad_high : ISC_LONG;
property gds_quad_high : ISC_LONG read getgds_quad_high write setgds_quad_high;
procedure setgds_quad_low(const val : UISC_LONG);
function getgds_quad_low : UISC_LONG;
property gds_quad_low : UISC_LONG read getgds_quad_low write setgds_quad_low;
end;
type
_T0 = procedure (p0 : PISC_BLOB_HANDLE;
var p1 : Long;
var p2 : Long;
var p3 : Long;
var p4 : Short) of object;

{_T1 = procedure (p0 : PISC_BLOB_HANDLE;
p1 : PChar;
p2 : Long) of object;}

{_T2 = procedure (p0 : PISC_BLOB_HANDLE;
p1 : PChar;
p2 : Long) of object;}

_T3 = procedure  of object;

_T4 = function (p0 : ISC_STATUS;
p1 : Boolean): ISC_STATUS of object;

_T5 = _T3;

_T6 = _T3;

_T7 = _T3;

_T8 = _T3;

_T9 = procedure (p0 : string) of object;

_T10 = procedure (p0 : TStream) of object;

_T11 = _T9;

_T12 = _T10;

_T13 = _T3;

function __TISC_QUAD__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TISC_QUAD__Wrapper.setgds_quad_high(const val : ISC_LONG);
begin
TISC_QUAD(GetRecordPtr^).gds_quad_high := val;
end;
function __TISC_QUAD__Wrapper.getgds_quad_high : ISC_LONG;
begin
result := TISC_QUAD(GetRecordPtr^).gds_quad_high;
end;
procedure __TISC_QUAD__Wrapper.setgds_quad_low(const val : UISC_LONG);
begin
TISC_QUAD(GetRecordPtr^).gds_quad_low := val;
end;
function __TISC_QUAD__Wrapper.getgds_quad_low : UISC_LONG;
begin
result := TISC_QUAD(GetRecordPtr^).gds_quad_low;
end;

type __TISC_QUAD__Wrapper__ = class(__TISC_QUAD__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TISC_QUAD__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTISC_QUADToVariant(var R : TISC_QUAD) : OleVariant;
var
__rw : __TISC_QUAD__Wrapper__;
begin
__rw := __TISC_QUAD__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTISC_QUAD(const V : OleVariant) : TISC_QUAD;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TISC_QUAD((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
function __DC__GetTIBBlobStream__Handle(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := PointerToVariant(TIBBlobStream(Instance).Handle);
end;

function __DC__GetTIBBlobStream__BlobID(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __TISC_QUAD__Wrapper;
begin
__wrapper := __TISC_QUAD__Wrapper.Create;
__wrapper.fR := TIBBlobStream(Instance).BlobID;
result := IUnknown(__wrapper) as IDispatch;
end;

procedure __DC__SetTIBBlobStream__BlobID(Instance : TObject; Params : PVariantArgList);
var
__idisp:IDispatch;
__iwrapper:IDCRecordWrapper;
begin
__idisp:=DCVarToInterface(OleVariant(Params^[0]));
if __idisp=nil then exit;
__idisp.QueryInterface(IDCRecordWrapper, __iwrapper);
TIBBlobStream(Instance).BlobID:=TISC_QUAD(__iwrapper.GetRecordPtr^);
end;

function __DC__GetTIBBlobStream__BlobMaxSegmentSize(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBBlobStream(Instance).BlobMaxSegmentSize;
end;

function __DC__GetTIBBlobStream__BlobNumSegments(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBBlobStream(Instance).BlobNumSegments;
end;

function __DC__GetTIBBlobStream__BlobSize(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBBlobStream(Instance).BlobSize;
end;

function __DC__GetTIBBlobStream__BlobType(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBBlobStream(Instance).BlobType;
end;

function __DC__GetTIBBlobStream__Database(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIBBlobStream(Instance).Database);
end;

procedure __DC__SetTIBBlobStream__Database(Instance : TObject; Params : PVariantArgList);
begin
TIBBlobStream(Instance).Database:=TIBDatabase(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIBBlobStream__DBHandle(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := PointerToVariant(TIBBlobStream(Instance).DBHandle);
end;

function __DC__GetTIBBlobStream__Mode(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBBlobStream(Instance).Mode;
end;

procedure __DC__SetTIBBlobStream__Mode(Instance : TObject; Params : PVariantArgList);
begin
TIBBlobStream(Instance).Mode:=OleVariant(Params^[0]);
end;

function __DC__GetTIBBlobStream__Modified(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBBlobStream(Instance).Modified;
end;

function __DC__GetTIBBlobStream__Transaction(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIBBlobStream(Instance).Transaction);
end;

procedure __DC__SetTIBBlobStream__Transaction(Instance : TObject; Params : PVariantArgList);
begin
TIBBlobStream(Instance).Transaction:=TIBTransaction(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIBBlobStream__TRHandle(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := PointerToVariant(TIBBlobStream(Instance).TRHandle);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIBBlobStream,'Handle',__DC__GetTIBBlobStream__Handle,nil);
RegisterProperty(TIBBlobStream,'BlobID',__DC__GetTIBBlobStream__BlobID,__DC__SetTIBBlobStream__BlobID);
RegisterProperty(TIBBlobStream,'BlobMaxSegmentSize',__DC__GetTIBBlobStream__BlobMaxSegmentSize,nil);
RegisterProperty(TIBBlobStream,'BlobNumSegments',__DC__GetTIBBlobStream__BlobNumSegments,nil);
RegisterProperty(TIBBlobStream,'BlobSize',__DC__GetTIBBlobStream__BlobSize,nil);
RegisterProperty(TIBBlobStream,'BlobType',__DC__GetTIBBlobStream__BlobType,nil);
RegisterProperty(TIBBlobStream,'Database',__DC__GetTIBBlobStream__Database,__DC__SetTIBBlobStream__Database);
RegisterProperty(TIBBlobStream,'DBHandle',__DC__GetTIBBlobStream__DBHandle,nil);
RegisterProperty(TIBBlobStream,'Mode',__DC__GetTIBBlobStream__Mode,__DC__SetTIBBlobStream__Mode);
RegisterProperty(TIBBlobStream,'Modified',__DC__GetTIBBlobStream__Modified,nil);
RegisterProperty(TIBBlobStream,'Transaction',__DC__GetTIBBlobStream__Transaction,__DC__SetTIBBlobStream__Transaction);
RegisterProperty(TIBBlobStream,'TRHandle',__DC__GetTIBBlobStream__TRHandle,nil);
end;

const __ConstNames0 : array[0..0] of string = (
'DefaultBlobSegmentSize'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,DefaultBlobSegmentSize));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..0] of TClass = (
TIBBlobStream
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..0] of string = (
'GetBlobInfo'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfoPointer,
TypeInfo(Long),
TypeInfo(Long),
TypeInfo(Long),
TypeInfo(Short)],Addr(GetBlobInfo),cRegister);

RegisterProc(TIBBlobStream,'Create',mtConstructor,TypeInfo(_T3),NoParams,Addr(TIBBlobStream.Create),cRegister);

RegRegisterMethod(TIBBlobStream,'Call',TypeInfo(_T4),[
TypeInfo(ISC_STATUS),
TypeInfo(Boolean),TypeInfo(ISC_STATUS)],Addr(TIBBlobStream.Call));

RegRegisterMethod(TIBBlobStream,'Cancel',TypeInfo(_T5),NoParams,Addr(TIBBlobStream.Cancel));

RegRegisterMethod(TIBBlobStream,'CheckReadable',TypeInfo(_T6),NoParams,Addr(TIBBlobStream.CheckReadable));

RegRegisterMethod(TIBBlobStream,'CheckWritable',TypeInfo(_T7),NoParams,Addr(TIBBlobStream.CheckWritable));

RegRegisterMethod(TIBBlobStream,'Finalize',TypeInfo(_T8),NoParams,Addr(TIBBlobStream.Finalize));

RegRegisterMethod(TIBBlobStream,'LoadFromFile',TypeInfo(_T9),[
TypeInfo(string)],Addr(TIBBlobStream.LoadFromFile));

RegRegisterMethod(TIBBlobStream,'LoadFromStream',TypeInfo(_T10),[
TypeInfo(TStream)],Addr(TIBBlobStream.LoadFromStream));

RegRegisterMethod(TIBBlobStream,'SaveToFile',TypeInfo(_T11),[
TypeInfo(string)],Addr(TIBBlobStream.SaveToFile));

RegRegisterMethod(TIBBlobStream,'SaveToStream',TypeInfo(_T12),[
TypeInfo(TStream)],Addr(TIBBlobStream.SaveToStream));

RegRegisterMethod(TIBBlobStream,'Truncate',TypeInfo(_T13),NoParams,Addr(TIBBlobStream.Truncate));

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
{RegisterProc(nil,'ReadBlob',mtProc,TypeInfo(_T1),[
TypeInfoPointer,
TypeInfoPChar,
TypeInfo(Long)],Addr(ReadBlob),cRegister)}

{RegisterProc(nil,'WriteBlob',mtProc,TypeInfo(_T2),[
TypeInfoPointer,
TypeInfoPChar,
TypeInfo(Long)],Addr(WriteBlob),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.