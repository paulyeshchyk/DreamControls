{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit FMTBCD_D2006;
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
  SysUtils,
  Variants,
  FMTBcd;
function ConvertTBcdToVariant(var R : TBcd) : OleVariant;
function ConvertVariantToTBcd(const V : OleVariant) : TBcd;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TBcd__Wrapper = class(TDCRecordWrapper)
private
fR : TBcd;
public
function GetRecordPtr : pointer; override;
published
procedure setPrecision(const val : Byte);
function getPrecision : Byte;
property Precision : Byte read getPrecision write setPrecision;
procedure setSignSpecialPlaces(const val : Byte);
function getSignSpecialPlaces : Byte;
property SignSpecialPlaces : Byte read getSignSpecialPlaces write setSignSpecialPlaces;
end;
type
_T0 = function (const p0 : IDispatch): Word of object;

_T1 = _T0;

_T2 = function (const p0 : IDispatch): Boolean of object;

_T3 = procedure (const p0 : IDispatch;
const p1 : IDispatch;
const p2 : IDispatch) of object;

_T4 = _T3;

_T5 = function (const p0 : IDispatch;
const p1 : IDispatch;
const p2 : Word;
const p3 : Word): Boolean of object;

_T6 = _T3;

_T7 = procedure (p0 : string;
p1 : string;
const p2 : IDispatch) of object;

_T8 = procedure (var p0 : Variant;
const p1 : IDispatch) of object;

_T9 = function (const p0 : Variant): Boolean of object;

_T10 = function : TVarType of object;

_T11 = function (const p0 : string): IDispatch of object;

_T12 = function (const p0 : string;
const p1 : IDispatch): Boolean of object;

_T13 = function (const p0 : Double): IDispatch of object;

_T14 = function (const p0 : Integer): IDispatch of object;

_T15 = function (const p0 : Variant): IDispatch of object;

_T18 = function (const p0 : IDispatch): string of object;

_T19 = function (const p0 : IDispatch): Double of object;

_T20 = function (const p0 : IDispatch;
p1 : Boolean): Integer of object;

_T21 = function (const p0 : IDispatch;
var p1 : Currency): Boolean of object;

_T22 = _T21;

_T23 = function (const p0 : IDispatch;
p1 : TFloatFormat;
const p2 : Integer;
const p3 : Integer): string of object;

_T24 = function (const p0 : string;
const p1 : IDispatch): string of object;

_T25 = function (const p0 : IDispatch;
const p1 : IDispatch): Integer of object;

_T26 = function (const p0 : string;
p1 : SmallInt): string of object;

function __TBcd__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TBcd__Wrapper.setPrecision(const val : Byte);
begin
TBcd(GetRecordPtr^).Precision := val;
end;
function __TBcd__Wrapper.getPrecision : Byte;
begin
result := TBcd(GetRecordPtr^).Precision;
end;
procedure __TBcd__Wrapper.setSignSpecialPlaces(const val : Byte);
begin
TBcd(GetRecordPtr^).SignSpecialPlaces := val;
end;
function __TBcd__Wrapper.getSignSpecialPlaces : Byte;
begin
result := TBcd(GetRecordPtr^).SignSpecialPlaces;
end;
function _TBcd_ : IDispatch;
begin
  result := __TBcd__Wrapper.Create;
end;
function ____BcdPrecision__Wrapper(const p0 : IDispatch): Word;
var
__p0 : ^TBcd;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := BcdPrecision(__p0^);
end;

function ____BcdScale__Wrapper(const p0 : IDispatch): Word;
var
__p0 : ^TBcd;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := BcdScale(__p0^);
end;

function ____IsBcdNegative__Wrapper(const p0 : IDispatch): Boolean;
var
__p0 : ^TBcd;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := IsBcdNegative(__p0^);
end;

procedure ____BcdAdd__Wrapper(const p0 : IDispatch;
const p1 : IDispatch;
const p2 : IDispatch);
var
__p0 : ^TBcd;
__i0 : IDispatch;
__p1 : ^TBcd;
__i1 : IDispatch;
__p2 : ^TBcd;
__i2 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
BcdAdd(__p0^,__p1^,__p2^);
end;

procedure ____BcdSubtract__Wrapper(const p0 : IDispatch;
const p1 : IDispatch;
const p2 : IDispatch);
var
__p0 : ^TBcd;
__i0 : IDispatch;
__p1 : ^TBcd;
__i1 : IDispatch;
__p2 : ^TBcd;
__i2 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
BcdSubtract(__p0^,__p1^,__p2^);
end;

function ____NormalizeBcd__Wrapper(const p0 : IDispatch;
const p1 : IDispatch;
const p2 : Word;
const p3 : Word): Boolean;
var
__p0 : ^TBcd;
__i0 : IDispatch;
__p1 : ^TBcd;
__i1 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
result := NormalizeBcd(__p0^,__p1^,p2,p3);
end;

procedure ____BcdMultiply__Wrapper(const p0 : IDispatch;
const p1 : IDispatch;
const p2 : IDispatch);
var
__p0 : ^TBcd;
__i0 : IDispatch;
__p1 : ^TBcd;
__i1 : IDispatch;
__p2 : ^TBcd;
__i2 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
BcdMultiply(__p0^,__p1^,__p2^);
end;

procedure ____BcdDivide__Wrapper(p0 : string;
p1 : string;
const p2 : IDispatch);
var
__p2 : ^TBcd;
__i2 : IDispatch;
begin
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
BcdDivide(p0,p1,__p2^);
end;

procedure ____VarFMTBcdCreate__Wrapper(var p0 : Variant;
const p1 : IDispatch);
var
__p1 : ^TBcd;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
VarFMTBcdCreate(p0,__p1^);
end;

function ____StrToBcd__Wrapper(const p0 : string): IDispatch;
var
__result : TBcd;
__wrapper : __TBcd__Wrapper;
begin
__result := StrToBcd(p0);
__wrapper := __TBcd__Wrapper.Create;
__wrapper.fR := __result;
result := IDispatch(__wrapper);
end;

function ____TryStrToBcd__Wrapper(const p0 : string;
const p1 : IDispatch): Boolean;
var
__p1 : ^TBcd;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
result := TryStrToBcd(p0,__p1^);
end;

function ____DoubleToBcd__Wrapper(const p0 : Double): IDispatch;
var
__result : TBcd;
__wrapper : __TBcd__Wrapper;
begin
__result := DoubleToBcd(p0);
__wrapper := __TBcd__Wrapper.Create;
__wrapper.fR := __result;
result := IDispatch(__wrapper);
end;

function ____IntegerToBcd__Wrapper(const p0 : Integer): IDispatch;
var
__result : TBcd;
__wrapper : __TBcd__Wrapper;
begin
__result := IntegerToBcd(p0);
__wrapper := __TBcd__Wrapper.Create;
__wrapper.fR := __result;
result := IDispatch(__wrapper);
end;

function ____VarToBcd__Wrapper(const p0 : Variant): IDispatch;
var
__result : TBcd;
__wrapper : __TBcd__Wrapper;
begin
__result := VarToBcd(p0);
__wrapper := __TBcd__Wrapper.Create;
__wrapper.fR := __result;
result := IDispatch(__wrapper);
end;

function ____BcdToStr__Wrapper(const p0 : IDispatch): string;
var
__p0 : ^TBcd;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := BcdToStr(__p0^);
end;

function ____BcdToDouble__Wrapper(const p0 : IDispatch): Double;
var
__p0 : ^TBcd;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := BcdToDouble(__p0^);
end;

function ____BcdToInteger__Wrapper(cArgs : integer; pArgs : PArgList) : OleVariant;
var
__p0 : ^TBcd;
__i0 : IDispatch;
begin
__i0 := VarToInterface(OleVariant(pargs^[0]));
if __i0 = nil then exit;
__p0 := (__i0 as IDCRecordWrapper).GetRecordPtr;
case cArgs of
1:
begin
result := BcdToInteger(__p0^);
end;
2:
begin
result := BcdToInteger(__p0^,OleVariant(pargs^[0]));
end;
end
end;

function ____OldBCDToCurr__Wrapper(const p0 : IDispatch;
var p1 : Currency): Boolean;
var
__p0 : ^TBcd;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := OldBCDToCurr(__p0^,p1);
end;

function ____BCDToCurr__Wrapper(const p0 : IDispatch;
var p1 : Currency): Boolean;
var
__p0 : ^TBcd;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := BCDToCurr(__p0^,p1);
end;

function ____BcdToStrF__Wrapper(const p0 : IDispatch;
p1 : TFloatFormat;
const p2 : Integer;
const p3 : Integer): string;
var
__p0 : ^TBcd;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := BcdToStrF(__p0^,p1,p2,p3);
end;

function ____FormatBcd__Wrapper(const p0 : string;
const p1 : IDispatch): string;
var
__p1 : ^TBcd;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
result := FormatBcd(p0,__p1^);
end;

function ____BcdCompare__Wrapper(const p0 : IDispatch;
const p1 : IDispatch): Integer;
var
__p0 : ^TBcd;
__i0 : IDispatch;
__p1 : ^TBcd;
__i1 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
result := BcdCompare(__p0^,__p1^);
end;


type __TBcd__Wrapper__ = class(__TBcd__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TBcd__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTBcdToVariant(var R : TBcd) : OleVariant;
var
__rw : __TBcd__Wrapper__;
begin
__rw := __TBcd__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTBcd(const V : OleVariant) : TBcd;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TBcd((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..7] of string = (
'MaxStringDigits'
,'_NoDecimal'
,'_DefaultDecimals'
,'MaxFMTBcdFractionSize'
,'MaxFMTBcdDigits'
,'DefaultFMTBcdScale'
,'MaxBcdPrecision'
,'MaxBcdScale'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,MaxStringDigits));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,_NoDecimal));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,_DefaultDecimals));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,MaxFMTBcdFractionSize));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,MaxFMTBcdDigits));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,DefaultFMTBcdScale));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,MaxBcdPrecision));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,MaxBcdScale));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..1] of TClass = (
EBcdException,
EBcdOverflowException
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..25] of string = (
'TBcd'
,'BcdPrecision'
,'BcdScale'
,'IsBcdNegative'
,'BcdAdd'
,'BcdSubtract'
,'NormalizeBcd'
,'BcdMultiply'
,'BcdDivide'
,'VarFMTBcdCreate'
,'VarIsFMTBcd'
,'VarFMTBcd'
,'StrToBcd'
,'TryStrToBcd'
,'DoubleToBcd'
,'IntegerToBcd'
,'VarToBcd'
,'BcdToStr'
,'BcdToDouble'
,'BcdToInteger'
,'OldBCDToCurr'
,'BCDToCurr'
,'BcdToStrF'
,'FormatBcd'
,'BcdCompare'
,'RoundAt'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
__RegisteredMethods.Add(RegisterRWProc(MethodNames[0],Addr(_TBcd_)));
RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T0),[
TypeInfo(IDispatch),TypeInfo(Word)],Addr(____BcdPrecision__Wrapper),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T1),[
TypeInfo(IDispatch),TypeInfo(Word)],Addr(____BcdScale__Wrapper),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T2),[
TypeInfo(IDispatch),TypeInfo(Boolean)],Addr(____IsBcdNegative__Wrapper),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T3),[
TypeInfo(IDispatch),
TypeInfo(IDispatch),
TypeInfo(IDispatch)],Addr(____BcdAdd__Wrapper),cRegister);

