{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit DBCLIENTACTNS_D2006;
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
  ActnList,
  DB,
  DBActns,
  DBClient,
  DBClientActns;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
function __DC__GetTReconcileActionLink__ApplyAction(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TReconcileActionLink(Instance).ApplyAction);
end;

procedure __DC__SetTReconcileActionLink__ApplyAction(Instance : TObject; Params : PVariantArgList);
begin
TReconcileActionLink(Instance).ApplyAction:=TClientDataSetApply(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TReconcileActionLink,'ApplyAction',__DC__GetTReconcileActionLink__ApplyAction,__DC__SetTReconcileActionLink__ApplyAction);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..3] of TClass = (
TClientDataSetApply,
TClientDataSetRevert,
TClientDataSetUndo,
TReconcileActionLink
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

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
