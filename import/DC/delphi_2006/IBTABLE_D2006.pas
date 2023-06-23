{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IBTABLE_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  Variants,
  Windows,
  IBExternals,
  IBBlob,
  IBIntf,
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  SysUtils,
  Classes,
  DB,
  IB,
  IBDatabase,
  IBCustomDataSet,
  IBHeader,
  IBSQL,
  IBUtils,
  IBTable;
function ConvertTIBDBKeyToVariant(var R : TIBDBKey) : OleVariant;
function ConvertVariantToTIBDBKey(const V : OleVariant) : TIBDBKey;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TIBDBKey__Wrapper = class(TDCRecordWrapper)
private
fR : TIBDBKey;
public
function GetRecordPtr : pointer; override;
published
end;
type
_T0 = procedure (const p0 : string;
const p1 : string;
p2 : TIndexOptions;
const p3 : string) of object;

_T1 = procedure  of object;

_T2 = procedure (const p0 : string) of object;

_T3 = _T1;

_T4 = _T1;

_T5 = procedure (p0 : TStrings) of object;

_T6 = procedure (p0 : TIBTable) of object;

function __TIBDBKey__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TIBTable__AddIndex__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
var
__s2 : TIndexOptions;
begin
if cArgs > 2 then
VarToSet(__s2,OleVariant(pargs^[2]),SizeOf(TIndexOptions));
case cArgs of
3:
begin
TIBTable(__Instance).AddIndex(OleVariant(pargs^[2]),OleVariant(pargs^[1]),__s2);
end;
4:
begin
TIBTable(__Instance).AddIndex(OleVariant(pargs^[3]),OleVariant(pargs^[2]),__s2,OleVariant(pargs^[0]));
end;
end
end;


type __TIBDBKey__Wrapper__ = class(__TIBDBKey__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TIBDBKey__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTIBDBKeyToVariant(var R : TIBDBKey) : OleVariant;
var
__rw : __TIBDBKey__Wrapper__;
begin
__rw := __TIBDBKey__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTIBDBKey(const V : OleVariant) : TIBDBKey;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TIBDBKey((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
function __DC__GetTIBTable__LiveMode(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
  tmp : TLiveModes;
begin
tmp := TIBTable(Instance).LiveMode;
result := VarFromSet(tmp, sizeof(tmp));
end;

function __DC__GetTIBTable__CurrentDBKey(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __TIBDBKey__Wrapper;
begin
__wrapper := __TIBDBKey__Wrapper.Create;
__wrapper.fR := TIBTable(Instance).CurrentDBKey;
result := IUnknown(__wrapper) as IDispatch;
end;

function __DC__GetTIBTable__Exists(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBTable(Instance).Exists;
end;

function __DC__GetTIBTable__IndexFieldCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBTable(Instance).IndexFieldCount;
end;

function __DC__GetTIBTable__IndexFields(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIBTable(Instance).IndexFields[OleVariant(Params^[0])]);
end;

procedure __DC__SetTIBTable__IndexFields(Instance : TObject; Params : PVariantArgList);
begin
TIBTable(Instance).IndexFields[OleVariant(Params^[1])]:=TField(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIBTable__TableNames(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIBTable(Instance).TableNames);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIBTable,'LiveMode',__DC__GetTIBTable__LiveMode,nil);
RegisterProperty(TIBTable,'CurrentDBKey',__DC__GetTIBTable__CurrentDBKey,nil);
RegisterProperty(TIBTable,'Exists',__DC__GetTIBTable__Exists,nil);
RegisterProperty(TIBTable,'IndexFieldCount',__DC__GetTIBTable__IndexFieldCount,nil);
RegisterIndexedProperty(TIBTable,'IndexFields',1,False,__DC__GetTIBTable__IndexFields,__DC__SetTIBTable__IndexFields);
RegisterProperty(TIBTable,'TableNames',__DC__GetTIBTable__TableNames,nil);
end;

const __ConstNames0 : array[0..1] of string = (
'ttSystem'
,'ttView'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,ttSystem));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,ttView));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..0] of TClass = (
TIBTable
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
RegisterProc(TIBTable,'AddIndex',mtScriptMethod,TypeInfo(_T0),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(TIndexOptions),
TypeInfo(string)],Addr(__TIBTable__AddIndex__Wrapper),cRegister);

RegRegisterMethod(TIBTable,'CreateTable',TypeInfo(_T1),NoParams,Addr(TIBTable.CreateTable));

RegRegisterMethod(TIBTable,'DeleteIndex',TypeInfo(_T2),[
TypeInfo(string)],Addr(TIBTable.DeleteIndex));

RegRegisterMethod(TIBTable,'DeleteTable',TypeInfo(_T3),NoParams,Addr(TIBTable.DeleteTable));

RegRegisterMethod(TIBTable,'EmptyTable',TypeInfo(_T4),NoParams,Addr(TIBTable.EmptyTable));

RegRegisterMethod(TIBTable,'GetIndexNames',TypeInfo(_T5),[
TypeInfo(TStrings)],Addr(TIBTable.GetIndexNames));

RegRegisterMethod(TIBTable,'GotoCurrent',TypeInfo(_T6),[
TypeInfo(TIBTable)],Addr(TIBTable.GotoCurrent));

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
