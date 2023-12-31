{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDMESSAGECOLLECTION_D2006;
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
  IdMessage,
  IdMessageCollection;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function : TIdMessageItem of object;

function __DC__GetTIdMessageCollection__Messages(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdMessageCollection(Instance).Messages[OleVariant(Params^[0])]);
end;

procedure __DC__SetTIdMessageCollection__Messages(Instance : TObject; Params : PVariantArgList);
begin
TIdMessageCollection(Instance).Messages[OleVariant(Params^[1])]:=TIdMessage(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTIdMessageItem__Attempt(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdMessageItem(Instance).Attempt;
end;

procedure __DC__SetTIdMessageItem__Attempt(Instance : TObject; Params : PVariantArgList);
begin
TIdMessageItem(Instance).Attempt:=OleVariant(Params^[0]);
end;

function __DC__GetTIdMessageItem__Queued(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdMessageItem(Instance).Queued;
end;

procedure __DC__SetTIdMessageItem__Queued(Instance : TObject; Params : PVariantArgList);
begin
TIdMessageItem(Instance).Queued:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterIndexedProperty(TIdMessageCollection,'Messages',1,True,__DC__GetTIdMessageCollection__Messages,__DC__SetTIdMessageCollection__Messages);
RegisterProperty(TIdMessageItem,'Attempt',__DC__GetTIdMessageItem__Attempt,__DC__SetTIdMessageItem__Attempt);
RegisterProperty(TIdMessageItem,'Queued',__DC__GetTIdMessageItem__Queued,__DC__SetTIdMessageItem__Queued);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..1] of TClass = (
TIdMessageCollection,
TIdMessageItem
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
RegRegisterMethod(TIdMessageCollection,'Add',TypeInfo(_T0),[TypeInfo(TIdMessageItem)],Addr(TIdMessageCollection.Add));

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
