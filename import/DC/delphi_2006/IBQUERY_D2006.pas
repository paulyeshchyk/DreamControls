{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IBQUERY_D2006;
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
  DB,
  IBHeader,
  IB,
  IBDatabase,
  IBCustomDataSet,
  IBSQL,
  IBQuery;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : TIBBatchInput) of object;

_T1 = procedure (p0 : TIBBatchOutput) of object;

_T2 = procedure  of object;

_T3 = function (const p0 : string): TParam of object;

_T4 = _T2;

_T5 = _T2;

function __DC__GetTIBQuery__LiveMode(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
  tmp : TLiveModes;
begin
tmp := TIBQuery(Instance).LiveMode;
result := VarFromSet(tmp, sizeof(tmp));
end;

function __DC__GetTIBQuery__Prepared(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBQuery(Instance).Prepared;
end;

procedure __DC__SetTIBQuery__Prepared(Instance : TObject; Params : PVariantArgList);
begin
TIBQuery(Instance).Prepared:=OleVariant(Params^[0]);
end;

function __DC__GetTIBQuery__ParamCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBQuery(Instance).ParamCount;
end;

function __DC__GetTIBQuery__StmtHandle(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := PointerToVariant(TIBQuery(Instance).StmtHandle);
end;

function __DC__GetTIBQuery__StatementType(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBQuery(Instance).StatementType;
end;

function __DC__GetTIBQuery__Text(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBQuery(Instance).Text;
end;

function __DC__GetTIBQuery__RowsAffected(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBQuery(Instance).RowsAffected;
end;

function __DC__GetTIBQuery__GenerateParamNames(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIBQuery(Instance).GenerateParamNames;
end;

procedure __DC__SetTIBQuery__GenerateParamNames(Instance : TObject; Params : PVariantArgList);
begin
TIBQuery(Instance).GenerateParamNames:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIBQuery,'LiveMode',__DC__GetTIBQuery__LiveMode,nil);
RegisterProperty(TIBQuery,'Prepared',__DC__GetTIBQuery__Prepared,__DC__SetTIBQuery__Prepared);
RegisterProperty(TIBQuery,'ParamCount',__DC__GetTIBQuery__ParamCount,nil);
RegisterProperty(TIBQuery,'StmtHandle',__DC__GetTIBQuery__StmtHandle,nil);
RegisterProperty(TIBQuery,'StatementType',__DC__GetTIBQuery__StatementType,nil);
RegisterProperty(TIBQuery,'Text',__DC__GetTIBQuery__Text,nil);
RegisterProperty(TIBQuery,'RowsAffected',__DC__GetTIBQuery__RowsAffected,nil);
RegisterProperty(TIBQuery,'GenerateParamNames',__DC__GetTIBQuery__GenerateParamNames,__DC__SetTIBQuery__GenerateParamNames);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TIBQuery
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
RegRegisterMethod(TIBQuery,'BatchInput',TypeInfo(_T0),[
TypeInfo(TIBBatchInput)],Addr(TIBQuery.BatchInput));

RegRegisterMethod(TIBQuery,'BatchOutput',TypeInfo(_T1),[
TypeInfo(TIBBatchOutput)],Addr(TIBQuery.BatchOutput));

RegRegisterMethod(TIBQuery,'ExecSQL',TypeInfo(_T2),NoParams,Addr(TIBQuery.ExecSQL));

RegRegisterMethod(TIBQuery,'ParamByName',TypeInfo(_T3),[
TypeInfo(string),TypeInfo(TParam)],Addr(TIBQuery.ParamByName));

RegRegisterMethod(TIBQuery,'Prepare',TypeInfo(_T4),NoParams,Addr(TIBQuery.Prepare));

RegRegisterMethod(TIBQuery,'UnPrepare',TypeInfo(_T5),NoParams,Addr(TIBQuery.UnPrepare));

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
