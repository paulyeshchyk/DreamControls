{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit SVRINFOCONSOLE_D2006;
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
  SysUtils,
  Classes,
  Forms,
  SvrInfoConsole;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
procedure __RegisterProps;
begin
end;

function __DC__GetSvrInfoConsole__Form1(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(SvrInfoConsole.Form1);
end;

procedure __DC__SetSvrInfoConsole__Form1(Instance : TObject; Params : PVariantArgList);
begin
TObject(SvrInfoConsole.Form1):=(VarToObject(OleVariant(Params^[0])));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('Form1',__DC__GetSvrInfoConsole__Form1,__DC__SetSvrInfoConsole__Form1));
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
TForm1
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

procedure _mreg_0;
begin
end;
initialization
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
__RegisterVars;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnRegisterVars;
end.
