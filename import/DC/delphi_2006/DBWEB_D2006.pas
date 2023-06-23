{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit DBWEB_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  SysUtils,
  Classes,
  HTTPApp,
  DB,
  HTTPProd,
  DBWeb;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : TDataSet;
p1 : TDSTableProducer;
p2 : Integer): string of object;

_T1 = function : string of object;

_T2 = procedure (p0 : Integer;
p1 : Integer;
var p2 : THTMLBgColor;
var p3 : THTMLAlign;
var p4 : THTMLVAlign;
var p5 : string;
var p6 : string) of object;

_T3 = procedure (var p0 : string;
var p1 : THTMLCaptionAlignment) of object;

_T4 = function (p0 : Integer;
p1 : Integer;
p2 : string;
const p3 : string;
const p4 : THTMLBgColor;
p5 : THTMLAlign;
p6 : THTMLVAlign;
const p7 : string): string of object;

_T5 = function : TDataSet of object;

_T6 = _T1;

_T7 = procedure (p0 : TDataSet) of object;

_T8 = _T1;

_T9 = _T1;

_T10 = procedure  of object;

_T11 = _T10;

_T12 = procedure (p0 : TDSTableProducer) of object;

_T13 = _T10;

_T14 = _T10;

_T15 = _T10;

_T16 = _T10;

{_T17 = procedure (p0 : TDSTableProducer;
p1 : THTMLTableColumnClass) of object;}

_T18 = function : THTMLTableColumn of object;

_T19 = _T10;

_T20 = _T10;

_T21 = _T12;

_T22 = function (const p0 : string): Boolean of object;

_T23 = _T10;

_T24 = _T10;

_T25 = _T10;

