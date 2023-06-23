{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit NSTOIS_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  Types,
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  SysUtils,
  Windows,
  Classes,
  Isapi2,
  Nsapi,
  SyncObjs,
  NSToIS;
function ConvertTHSE_VERSION_INFOToVariant(var R : THSE_VERSION_INFO) : OleVariant;
function ConvertVariantToTHSE_VERSION_INFO(const V : OleVariant) : THSE_VERSION_INFO;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __THSE_VERSION_INFO__Wrapper = class(TDCRecordWrapper)
private
fR : THSE_VERSION_INFO;
public
function GetRecordPtr : pointer; override;
published
procedure setdwExtensionVersion(const val : DWORD);
function getdwExtensionVersion : DWORD;
property dwExtensionVersion : DWORD read getdwExtensionVersion write setdwExtensionVersion;
end;
type
_T0 = procedure (const p0 : string;
const p1 : Array of Const) of object;

_T1 = function (const p0 : string): string of object;

_T2 = _T1;

_T3 = procedure  of object;

_T4 = _T3;

_T5 = procedure (p0 : TISAPIApplicationList;
const p1 : string) of object;

_T6 = _T3;

_T7 = procedure (p0 : Boolean) of object;

_T8 = _T3;

_T9 = function (const p0 : string): TISAPIApplication of object;

{_T10 = function (p0 : PPblock;
p1 : PSession;
p2 : PRequest): Integer of object;}

_T11 = _T0;

{_T12 = procedure (p0 : PPblock;
p1 : PSession;
p2 : PRequest;
p3 : TISAPIApplication) of object;}

_T13 = _T3;

function __THSE_VERSION_INFO__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __THSE_VERSION_INFO__Wrapper.setdwExtensionVersion(const val : DWORD);
begin
THSE_VERSION_INFO(GetRecordPtr^).dwExtensionVersion := val;
end;
function __THSE_VERSION_INFO__Wrapper.getdwExtensionVersion : DWORD;
begin
result := THSE_VERSION_INFO(GetRecordPtr^).dwExtensionVersion;
end;

type __THSE_VERSION_INFO__Wrapper__ = class(__THSE_VERSION_INFO__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __THSE_VERSION_INFO__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTHSE_VERSION_INFOToVariant(var R : THSE_VERSION_INFO) : OleVariant;
var
__rw : __THSE_VERSION_INFO__Wrapper__;
begin
__rw := __THSE_VERSION_INFO__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTHSE_VERSION_INFO(const V : OleVariant) : THSE_VERSION_INFO;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := THSE_VERSION_INFO((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
function __DC__GetTISAPIApplication__VersionInfo(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __THSE_VERSION_INFO__Wrapper;
begin
__wrapper := __THSE_VERSION_INFO__Wrapper.Create;
__wrapper.fR := TISAPIApplication(Instance).VersionInfo;
result := IUnknown(__wrapper) as IDispatch;
end;

procedure __RegisterProps;
begin
RegisterProperty(TISAPIApplication,'VersionInfo',__DC__GetTISAPIApplication__VersionInfo,nil);
end;

function __DC__GetNSToIS__ISAPIApplicationList(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(NSToIS.ISAPIApplicationList);
end;

procedure __DC__SetNSToIS__ISAPIApplicationList(Instance : TObject; Params : PVariantArgList);
begin
TObject(NSToIS.ISAPIApplicationList):=(VarToObject(OleVariant(Params^[0])));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('ISAPIApplicationList',__DC__GetNSToIS__ISAPIApplicationList,__DC__SetNSToIS__ISAPIApplicationList));
end;

procedure __UnregisterVars;
begin
__RegisteredVars.Free;
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..3] of TClass = (
EISAPIException,
TISAPIApplication,
TISAPIApplicationList,
TISAPISession
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..4] of string = (
'LogMessage'
,'UnixPathToDosPath'
,'DosPathToUnixPath'
,'InitISAPIApplicationList'
,'DoneISAPIAPplicationList'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(string),
TypeInfoArrayOfConst],Addr(LogMessage),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[
TypeInfo(string),TypeInfo(string)],Addr(UnixPathToDosPath),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfo(string),TypeInfo(string)],Addr(DosPathToUnixPath),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T3),NoParams,Addr(InitISAPIApplicationList),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T4),NoParams,Addr(DoneISAPIAPplicationList),cRegister);

RegisterProc(TISAPIApplication,'Create',mtConstructor,TypeInfo(_T5),[
TypeInfo(TISAPIApplicationList),
TypeInfo(string)],Addr(TISAPIApplication.Create),cRegister);

RegRegisterMethod(TISAPIApplication,'Load',TypeInfo(_T6),NoParams,Addr(TISAPIApplication.Load));

RegRegisterMethod(TISAPIApplication,'Unload',TypeInfo(_T7),[
TypeInfo(Boolean)],Addr(TISAPIApplication.Unload));

RegisterProc(TISAPIApplicationList,'Create',mtConstructor,TypeInfo(_T8),NoParams,Addr(TISAPIApplicationList.Create),cRegister);

RegRegisterMethod(TISAPIApplicationList,'LoadApplication',TypeInfo(_T9),[
TypeInfo(string),TypeInfo(TISAPIApplication)],Addr(TISAPIApplicationList.LoadApplication));

RegRegisterMethod(TISAPIApplicationList,'LogMessage',TypeInfo(_T11),[
TypeInfo(string),
TypeInfoArrayOfConst],Addr(TISAPIApplicationList.LogMessage));

RegRegisterMethod(TISAPISession,'ProcessExtension',TypeInfo(_T13),NoParams,Addr(TISAPISession.ProcessExtension));

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
{RegRegisterMethod(TISAPIApplicationList,'InitLog',TypeInfo(_T10),[
TypeInfoPointer,
TypeInfoPointer,
TypeInfoPointer,TypeInfo(Integer)],Addr(TISAPIApplicationList.InitLog))}

{RegisterProc(TISAPISession,'Create',mtConstructor,TypeInfo(_T12),[
TypeInfoPointer,
TypeInfoPointer,
TypeInfoPointer,
TypeInfo(TISAPIApplication)],Addr(TISAPISession.Create),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
__RegisterVars;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnRegisterVars;
__UnregisterProcs;
end.