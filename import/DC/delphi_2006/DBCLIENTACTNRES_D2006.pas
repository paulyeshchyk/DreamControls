{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit DBCLIENTACTNRES_D2006;
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
  ActnList,
  DBClientActns,
  DBActns,
  ImgList,
  Controls,
  DBClientActnRes;
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

function __DC__GetDBClientActnRes__ClientDatasetActions(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(DBClientActnRes.ClientDatasetActions);
end;

procedure __DC__SetDBClientActnRes__ClientDatasetActions(Instance : TObject; Params : PVariantArgList);
begin
TObject(DBClientActnRes.ClientDatasetActions):=(VarToObject(OleVariant(Params^[0])));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('ClientDatasetActions',__DC__GetDBClientActnRes__ClientDatasetActions,__DC__SetDBClientActnRes__ClientDatasetActions));
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
TClientDatasetActions
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