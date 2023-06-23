{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit DSDESIGN_D2006;
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
  Windows,
  SysUtils,
  Messages,
  Classes,
  Graphics,
  Controls,
  Forms,
  StdCtrls,
  ExtCtrls,
  DB,
  DBCtrls,
  DsnDBCst,
  DesignWindows,
  Menus,
  DrpCtrls,
  ActnPopup,
  WideStrings,
  DSDesign;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
{_T0 = procedure (p0 : IDesigner;
p1 : TDataset;
p2 : TDSDesignerClass) of object;}

{_T1 = function (p0 : IDesigner;
p1 : TDataset;
p2 : TDSDesignerClass;
var p3 : Boolean): TFieldsEditor of object;}

{_T2 = function (p0 : TDataset;
const p1 : string;
p2 : TFieldClass;
p3 : TComponent): string of object;}

_T3 = procedure  of object;

_T4 = _T3;

_T5 = function (const p0 : WideString;
p1 : string): TField of object;

_T6 = _T3;

_T7 = _T3;

_T8 = function (p0 : TField): string of object;

_T9 = procedure (p0 : TPopupMenu) of object;

_T10 = function : Boolean of object;

_T11 = _T10;

_T12 = procedure (p0 : TPopupMenu;
p1 : TEditState) of object;

_T13 = procedure (p0 : TObject) of object;

_T14 = _T13;

_T15 = _T13;

_T16 = _T13;

_T17 = procedure (p0 : TObject;
p1 : TObject;
p2 : Integer;
p3 : Integer;
p4 : TDragState;
var p5 : Boolean) of object;

_T18 = procedure (p0 : TObject;
p1 : TObject;
p2 : Integer;
p3 : Integer) of object;

_T19 = procedure (p0 : TObject;
var p1 : Word;
p2 : TShiftState) of object;

_T20 = _T13;

_T21 = _T13;

_T22 = _T13;

_T23 = procedure (p0 : TObject;
var p1 : Char) of object;

_T24 = _T13;

_T25 = procedure (p0 : TObject;
var p1 : TDragObject) of object;

_T26 = _T13;

_T27 = _T13;

_T28 = _T13;

_T29 = _T13;

_T30 = _T13;

_T31 = _T13;

{_T32 = function (p0 : TSelectionProc): Boolean of object;}

_T33 = function : TField of object;

_T34 = function (const p0 : string;
const p1 : string;
const p2 : string;
const p3 : string;
const p4 : string;
p5 : Word): TField of object;

_T35 = function (p0 : Boolean): TField of object;

function __DC__GetTDSDesigner__FieldsEditor(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDSDesigner(Instance).FieldsEditor);
end;

function __DC__GetTFieldsEditor__Dataset(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TFieldsEditor(Instance).Dataset);
end;

procedure __DC__SetTFieldsEditor__Dataset(Instance : TObject; Params : PVariantArgList);
begin
TFieldsEditor(Instance).Dataset:=TDataset(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTFieldsEditor__DSDesigner(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TFieldsEditor(Instance).DSDesigner);
end;

procedure __RegisterProps;
begin
RegisterProperty(TDSDesigner,'FieldsEditor',__DC__GetTDSDesigner__FieldsEditor,nil);
RegisterProperty(TFieldsEditor,'Dataset',__DC__GetTFieldsEditor__Dataset,__DC__SetTFieldsEditor__Dataset);
RegisterProperty(TFieldsEditor,'DSDesigner',__DC__GetTFieldsEditor__DSDesigner,nil);
end;

function __DC__GetDSDesign__DesignerCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := DSDesign.DesignerCount;
end;

procedure __DC__SetDSDesign__DesignerCount(Instance : TObject; Params : PVariantArgList);
begin
DSDesign.DesignerCount:=OleVariant(Params^[0]);
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('DesignerCount',__DC__GetDSDesign__DesignerCount,__DC__SetDSDesign__DesignerCount));
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

const ClassList : array[0..1] of TClass = (
TDSDesigner,
TFieldsEditor
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
procedure _mreg_0;
begin
//RegRegisterMethod(TDSDesigner,'BeginCreateFields',TypeInfo(_T3),NoParams, pointer(4));
RegRegisterMethod(TDSDesigner,'BeginCreateFields',TypeInfo(_T3),NoParams,  getVMTProcAddr('TDSDesigner','BeginCreateFields',4));


//RegRegisterMethod(TDSDesigner,'BeginUpdateFieldDefs',TypeInfo(_T4),NoParams, pointer(8));
RegRegisterMethod(TDSDesigner,'BeginUpdateFieldDefs',TypeInfo(_T4),NoParams,  getVMTProcAddr('TDSDesigner','BeginUpdateFieldDefs',8));


//RegRegisterMethod(TDSDesigner,'DoCreateField',TypeInfo(_T5),[TypeInfo(WideString),TypeInfo(string),TypeInfo(TField)], pointer(12));
RegRegisterMethod(TDSDesigner,'DoCreateField',TypeInfo(_T5),[TypeInfo(WideString),TypeInfo(string),TypeInfo(TField)],  getVMTProcAddr('TDSDesigner','DoCreateField',12));


//RegRegisterMethod(TDSDesigner,'EndCreateFields',TypeInfo(_T6),NoParams, pointer(16));
RegRegisterMethod(TDSDesigner,'EndCreateFields',TypeInfo(_T6),NoParams,  getVMTProcAddr('TDSDesigner','EndCreateFields',16));


//RegRegisterMethod(TDSDesigner,'EndUpdateFieldDefs',TypeInfo(_T7),NoParams, pointer(20));
RegRegisterMethod(TDSDesigner,'EndUpdateFieldDefs',TypeInfo(_T7),NoParams,  getVMTProcAddr('TDSDesigner','EndUpdateFieldDefs',20));


//RegRegisterMethod(TDSDesigner,'GetControlClass',TypeInfo(_T8),[TypeInfo(TField),TypeInfo(string)], pointer(24));
RegRegisterMethod(TDSDesigner,'GetControlClass',TypeInfo(_T8),[TypeInfo(TField),TypeInfo(string)],  getVMTProcAddr('TDSDesigner','GetControlClass',24));


//RegRegisterMethod(TDSDesigner,'InitializeMenu',TypeInfo(_T9),[TypeInfo(TPopupMenu)], pointer(28));
RegRegisterMethod(TDSDesigner,'InitializeMenu',TypeInfo(_T9),[TypeInfo(TPopupMenu)],  getVMTProcAddr('TDSDesigner','InitializeMenu',28));


//RegRegisterMethod(TDSDesigner,'SupportsAggregates',TypeInfo(_T10),[TypeInfo(Boolean)], pointer(32));
RegRegisterMethod(TDSDesigner,'SupportsAggregates',TypeInfo(_T10),[TypeInfo(Boolean)],  getVMTProcAddr('TDSDesigner','SupportsAggregates',32));


//RegRegisterMethod(TDSDesigner,'SupportsInternalCalc',TypeInfo(_T11),[TypeInfo(Boolean)], pointer(36));
RegRegisterMethod(TDSDesigner,'SupportsInternalCalc',TypeInfo(_T11),[TypeInfo(Boolean)],  getVMTProcAddr('TDSDesigner','SupportsInternalCalc',36));


//RegRegisterMethod(TDSDesigner,'UpdateMenus',TypeInfo(_T12),[TypeInfo(TPopupMenu),TypeInfo(TEditState)], pointer(40));
RegRegisterMethod(TDSDesigner,'UpdateMenus',TypeInfo(_T12),[TypeInfo(TPopupMenu),TypeInfo(TEditState)],  getVMTProcAddr('TDSDesigner','UpdateMenus',40));


RegRegisterMethod(TFieldsEditor,'FormCreate',TypeInfo(_T13),[
TypeInfo(TObject)],Addr(TFieldsEditor.FormCreate));

RegRegisterMethod(TFieldsEditor,'FormDestroy',TypeInfo(_T14),[
TypeInfo(TObject)],Addr(TFieldsEditor.FormDestroy));

RegRegisterMethod(TFieldsEditor,'AddItemClick',TypeInfo(_T15),[
TypeInfo(TObject)],Addr(TFieldsEditor.AddItemClick));

RegRegisterMethod(TFieldsEditor,'DeleteItemClick',TypeInfo(_T16),[
TypeInfo(TObject)],Addr(TFieldsEditor.DeleteItemClick));

RegRegisterMethod(TFieldsEditor,'FieldListBoxDragOver',TypeInfo(_T17),[
TypeInfo(TObject),
TypeInfo(TObject),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(TDragState),
TypeInfo(Boolean)],Addr(TFieldsEditor.FieldListBoxDragOver));

RegRegisterMethod(TFieldsEditor,'FieldListBoxDragDrop',TypeInfo(_T18),[
TypeInfo(TObject),
TypeInfo(TObject),
TypeInfo(Integer),
TypeInfo(Integer)],Addr(TFieldsEditor.FieldListBoxDragDrop));

RegRegisterMethod(TFieldsEditor,'AListBoxKeyDown',TypeInfo(_T19),[
TypeInfo(TObject),
TypeInfo(Word),
TypeInfo(TShiftState)],Addr(TFieldsEditor.AListBoxKeyDown));

RegRegisterMethod(TFieldsEditor,'NewItemClick',TypeInfo(_T20),[
TypeInfo(TObject)],Addr(TFieldsEditor.NewItemClick));

RegRegisterMethod(TFieldsEditor,'SelectTable',TypeInfo(_T21),[
TypeInfo(TObject)],Addr(TFieldsEditor.SelectTable));

RegRegisterMethod(TFieldsEditor,'AListBoxClick',TypeInfo(_T22),[
TypeInfo(TObject)],Addr(TFieldsEditor.AListBoxClick));

RegRegisterMethod(TFieldsEditor,'AListBoxKeyPress',TypeInfo(_T23),[
TypeInfo(TObject),
TypeInfo(Char)],Addr(TFieldsEditor.AListBoxKeyPress));

RegRegisterMethod(TFieldsEditor,'ClearAllClick',TypeInfo(_T24),[
TypeInfo(TObject)],Addr(TFieldsEditor.ClearAllClick));

RegRegisterMethod(TFieldsEditor,'FieldListBoxStartDrag',TypeInfo(_T25),[
TypeInfo(TObject),
TypeInfo(TDragObject)],Addr(TFieldsEditor.FieldListBoxStartDrag));

RegRegisterMethod(TFieldsEditor,'SelectAllItemClick',TypeInfo(_T26),[
TypeInfo(TObject)],Addr(TFieldsEditor.SelectAllItemClick));

RegRegisterMethod(TFieldsEditor,'CutItemClick',TypeInfo(_T27),[
TypeInfo(TObject)],Addr(TFieldsEditor.CutItemClick));

RegRegisterMethod(TFieldsEditor,'CopyItemClick',TypeInfo(_T28),[
TypeInfo(TObject)],Addr(TFieldsEditor.CopyItemClick));

RegRegisterMethod(TFieldsEditor,'PasteItemClick',TypeInfo(_T29),[
TypeInfo(TObject)],Addr(TFieldsEditor.PasteItemClick));

RegRegisterMethod(TFieldsEditor,'LocalMenuPopup',TypeInfo(_T30),[
TypeInfo(TObject)],Addr(TFieldsEditor.LocalMenuPopup));

RegRegisterMethod(TFieldsEditor,'AddAllFields',TypeInfo(_T31),[
TypeInfo(TObject)],Addr(TFieldsEditor.AddAllFields));

RegRegisterMethod(TFieldsEditor,'DoNewField',TypeInfo(_T33),[TypeInfo(TField)],Addr(TFieldsEditor.DoNewField));

RegRegisterMethod(TFieldsEditor,'DoNewLookupField',TypeInfo(_T34),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),
TypeInfo(Word),TypeInfo(TField)],Addr(TFieldsEditor.DoNewLookupField));

