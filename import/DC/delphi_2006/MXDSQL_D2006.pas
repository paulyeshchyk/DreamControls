{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit MXDSQL_D2006;
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
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  DB,
  DBTables,
  Grids,
  DBGrids,
  StdCtrls,
  MXDSQL;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : string;
p1 : string) of object;

_T1 = function (p0 : string;
p1 : string): Boolean of object;

procedure __RegisterProps;
begin
end;

function __DC__GetMXDSQL__Form2(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(MXDSQL.Form2);
end;

procedure __DC__SetMXDSQL__Form2(Instance : TObject; Params : PVariantArgList);
begin
TObject(MXDSQL.Form2):=(VarToObject(OleVariant(Params^[0])));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('Form2',__DC__GetMXDSQL__Form2,__DC__SetMXDSQL__Form2));
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

const ClassList : array[0..0] of TClass = (
TSQLWindow
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
'ShowSQLWindow'
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
TypeInfo(string)],Addr(ShowSQLWindow),cRegister);

RegRegisterMethod(TSQLWindow,'SInitialize',TypeInfo(_T1),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(TSQLWindow.SInitialize));

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
