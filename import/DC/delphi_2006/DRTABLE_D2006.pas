{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit DRTABLE_D2006;
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
  SysUtils,
  Classes,
  BDE,
  DB,
  DBTables,
  DrTable;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
function __DC__GetTDRDataSet__DRHandle(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDRDataSet(Instance).DRHandle;
end;

procedure __DC__SetTDRDataSet__DRHandle(Instance : TObject; Params : PVariantArgList);
begin
TDRDataSet(Instance).DRHandle:=OleVariant(Params^[0]);
end;

function __DC__GetTQueryDescription__Query(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TQueryDescription(Instance).Query);
end;

procedure __DC__SetTQueryDescription__Query(Instance : TObject; Params : PVariantArgList);
begin
TQueryDescription(Instance).Query:=TQuery(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TDRDataSet,'DRHandle',__DC__GetTDRDataSet__DRHandle,__DC__SetTDRDataSet__DRHandle);
RegisterProperty(TQueryDescription,'Query',__DC__GetTQueryDescription__Query,__DC__SetTQueryDescription__Query);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..9] of TClass = (
TDRAttrDescList,
TDRDataSet,
TDRInstanceItems,
TDRList,
TDRObjectDescList,
TDRObjectItems,
TDRObjectList,
TDRRelationshipDescList,
TDRRelationshipList,
TQueryDescription
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
{RegRegisterMethod(TDRObjectList,'NavigateFrom',TypeInfo(_T0),[
TypeInfo(DRObject),
TypeInfo(string)],Addr(TDRObjectList.NavigateFrom))}

{RegRegisterMethod(TDRRelationshipList,'NavigateFromTo',TypeInfo(_T1),[
TypeInfo(DRObject),
TypeInfo(DRObject)],Addr(TDRRelationshipList.NavigateFromTo))}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
