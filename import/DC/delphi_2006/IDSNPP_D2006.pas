{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDSNPP_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  Classes,
  IdException,
  IdGlobal,
  IdTCPConnection,
  IdMessage,
  IdComponent,
  IdTCPClient,
  IdSNPP;
function ConvertTCheckRespToVariant(var R : TCheckResp) : OleVariant;
function ConvertVariantToTCheckResp(const V : OleVariant) : TCheckResp;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TCheckResp__Wrapper = class(TDCRecordWrapper)
private
fR : TCheckResp;
public
function GetRecordPtr : pointer; override;
published
procedure setCode(const val : SmallInt);
function getCode : SmallInt;
property Code : SmallInt read getCode write setCode;
procedure setResp(const val : AnsiString);
function getResp : AnsiString;
property Resp : AnsiString read getResp write setResp;
end;
type
_T0 = procedure  of object;

_T1 = procedure (p0 : String;
p1 : String) of object;

function __TCheckResp__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TCheckResp__Wrapper.setCode(const val : SmallInt);
begin
TCheckResp(GetRecordPtr^).Code := val;
end;
function __TCheckResp__Wrapper.getCode : SmallInt;
begin
result := TCheckResp(GetRecordPtr^).Code;
end;
procedure __TCheckResp__Wrapper.setResp(const val : AnsiString);
begin
TCheckResp(GetRecordPtr^).Resp := val;
end;
function __TCheckResp__Wrapper.getResp : AnsiString;
begin
result := TCheckResp(GetRecordPtr^).Resp;
end;
function _TCheckResp_ : IDispatch;
begin
  result := __TCheckResp__Wrapper.Create;
end;

type __TCheckResp__Wrapper__ = class(__TCheckResp__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TCheckResp__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTCheckRespToVariant(var R : TCheckResp) : OleVariant;
var
__rw : __TCheckResp__Wrapper__;
begin
__rw := __TCheckResp__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTCheckResp(const V : OleVariant) : TCheckResp;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TCheckResp((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..3] of string = (
'crCanPost'
,'crNoPost'
,'crAuthRequired'
,'crTempUnavailable'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,crCanPost));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,crNoPost));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,crAuthRequired));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,crTempUnavailable));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..4] of TClass = (
EIdSNPPConnectionRefused,
EIdSNPPException,
EIdSNPPNoMultiLineMessages,
EIdSNPPProtocolError,
TIdSNPP
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
'TCheckResp'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
__RegisteredMethods.Add(RegisterRWProc(MethodNames[0],Addr(_TCheckResp_)));
RegRegisterMethod(TIdSNPP,'Reset',TypeInfo(_T0),NoParams,Addr(TIdSNPP.Reset));

RegRegisterMethod(TIdSNPP,'SendMessage',TypeInfo(_T1),[
TypeInfo(String),
TypeInfo(String)],Addr(TIdSNPP.SendMessage));

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
