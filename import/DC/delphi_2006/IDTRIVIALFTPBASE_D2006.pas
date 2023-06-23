{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDTRIVIALFTPBASE_D2006;
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
  IdGlobal,
  IdUDPBase,
  IdUDPClient,
  SysUtils,
  IdTrivialFTPBase;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (const p0 : Word): string of object;

_T1 = procedure (p0 : TIdUDPBase;
p1 : string;
const p2 : Integer;
const p3 : Word;
p4 : string) of object;

_T2 = function (const p0 : string): Word of object;

_T3 = function (const p0 : Word): WordStr of object;

procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..19] of string = (
'tfNetAscii'
,'tfOctet'
,'TFTP_RRQ'
,'TFTP_WRQ'
,'TFTP_DATA'
,'TFTP_ACK'
,'TFTP_ERROR'
,'TFTP_OACK'
,'MaxWord'
,'hdrsize'
,'sBlockSize'
,'ErrUndefined'
,'ErrFileNotFound'
,'ErrAccessViolation'
,'ErrAllocationExceeded'
,'ErrIllegalOperation'
,'ErrUnknownTransferID'
,'ErrFileAlreadyExists'
,'ErrNoSuchUser'
,'ErrOptionNegotiationFailed'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,tfNetAscii));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,tfOctet));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,TFTP_RRQ));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,TFTP_WRQ));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,TFTP_DATA));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,TFTP_ACK));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,TFTP_ERROR));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,TFTP_OACK));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,MaxWord));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,hdrsize));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,sBlockSize));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,ErrUndefined));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,ErrFileNotFound));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,ErrAccessViolation));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,ErrAllocationExceeded));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,ErrIllegalOperation));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,ErrUnknownTransferID));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,ErrFileAlreadyExists));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,ErrNoSuchUser));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,ErrOptionNegotiationFailed));
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
const MethodNames : array[0..3] of string = (
'MakeAckPkt'
,'SendError'
,'StrToWord'
,'WordToStr'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(Word),TypeInfo(string)],Addr(MakeAckPkt),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[
TypeInfo(TIdUDPBase),
TypeInfo(string),
TypeInfo(Integer),
TypeInfo(Word),
TypeInfo(string)],Addr(SendError),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfo(string),TypeInfo(Word)],Addr(StrToWord),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T3),[
TypeInfo(Word),TypeInfo(WordStr)],Addr(WordToStr),cRegister);

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
