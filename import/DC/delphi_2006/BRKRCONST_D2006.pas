{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit BRKRCONST_D2006;
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
  BrkrConst;
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

const __ConstNames0 : array[0..6] of string = (
'sOnlyOneDataModuleAllowed'
,'sNoDataModulesRegistered'
,'sNoDispatcherComponent'
,'sNoWebModulesActivated'
,'sTooManyActiveConnections'
,'sInternalServerError'
,'sDocumentMoved'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,sOnlyOneDataModuleAllowed));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,sNoDataModulesRegistered));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,sNoDispatcherComponent));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,sNoWebModulesActivated));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,sTooManyActiveConnections));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,sInternalServerError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,sDocumentMoved));
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

procedure _mreg_0;
begin
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