RegisterProc(nil,MethodNames[5],mtProc,TypeInfo(_T4),[
TypeInfo(IDispatch),
TypeInfo(IDispatch),
TypeInfo(IDispatch)],Addr(____BcdSubtract__Wrapper),cRegister);

RegisterProc(nil,MethodNames[6],mtProc,TypeInfo(_T5),[
TypeInfo(IDispatch),
TypeInfo(IDispatch),
TypeInfo(Word),
TypeInfo(Word),TypeInfo(Boolean)],Addr(____NormalizeBcd__Wrapper),cRegister);

RegisterProc(nil,MethodNames[7],mtProc,TypeInfo(_T6),[
TypeInfo(IDispatch),
TypeInfo(IDispatch),
TypeInfo(IDispatch)],Addr(____BcdMultiply__Wrapper),cRegister);

RegisterProc(nil,MethodNames[8],mtProc,TypeInfo(_T7),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(IDispatch)],Addr(____BcdDivide__Wrapper),cRegister);

RegisterProc(nil,MethodNames[9],mtProc,TypeInfo(_T8),[
TypeInfo(Variant),
TypeInfo(IDispatch)],Addr(____VarFMTBcdCreate__Wrapper),cRegister);

RegisterProc(nil,MethodNames[10],mtProc,TypeInfo(_T9),[
TypeInfo(Variant),TypeInfo(Boolean)],Addr(VarIsFMTBcd),cRegister);

