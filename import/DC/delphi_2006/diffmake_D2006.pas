{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit diffmake_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  dcscript,
  Windows,
  SysUtils,
  Classes,
  dialogs,
  dcsystem,
  dcconsts,
  dcdreamlib,
  DIFFMAKE;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : Integer): Integer of object;

_T1 = function : DWord of object;

_T2 = function (var p0;
p1 : DWord;
p2 : Integer): Integer of object;

_T3 = function (var p0;
p1 : Integer): Integer of object;

_T4 = procedure (p0 : TStream;
p1 : TStream;
p2 : TStream;
p3 : Integer) of object;

_T5 = procedure (p0 : TStream;
p1 : TStream;
p2 : TStream) of object;

_T6 = procedure  of object;

_T7 = _T6;

procedure __RegisterProps;
begin
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TDiffMaker
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..5] of string = (
'CRC32Finish'
,'CRC32Start'
,'CRC32Calc'
,'CalculateCRC32'
,'DiffStreamCompress'
,'DiffStreamExtract'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(Integer),TypeInfo(Integer)],Addr(CRC32Finish),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[TypeInfo(DWord)],Addr(CRC32Start),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfoUntyped,
TypeInfo(DWord),
TypeInfo(Integer),TypeInfo(Integer)],Addr(CRC32Calc),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T3),[
TypeInfoUntyped,
TypeInfo(Integer),TypeInfo(Integer)],Addr(CalculateCRC32),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T4),[
TypeInfo(TStream),
TypeInfo(TStream),
TypeInfo(TStream),
TypeInfo(Integer)],Addr(DiffStreamCompress),cRegister);

RegisterProc(nil,MethodNames[5],mtProc,TypeInfo(_T5),[
TypeInfo(TStream),
TypeInfo(TStream),
TypeInfo(TStream)],Addr(DiffStreamExtract),cRegister);

RegRegisterMethod(TDiffMaker,'Compress',TypeInfo(_T6),NoParams,Addr(TDiffMaker.Compress));

RegRegisterMethod(TDiffMaker,'Extract',TypeInfo(_T7),NoParams,Addr(TDiffMaker.Extract));

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