function __DC__GetTDSTableProducer__Caption(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDSTableProducer(Instance).Caption;
end;

procedure __DC__SetTDSTableProducer__Caption(Instance : TObject; Params : PVariantArgList);
begin
TDSTableProducer(Instance).Caption:=OleVariant(Params^[0]);
end;

function __DC__GetTDSTableProducer__CaptionAlignment(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDSTableProducer(Instance).CaptionAlignment;
end;

procedure __DC__SetTDSTableProducer__CaptionAlignment(Instance : TObject; Params : PVariantArgList);
begin
TDSTableProducer(Instance).CaptionAlignment:=OleVariant(Params^[0]);
end;

function __DC__GetTDSTableProducer__Columns(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDSTableProducer(Instance).Columns);
end;

procedure __DC__SetTDSTableProducer__Columns(Instance : TObject; Params : PVariantArgList);
begin
TDSTableProducer(Instance).Columns:=THTMLTableColumns(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDSTableProducer__DataSet(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDSTableProducer(Instance).DataSet);
end;

procedure __DC__SetTDSTableProducer__DataSet(Instance : TObject; Params : PVariantArgList);
begin
TDSTableProducer(Instance).DataSet:=TDataSet(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDSTableProducer__Editor(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDSTableProducer(Instance).Editor);
end;

procedure __DC__SetTDSTableProducer__Editor(Instance : TObject; Params : PVariantArgList);
begin
TDSTableProducer(Instance).Editor:=TDSTableProducerEditor(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDSTableProducer__Footer(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDSTableProducer(Instance).Footer);
end;

procedure __DC__SetTDSTableProducer__Footer(Instance : TObject; Params : PVariantArgList);
begin
TDSTableProducer(Instance).Footer:=TStrings(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDSTableProducer__Header(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDSTableProducer(Instance).Header);
end;

procedure __DC__SetTDSTableProducer__Header(Instance : TObject; Params : PVariantArgList);
begin
TDSTableProducer(Instance).Header:=TStrings(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDSTableProducer__MaxRows(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDSTableProducer(Instance).MaxRows;
end;

procedure __DC__SetTDSTableProducer__MaxRows(Instance : TObject; Params : PVariantArgList);
begin
TDSTableProducer(Instance).MaxRows:=OleVariant(Params^[0]);
end;

function __DC__GetTDSTableProducer__RowAttributes(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDSTableProducer(Instance).RowAttributes);
end;

procedure __DC__SetTDSTableProducer__RowAttributes(Instance : TObject; Params : PVariantArgList);
begin
TDSTableProducer(Instance).RowAttributes:=THTMLTableRowAttributes(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDSTableProducer__TableAttributes(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDSTableProducer(Instance).TableAttributes);
end;

procedure __DC__SetTDSTableProducer__TableAttributes(Instance : TObject; Params : PVariantArgList);
begin
TDSTableProducer(Instance).TableAttributes:=THTMLTableAttributes(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDSTableProducerEditor__DSTableProducer(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDSTableProducerEditor(Instance).DSTableProducer);
end;

function __DC__GetTDSTableProducerEditor__DataSource(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDSTableProducerEditor(Instance).DataSource);
end;

procedure __DC__SetTDSTableProducerEditor__DataSource(Instance : TObject; Params : PVariantArgList);
begin
TDSTableProducerEditor(Instance).DataSource:=TDataSource(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTHTMLTableColumn__Field(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(THTMLTableColumn(Instance).Field);
end;

procedure __DC__SetTHTMLTableColumn__Field(Instance : TObject; Params : PVariantArgList);
begin
THTMLTableColumn(Instance).Field:=TField(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTHTMLTableColumn__DSTableProducer(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(THTMLTableColumn(Instance).DSTableProducer);
end;

function __DC__GetTHTMLTableColumns__State(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := THTMLTableColumns(Instance).State;
end;

procedure __DC__SetTHTMLTableColumns__State(Instance : TObject; Params : PVariantArgList);
begin
THTMLTableColumns(Instance).State:=OleVariant(Params^[0]);
end;

function __DC__GetTHTMLTableColumns__DSTableProducer(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(THTMLTableColumns(Instance).DSTableProducer);
end;

function __DC__GetTHTMLTableColumns__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(THTMLTableColumns(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTHTMLTableColumns__Items(Instance : TObject; Params : PVariantArgList);
begin
THTMLTableColumns(Instance).Items[OleVariant(Params^[1])]:=THTMLTableColumn(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTHTTPDataLink__DefaultFields(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := THTTPDataLink(Instance).DefaultFields;
end;

function __DC__GetTHTTPDataLink__FieldCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := THTTPDataLink(Instance).FieldCount;
end;

function __DC__GetTHTTPDataLink__Fields(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(THTTPDataLink(Instance).Fields[OleVariant(Params^[0])]);
end;

function __DC__GetTHTTPDataLink__SparseMap(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := THTTPDataLink(Instance).SparseMap;
end;

procedure __DC__SetTHTTPDataLink__SparseMap(Instance : TObject; Params : PVariantArgList);
begin
THTTPDataLink(Instance).SparseMap:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TDSTableProducer,'Caption',__DC__GetTDSTableProducer__Caption,__DC__SetTDSTableProducer__Caption);
RegisterProperty(TDSTableProducer,'CaptionAlignment',__DC__GetTDSTableProducer__CaptionAlignment,__DC__SetTDSTableProducer__CaptionAlignment);
RegisterProperty(TDSTableProducer,'Columns',__DC__GetTDSTableProducer__Columns,__DC__SetTDSTableProducer__Columns);
RegisterProperty(TDSTableProducer,'DataSet',__DC__GetTDSTableProducer__DataSet,__DC__SetTDSTableProducer__DataSet);
RegisterProperty(TDSTableProducer,'Editor',__DC__GetTDSTableProducer__Editor,__DC__SetTDSTableProducer__Editor);
RegisterProperty(TDSTableProducer,'Footer',__DC__GetTDSTableProducer__Footer,__DC__SetTDSTableProducer__Footer);
RegisterProperty(TDSTableProducer,'Header',__DC__GetTDSTableProducer__Header,__DC__SetTDSTableProducer__Header);
RegisterProperty(TDSTableProducer,'MaxRows',__DC__GetTDSTableProducer__MaxRows,__DC__SetTDSTableProducer__MaxRows);
RegisterProperty(TDSTableProducer,'RowAttributes',__DC__GetTDSTableProducer__RowAttributes,__DC__SetTDSTableProducer__RowAttributes);
RegisterProperty(TDSTableProducer,'TableAttributes',__DC__GetTDSTableProducer__TableAttributes,__DC__SetTDSTableProducer__TableAttributes);
RegisterProperty(TDSTableProducerEditor,'DSTableProducer',__DC__GetTDSTableProducerEditor__DSTableProducer,nil);
RegisterProperty(TDSTableProducerEditor,'DataSource',__DC__GetTDSTableProducerEditor__DataSource,__DC__SetTDSTableProducerEditor__DataSource);
RegisterProperty(THTMLTableColumn,'Field',__DC__GetTHTMLTableColumn__Field,__DC__SetTHTMLTableColumn__Field);
RegisterProperty(THTMLTableColumn,'DSTableProducer',__DC__GetTHTMLTableColumn__DSTableProducer,nil);
RegisterProperty(THTMLTableColumns,'State',__DC__GetTHTMLTableColumns__State,__DC__SetTHTMLTableColumns__State);
RegisterProperty(THTMLTableColumns,'DSTableProducer',__DC__GetTHTMLTableColumns__DSTableProducer,nil);
RegisterIndexedProperty(THTMLTableColumns,'Items',1,True,__DC__GetTHTMLTableColumns__Items,__DC__SetTHTMLTableColumns__Items);
RegisterProperty(THTTPDataLink,'DefaultFields',__DC__GetTHTTPDataLink__DefaultFields,nil);
RegisterProperty(THTTPDataLink,'FieldCount',__DC__GetTHTTPDataLink__FieldCount,nil);
RegisterIndexedProperty(THTTPDataLink,'Fields',1,False,__DC__GetTHTTPDataLink__Fields,nil);
RegisterProperty(THTTPDataLink,'SparseMap',__DC__GetTHTTPDataLink__SparseMap,__DC__SetTHTTPDataLink__SparseMap);
end;

const __ConstNames0 : array[0..4] of string = (
'csDefault'
,'csCustom'
,'caDefault'
,'caTop'
,'caBottom'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,csDefault));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,csCustom));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,caDefault));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,caTop));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,caBottom));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..5] of TClass = (
TDataSetTableProducer,
TDSTableProducer,
TDSTableProducerEditor,
THTMLTableColumn,
THTMLTableColumns,
THTTPDataLink
);
 function __getFullMethodName(sclassName, smethodName:String):String; 
 begin 
   result := format('%s.%s',[sClassName, sMethodName]) 
 end; 
procedure fillVMTProcs();
var
  ctx : TRttiContext;
  t:TRttiType;
  m:TRttiMethod;
  i:Integer;
begin
  ctx := TRttiContext.Create;
  try
    for i := 0 to length(classList) - 1 do
    begin
      t:=ctx.GetType(classList[i].ClassInfo);
      for m in t.GetMethods  do
      begin
        if m.DispatchKind = dkVtable then
        vmtMethodList.addObject(__getFullMethodName(classList[i].className,m.Name), pointer(m.VirtualIndex*4));
      end;
      t.free;
    end;
  finally
    ctx.free;
  end;
end;
function getVMTProcAddr(className, MethodName:String;oldAddr:Integer):Pointer;
var i:Integer;
begin
  i:=vmtMethodList.indexOf(__getFullMethodName(className,methodName));
  if i>-1 then 
    result:=pointer(vmtMethodList.Objects[i])
  else 
  result:=pointer(oldAddr);
end;  
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..0] of string = (
'HtmlTable'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(TDataSet),
TypeInfo(TDSTableProducer),
TypeInfo(Integer),TypeInfo(string)],Addr(HtmlTable),cRegister);

RegRegisterMethod(TDSTableProducer,'ColumnHeader',TypeInfo(_T1),[TypeInfo(string)], pointer(MinVMTOffset - 16));

RegRegisterMethod(TDSTableProducer,'DoFormatCell',TypeInfo(_T2),[
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(THTMLBgColor),
TypeInfo(THTMLAlign),
TypeInfo(THTMLVAlign),
TypeInfo(string),
TypeInfo(string)], pointer(MinVMTOffset - 17));

RegRegisterMethod(TDSTableProducer,'DoGetCaption',TypeInfo(_T3),[
TypeInfo(string),
TypeInfo(THTMLCaptionAlignment)], pointer(MinVMTOffset - 18));

RegRegisterMethod(TDSTableProducer,'FormatCell',TypeInfo(_T4),[
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(string),
TypeInfo(string),
TypeInfo(THTMLBgColor),
TypeInfo(THTMLAlign),
TypeInfo(THTMLVAlign),
TypeInfo(string),TypeInfo(string)], pointer(MinVMTOffset - 19));

//RegRegisterMethod(TDSTableProducer,'GetDataSet',TypeInfo(_T5),[TypeInfo(TDataSet)], pointer(60));
RegRegisterMethod(TDSTableProducer,'GetDataSet',TypeInfo(_T5),[TypeInfo(TDataSet)],  getVMTProcAddr('TDSTableProducer','GetDataSet',60));


RegRegisterMethod(TDSTableProducer,'RowHeader',TypeInfo(_T6),[TypeInfo(string)], pointer(MinVMTOffset - 20));

//RegRegisterMethod(TDSTableProducer,'SetDataSet',TypeInfo(_T7),[TypeInfo(TDataSet)], pointer(64));
RegRegisterMethod(TDSTableProducer,'SetDataSet',TypeInfo(_T7),[TypeInfo(TDataSet)],  getVMTProcAddr('TDSTableProducer','SetDataSet',64));


RegRegisterMethod(TDSTableProducer,'TableHeader',TypeInfo(_T8),[TypeInfo(string)], pointer(MinVMTOffset - 21));

RegRegisterMethod(TDSTableProducer,'TableCaption',TypeInfo(_T9),[TypeInfo(string)], pointer(MinVMTOffset - 22));

RegRegisterMethod(TDSTableProducer,'BeginUpdate',TypeInfo(_T10),NoParams,Addr(TDSTableProducer.BeginUpdate));

RegRegisterMethod(TDSTableProducer,'EndUpdate',TypeInfo(_T11),NoParams,Addr(TDSTableProducer.EndUpdate));

RegisterProc(TDSTableProducerEditor,'Create',mtConstructor,TypeInfo(_T12),[
TypeInfo(TDSTableProducer)],Addr(TDSTableProducerEditor.Create),cRegister);

//RegRegisterMethod(TDSTableProducerEditor,'Changed',TypeInfo(_T13),NoParams, pointer(0));
RegRegisterMethod(TDSTableProducerEditor,'Changed',TypeInfo(_T13),NoParams,  getVMTProcAddr('TDSTableProducerEditor','Changed',0));


//RegRegisterMethod(TDSTableProducerEditor,'PostChange',TypeInfo(_T14),NoParams, pointer(4));
RegRegisterMethod(TDSTableProducerEditor,'PostChange',TypeInfo(_T14),NoParams,  getVMTProcAddr('TDSTableProducerEditor','PostChange',4));


RegRegisterMethod(THTMLTableColumn,'RestoreDefaults',TypeInfo(_T15),NoParams,Addr(THTMLTableColumn.RestoreDefaults));

RegRegisterMethod(THTMLTableColumn,'Update',TypeInfo(_T16),NoParams,Addr(THTMLTableColumn.Update));

RegRegisterMethod(THTMLTableColumns,'Add',TypeInfo(_T18),[TypeInfo(THTMLTableColumn)],Addr(THTMLTableColumns.Add));

RegRegisterMethod(THTMLTableColumns,'RestoreDefaults',TypeInfo(_T19),NoParams,Addr(THTMLTableColumns.RestoreDefaults));

RegRegisterMethod(THTMLTableColumns,'RebuildColumns',TypeInfo(_T20),NoParams,Addr(THTMLTableColumns.RebuildColumns));

RegisterProc(THTTPDataLink,'Create',mtConstructor,TypeInfo(_T21),[
TypeInfo(TDSTableProducer)],Addr(THTTPDataLink.Create),cRegister);

RegRegisterMethod(THTTPDataLink,'AddMapping',TypeInfo(_T22),[
TypeInfo(string),TypeInfo(Boolean)],Addr(THTTPDataLink.AddMapping));

RegRegisterMethod(THTTPDataLink,'ClearMapping',TypeInfo(_T23),NoParams,Addr(THTTPDataLink.ClearMapping));

RegRegisterMethod(THTTPDataLink,'Modified',TypeInfo(_T24),NoParams,Addr(THTTPDataLink.Modified));

RegRegisterMethod(THTTPDataLink,'Reset',TypeInfo(_T25),NoParams,Addr(THTTPDataLink.Reset));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
{RegisterProc(THTMLTableColumns,'Create',mtConstructor,TypeInfo(_T17),[
TypeInfo(TDSTableProducer),
TypeInfo(THTMLTableColumnClass)],Addr(THTMLTableColumns.Create),cRegister)}

RegisterEvent(TypeInfo(TCreateContentEvent),[
TypeInfo(TObject),
TypeInfo(Boolean)]);

RegisterEvent(TypeInfo(THTMLDataSetEmpty),[
TypeInfo(TObject),
TypeInfo(Boolean)]);

RegisterEvent(TypeInfo(THTMLFormatCellEvent),[
TypeInfo(TObject),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(THTMLBgColor),
TypeInfo(THTMLAlign),
TypeInfo(THTMLVAlign),
TypeInfo(string),
TypeInfo(string)]);

RegisterEvent(TypeInfo(THTMLGetTableCaptionEvent),[
TypeInfo(TObject),
TypeInfo(string),
TypeInfo(THTMLCaptionAlignment)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
