{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcregexpr_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  dcscript,
  classes,
  sysutils,
  dcsystem,
  dcdreamlib,
  dcregexpr;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (const p0 : string): Boolean of object;

_T1 = procedure (const p0 : string;
p1 : Boolean) of object;

_T2 = function (const p0 : string;
var p1 : Integer;
var p2 : Integer;
p3 : Boolean): Boolean of object;

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
TRegExpr
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
'EmptyLineStr'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(string),TypeInfo(Boolean)],Addr(EmptyLineStr),cRegister);

RegisterProc(TRegExpr,'Create',mtConstructor,TypeInfo(_T1),[
TypeInfo(string),
TypeInfo(Boolean)],Addr(TRegExpr.Create),cRegister);

RegRegisterMethod(TRegExpr,'Find',TypeInfo(_T2),[
TypeInfo(string),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(Boolean),TypeInfo(Boolean)],Addr(TRegExpr.Find));

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