RegRegisterMethod(TFieldsEditor,'DoAddFields',TypeInfo(_T35),[
TypeInfo(Boolean),TypeInfo(TField)],Addr(TFieldsEditor.DoAddFields));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
{RegisterProc(nil,'ShowFieldsEditor',mtProc,TypeInfo(_T0),[
TypeInfo(IDesigner),
TypeInfo(TDataset),
TypeInfo(TDSDesignerClass)],Addr(ShowFieldsEditor),cRegister)}

{RegisterProc(nil,'CreateFieldsEditor',mtProc,TypeInfo(_T1),[
TypeInfo(IDesigner),
TypeInfo(TDataset),
TypeInfo(TDSDesignerClass),
TypeInfo(Boolean),TypeInfo(TFieldsEditor)],Addr(CreateFieldsEditor),cRegister)}

{RegisterProc(nil,'CreateUniqueName',mtProc,TypeInfo(_T2),[
TypeInfo(TDataset),
TypeInfo(string),
TypeInfo(TFieldClass),
TypeInfo(TComponent),TypeInfo(string)],Addr(CreateUniqueName),cRegister)}

{RegRegisterMethod(TFieldsEditor,'ForEachSelection',TypeInfo(_T32),[
TypeInfo(TSelectionProc),TypeInfo(Boolean)],Addr(TFieldsEditor.ForEachSelection))}

RegisterEvent(TypeInfo(TSelectionProc),[
TypeInfo(TField),TypeInfo(Boolean)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
__RegisterVars;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnRegisterVars;
end.