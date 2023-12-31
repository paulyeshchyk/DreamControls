{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDTRIVIALFTP_D2006;
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
  IdAssignedNumbers,
  IdTrivialFTPBase,
  IdUDPClient,
  IdTrivialFTP;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (const p0 : string;
p1 : TStream) of object;

_T1 = procedure (p0 : TStream;
const p1 : string) of object;

procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..2] of string = (
'GTransferMode'
,'GFRequestedBlockSize'
,'GReceiveTimeout'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,GTransferMode));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,GFRequestedBlockSize));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,GReceiveTimeout));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..0] of TClass = (
TIdTrivialFTP
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
RegRegisterMethod(TIdTrivialFTP,'Get',TypeInfo(_T0),[
TypeInfo(string),
TypeInfo(TStream)],Addr(TIdTrivialFTP.Get));

RegRegisterMethod(TIdTrivialFTP,'Put',TypeInfo(_T1),[
TypeInfo(TStream),
TypeInfo(string)],Addr(TIdTrivialFTP.Put));

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
