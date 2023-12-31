{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit MASKUTILS_D2006;
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
  MaskUtils;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (const p0 : string;
const p1 : string): string of object;

_T1 = function (const p0 : string): Boolean of object;

_T2 = function (const p0 : string): Char of object;

_T3 = function (const p0 : string): Integer of object;

_T4 = function (const p0 : string;
const p1 : string;
p2 : Char): string of object;

_T5 = function (const p0 : string;
p1 : Integer): Integer of object;

_T6 = _T5;

_T7 = function (const p0 : string;
p1 : Integer): Boolean of object;

_T8 = function (const p0 : string;
p1 : Integer): TMaskCharType of object;

_T9 = function (const p0 : string;
p1 : Integer): TMaskDirectives of object;

_T10 = function (p0 : Char): Char of object;

_T11 = _T5;

_T12 = _T4;

procedure __RegisterProps;
begin
end;

function __DC__GetMaskUtils__DefaultBlank(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := MaskUtils.DefaultBlank;
end;

procedure __DC__SetMaskUtils__DefaultBlank(Instance : TObject; Params : PVariantArgList);
begin
MaskUtils.DefaultBlank:=VarToChar(OleVariant(Params^[0]));
end;

function __DC__GetMaskUtils__MaskFieldSeparator(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := MaskUtils.MaskFieldSeparator;
end;

procedure __DC__SetMaskUtils__MaskFieldSeparator(Instance : TObject; Params : PVariantArgList);
begin
MaskUtils.MaskFieldSeparator:=VarToChar(OleVariant(Params^[0]));
end;

function __DC__GetMaskUtils__MaskNoSave(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := MaskUtils.MaskNoSave;
end;

procedure __DC__SetMaskUtils__MaskNoSave(Instance : TObject; Params : PVariantArgList);
begin
MaskUtils.MaskNoSave:=VarToChar(OleVariant(Params^[0]));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('DefaultBlank',__DC__GetMaskUtils__DefaultBlank,__DC__SetMaskUtils__DefaultBlank));
__RegisteredVars.Add(RegisterVar('MaskFieldSeparator',__DC__GetMaskUtils__MaskFieldSeparator,__DC__SetMaskUtils__MaskFieldSeparator));
__RegisteredVars.Add(RegisterVar('MaskNoSave',__DC__GetMaskUtils__MaskNoSave,__DC__SetMaskUtils__MaskNoSave));
end;

procedure __UnregisterVars;
begin
__RegisteredVars.Free;
end;

const __ConstNames0 : array[0..26] of string = (
'mDirReverse'
,'mDirUpperCase'
,'mDirLowerCase'
,'mDirLiteral'
,'mMskAlpha'
,'mMskAlphaOpt'
,'mMskAlphaNum'
,'mMskAlphaNumOpt'
,'mMskAscii'
,'mMskAsciiOpt'
,'mMskNumeric'
,'mMskNumericOpt'
,'mMskNumSymOpt'
,'mMskTimeSeparator'
,'mMskDateSeparator'
,'mcNone'
,'mcLiteral'
,'mcIntlLiteral'
,'mcDirective'
,'mcMask'
,'mcMaskOpt'
,'mcFieldSeparator'
,'mcField'
,'mdReverseDir'
,'mdUpperCase'
,'mdLowerCase'
,'mdLiteralChar'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,mDirReverse));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,mDirUpperCase));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,mDirLowerCase));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,mDirLiteral));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,mMskAlpha));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,mMskAlphaOpt));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,mMskAlphaNum));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,mMskAlphaNumOpt));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,mMskAscii));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,mMskAsciiOpt));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,mMskNumeric));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,mMskNumericOpt));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,mMskNumSymOpt));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,mMskTimeSeparator));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,mMskDateSeparator));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,mcNone));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,mcLiteral));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,mcIntlLiteral));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,mcDirective));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,mcMask));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,mcMaskOpt));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,mcFieldSeparator));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,mcField));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,mdReverseDir));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,mdUpperCase));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,mdLowerCase));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,mdLiteralChar));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

procedure __RegisterClasses;
begin
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..12] of string = (
'FormatMaskText'
,'MaskGetMaskSave'
,'MaskGetMaskBlank'
,'MaskGetFldSeparator'
,'PadInputLiterals'
,'MaskOffsetToOffset'
,'MaskOffsetToWideOffset'
,'IsLiteralChar'
,'MaskGetCharType'
,'MaskGetCurrentDirectives'
,'MaskIntlLiteralToChar'
,'OffsetToMaskOffset'
,'MaskDoFormatText'
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
TypeInfo(string),TypeInfo(string)],Addr(FormatMaskText),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[
TypeInfo(string),TypeInfo(Boolean)],Addr(MaskGetMaskSave),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfo(string),TypeInfo(Char)],Addr(MaskGetMaskBlank),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T3),[
TypeInfo(string),TypeInfo(Integer)],Addr(MaskGetFldSeparator),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T4),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(Char),TypeInfo(string)],Addr(PadInputLiterals),cRegister);

RegisterProc(nil,MethodNames[5],mtProc,TypeInfo(_T5),[
TypeInfo(string),
TypeInfo(Integer),TypeInfo(Integer)],Addr(MaskOffsetToOffset),cRegister);

RegisterProc(nil,MethodNames[6],mtProc,TypeInfo(_T6),[
TypeInfo(string),
TypeInfo(Integer),TypeInfo(Integer)],Addr(MaskOffsetToWideOffset),cRegister);

RegisterProc(nil,MethodNames[7],mtProc,TypeInfo(_T7),[
TypeInfo(string),
TypeInfo(Integer),TypeInfo(Boolean)],Addr(IsLiteralChar),cRegister);

RegisterProc(nil,MethodNames[8],mtProc,TypeInfo(_T8),[
TypeInfo(string),
TypeInfo(Integer),TypeInfo(TMaskCharType)],Addr(MaskGetCharType),cRegister);

RegisterProc(nil,MethodNames[9],mtProc,TypeInfo(_T9),[
TypeInfo(string),
TypeInfo(Integer),TypeInfo(TMaskDirectives)],Addr(MaskGetCurrentDirectives),cRegister);

RegisterProc(nil,MethodNames[10],mtProc,TypeInfo(_T10),[
TypeInfo(Char),TypeInfo(Char)],Addr(MaskIntlLiteralToChar),cRegister);

RegisterProc(nil,MethodNames[11],mtProc,TypeInfo(_T11),[
TypeInfo(string),
TypeInfo(Integer),TypeInfo(Integer)],Addr(OffsetToMaskOffset),cRegister);

RegisterProc(nil,MethodNames[12],mtProc,TypeInfo(_T12),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(Char),TypeInfo(string)],Addr(MaskDoFormatText),cRegister);

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
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
