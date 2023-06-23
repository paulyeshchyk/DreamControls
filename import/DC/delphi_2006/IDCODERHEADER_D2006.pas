{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDCODERHEADER_D2006;
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
  IdEMailAddress,
  IdCoderHeader;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : TIdEmailAddressItem;
const p1 : Char;
p2 : TTransfer;
p3 : string): string of object;

_T1 = function (const p0 : string;
p1 : CSET;
const p2 : Char;
p3 : TTransfer;
p4 : string): string of object;

_T2 = function (const p0 : string): string of object;

_T3 = function (p0 : TIdEMailAddressList;
const p1 : Char;
p2 : TTransfer;
p3 : string): string of object;

_T4 = function (p0 : string): string of object;

_T5 = _T2;

_T6 = procedure (p0 : TIdEmailAddressItem) of object;

_T7 = procedure (p0 : string;
p1 : TIdEMailAddressList) of object;

_T8 = procedure (var p0 : TTransfer;
var p1 : Char;
var p2 : string) of object;

procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..2] of string = (
'bit7'
,'bit8'
,'iso2022jp'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,bit7));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,bit8));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,iso2022jp));
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
const MethodNames : array[0..8] of string = (
'EncodeAddressItem'
,'EncodeHeader'
,'Encode2022JP'
,'EncodeAddress'
,'DecodeHeader'
,'Decode2022JP'
,'DecodeAddress'
,'DecodeAddresses'
,'InitializeISO'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(TIdEmailAddressItem),
TypeInfo(Char),
TypeInfo(TTransfer),
TypeInfo(string),TypeInfo(string)],Addr(EncodeAddressItem),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[
TypeInfo(string),
TypeInfo(CSET),
TypeInfo(Char),
TypeInfo(TTransfer),
TypeInfo(string),TypeInfo(string)],Addr(EncodeHeader),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfo(string),TypeInfo(string)],Addr(Encode2022JP),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T3),[
TypeInfo(TIdEMailAddressList),
TypeInfo(Char),
TypeInfo(TTransfer),
TypeInfo(string),TypeInfo(string)],Addr(EncodeAddress),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T4),[
TypeInfo(string),TypeInfo(string)],Addr(DecodeHeader),cRegister);

RegisterProc(nil,MethodNames[5],mtProc,TypeInfo(_T5),[
TypeInfo(string),TypeInfo(string)],Addr(Decode2022JP),cRegister);

RegisterProc(nil,MethodNames[6],mtProc,TypeInfo(_T6),[
TypeInfo(TIdEmailAddressItem)],Addr(DecodeAddress),cRegister);

RegisterProc(nil,MethodNames[7],mtProc,TypeInfo(_T7),[
TypeInfo(string),
TypeInfo(TIdEMailAddressList)],Addr(DecodeAddresses),cRegister);

RegisterProc(nil,MethodNames[8],mtProc,TypeInfo(_T8),[
TypeInfo(TTransfer),
TypeInfo(Char),
TypeInfo(string)],Addr(InitializeISO),cRegister);

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