RegisterProc(nil,MethodNames[11],mtProc,TypeInfo(_T10),[TypeInfo(TVarType)],Addr(VarFMTBcd),cRegister);

RegisterProc(nil,MethodNames[12],mtProc,TypeInfo(_T11),[
TypeInfo(string),TypeInfo(IDispatch)],Addr(____StrToBcd__Wrapper),cRegister);

RegisterProc(nil,MethodNames[13],mtProc,TypeInfo(_T12),[
TypeInfo(string),
TypeInfo(IDispatch),TypeInfo(Boolean)],Addr(____TryStrToBcd__Wrapper),cRegister);

RegisterProc(nil,MethodNames[14],mtProc,TypeInfo(_T13),[
TypeInfo(Double),TypeInfo(IDispatch)],Addr(____DoubleToBcd__Wrapper),cRegister);

RegisterProc(nil,MethodNames[15],mtProc,TypeInfo(_T14),[
TypeInfo(Integer),TypeInfo(IDispatch)],Addr(____IntegerToBcd__Wrapper),cRegister);

RegisterProc(nil,MethodNames[16],mtProc,TypeInfo(_T15),[
TypeInfo(Variant),TypeInfo(IDispatch)],Addr(____VarToBcd__Wrapper),cRegister);

RegisterProc(nil,MethodNames[17],mtProc,TypeInfo(_T18),[
TypeInfo(IDispatch),TypeInfo(string)],Addr(____BcdToStr__Wrapper),cRegister);

