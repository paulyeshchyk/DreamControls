{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDBASECOMPONENT_D2006;
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
  IdBaseComponent;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function : string of object;

function __DC__GetTIdBaseComponent__Version(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdBaseComponent(Instance).Version;
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdBaseComponent,'Version',__DC__GetTIdBaseComponent__Version,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TIdBaseComponent
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
RegRegisterMethod(TIdBaseComponent,'GetVersion',TypeInfo(_T0),[TypeInfo(string)],Addr(TIdBaseComponent.GetVersion));

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