RegisterProc(nil,MethodNames[18],mtProc,TypeInfo(_T19),[
TypeInfo(IDispatch),TypeInfo(Double)],Addr(____BcdToDouble__Wrapper),cRegister);

RegisterProc(nil,MethodNames[19],mtScriptProc,TypeInfo(_T20),[
TypeInfo(IDispatch),
TypeInfo(Boolean),TypeInfo(Integer)],Addr(____BcdToInteger__Wrapper),cRegister);

RegisterProc(nil,MethodNames[20],mtProc,TypeInfo(_T21),[
TypeInfo(IDispatch),
TypeInfo(Currency),TypeInfo(Boolean)],Addr(____OldBCDToCurr__Wrapper),cRegister);

RegisterProc(nil,MethodNames[21],mtProc,TypeInfo(_T22),[
TypeInfo(IDispatch),
TypeInfo(Currency),TypeInfo(Boolean)],Addr(____BCDToCurr__Wrapper),cRegister);

RegisterProc(nil,MethodNames[22],mtProc,TypeInfo(_T23),[
TypeInfo(IDispatch),
TypeInfo(TFloatFormat),
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(string)],Addr(____BcdToStrF__Wrapper),cRegister);

RegisterProc(nil,MethodNames[23],mtProc,TypeInfo(_T24),[
TypeInfo(string),
TypeInfo(IDispatch),TypeInfo(string)],Addr(____FormatBcd__Wrapper),cRegister);

RegisterProc(nil,MethodNames[24],mtProc,TypeInfo(_T25),[
TypeInfo(IDispatch),
TypeInfo(IDispatch),TypeInfo(Integer)],Addr(____BcdCompare__Wrapper),cRegister);

RegisterProc(nil,MethodNames[25],mtProc,TypeInfo(_T26),[
TypeInfo(string),
TypeInfo(SmallInt),TypeInfo(string)],Addr(RoundAt),cRegister);

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
