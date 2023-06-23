{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcpalettegrid_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  Types,
  activex,
  dcscript,
  dcsystem,
  Controls,
  Classes,
  Windows,
  Messages,
  Forms,
  Graphics,
  DCCommon,
  DCdreamLib,
  DCGraphFunc,
  DCImageListBox,
  DCPaletteGrid;
function ConvertTRectToVariant(var R : TRect) : OleVariant;
function ConvertVariantToTRect(const V : OleVariant) : TRect;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TRect__Wrapper = class(TDCRecordWrapper)
private
fR : TRect;
public
function GetRecordPtr : pointer; override;
published
procedure setLeft(const val : Longint);
function getLeft : Longint;
property Left : Longint read getLeft write setLeft;
procedure setTop(const val : Longint);
function getTop : Longint;
property Top : Longint read getTop write setTop;
procedure setRight(const val : Longint);
function getRight : Longint;
property Right : Longint read getRight write setRight;
procedure setBottom(const val : Longint);
function getBottom : Longint;
property Bottom : Longint read getBottom write setBottom;
end;
type __TDCCustomPaletteGridHeader__ = class(TDCCustomPaletteGridHeader);
type
{_T0 = function : TDCPaletteGridHeaderClass of object;}

_T1 = procedure  of object;

_T2 = _T1;

_T3 = _T1;

_T4 = procedure (p0 : Integer) of object;

_T5 = procedure (p0 : Integer;
var p1 : Integer) of object;

_T6 = _T4;

_T7 = procedure (p0 : Integer;
const p1 : IDispatch) of object;

_T8 = function (p0 : Integer): IDispatch of object;

_T9 = procedure (p0 : TCanvas;
const p1 : IDispatch;
p2 : Boolean) of object;

{_T10 = function : TDCPaletteGridSubItemClass of object;}

_T11 = procedure (p0 : TCanvas;
const p1 : IDispatch) of object;

_T12 = _T4;

function __TRect__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TRect__Wrapper.setLeft(const val : Longint);
begin
TRect(GetRecordPtr^).Left := val;
end;
function __TRect__Wrapper.getLeft : Longint;
begin
result := TRect(GetRecordPtr^).Left;
end;
procedure __TRect__Wrapper.setTop(const val : Longint);
begin
TRect(GetRecordPtr^).Top := val;
end;
function __TRect__Wrapper.getTop : Longint;
begin
result := TRect(GetRecordPtr^).Top;
end;
procedure __TRect__Wrapper.setRight(const val : Longint);
begin
TRect(GetRecordPtr^).Right := val;
end;
function __TRect__Wrapper.getRight : Longint;
begin
result := TRect(GetRecordPtr^).Right;
end;
procedure __TRect__Wrapper.setBottom(const val : Longint);
begin
TRect(GetRecordPtr^).Bottom := val;
end;
function __TRect__Wrapper.getBottom : Longint;
begin
result := TRect(GetRecordPtr^).Bottom;
end;
procedure __TDCCustomPaletteGridHeader__InvalidateItem__Wrapper(__Instance : TDCCustomPaletteGridHeader;
p0 : Integer;
const p1 : IDispatch);
var
__p1 : ^TRect;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
__TDCCustomPaletteGridHeader__(__Instance).InvalidateItem(p0,__p1^);
end;

function __TDCCustomPaletteGridHeader__GetColRect__Wrapper(__Instance : TDCCustomPaletteGridHeader;
p0 : Integer): IDispatch;
var
__result : TRect;
__wrapper : __TRect__Wrapper;
begin
__result := TDCCustomPaletteGridHeader(__Instance).GetColRect(p0);
__wrapper := __TRect__Wrapper.Create;
__wrapper.fR := __result;
result := IDispatch(__wrapper);
end;

procedure __TDCCustomPaletteGridHeaderItem__DrawCol__Wrapper(__Instance : TDCCustomPaletteGridHeaderItem;
p0 : TCanvas;
const p1 : IDispatch;
p2 : Boolean);
var
__p1 : ^TRect;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
TDCCustomPaletteGridHeaderItem(__Instance).DrawCol(p0,__p1^,p2);
end;

procedure __TDCCustomPaletteGridSubItem__DrawCell__Wrapper(__Instance : TDCCustomPaletteGridSubItem;
p0 : TCanvas;
const p1 : IDispatch);
var
__p1 : ^TRect;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
TDCCustomPaletteGridSubItem(__Instance).DrawCell(p0,__p1^);
end;


type __TRect__Wrapper__ = class(__TRect__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TRect__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTRectToVariant(var R : TRect) : OleVariant;
var
__rw : __TRect__Wrapper__;
begin
__rw := __TRect__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTRect(const V : OleVariant) : TRect;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TRect((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
function __DC__GetTDCCustomPaletteGrid__ItemIndex(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGrid(Instance).ItemIndex;
end;

procedure __DC__SetTDCCustomPaletteGrid__ItemIndex(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGrid(Instance).ItemIndex:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomPaletteGrid__AutoSizeCol(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGrid(Instance).AutoSizeCol;
end;

procedure __DC__SetTDCCustomPaletteGrid__AutoSizeCol(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGrid(Instance).AutoSizeCol:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomPaletteGrid__BorderStyle(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGrid(Instance).BorderStyle;
end;

procedure __DC__SetTDCCustomPaletteGrid__BorderStyle(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGrid(Instance).BorderStyle:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomPaletteGrid__ImageList(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCCustomPaletteGrid(Instance).ImageList);
end;

procedure __DC__SetTDCCustomPaletteGrid__ImageList(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGrid(Instance).ImageList:=TImageList(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCCustomPaletteGrid__CanDragItems(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGrid(Instance).CanDragItems;
end;

procedure __DC__SetTDCCustomPaletteGrid__CanDragItems(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGrid(Instance).CanDragItems:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomPaletteGrid__ColCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGrid(Instance).ColCount;
end;

function __DC__GetTDCCustomPaletteGrid__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCCustomPaletteGrid(Instance).Items);
end;

procedure __DC__SetTDCCustomPaletteGrid__Items(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGrid(Instance).Items:=TDCImageListItems(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCCustomPaletteGrid__Captions(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCCustomPaletteGrid(Instance).Captions);
end;

procedure __DC__SetTDCCustomPaletteGrid__Captions(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGrid(Instance).Captions:=TDCPaletteGridHeaderItems(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCCustomPaletteGrid__Sorted(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGrid(Instance).Sorted;
end;

procedure __DC__SetTDCCustomPaletteGrid__Sorted(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGrid(Instance).Sorted:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomPaletteGrid__SortingCollumn(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGrid(Instance).SortingCollumn;
end;

procedure __DC__SetTDCCustomPaletteGrid__SortingCollumn(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGrid(Instance).SortingCollumn:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomPaletteGridHeader__ColCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGridHeader(Instance).ColCount;
end;

function __DC__GetTDCCustomPaletteGridHeader__AutoSizeCol(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGridHeader(Instance).AutoSizeCol;
end;

procedure __DC__SetTDCCustomPaletteGridHeader__AutoSizeCol(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGridHeader(Instance).AutoSizeCol:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomPaletteGridHeader__Flat(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGridHeader(Instance).Flat;
end;

procedure __DC__SetTDCCustomPaletteGridHeader__Flat(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGridHeader(Instance).Flat:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomPaletteGridHeader__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCCustomPaletteGridHeader(Instance).Items);
end;

procedure __DC__SetTDCCustomPaletteGridHeader__Items(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGridHeader(Instance).Items:=TDCPaletteGridHeaderItems(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCCustomPaletteGridHeader__Width(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGridHeader(Instance).Width;
end;

procedure __DC__SetTDCCustomPaletteGridHeader__Width(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGridHeader(Instance).Width:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomPaletteGridHeader__Height(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGridHeader(Instance).Height;
end;

procedure __DC__SetTDCCustomPaletteGridHeader__Height(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGridHeader(Instance).Height:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomPaletteGridHeader__Color(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGridHeader(Instance).Color;
end;

procedure __DC__SetTDCCustomPaletteGridHeader__Color(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGridHeader(Instance).Color:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomPaletteGridHeaderItem__Width(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGridHeaderItem(Instance).Width;
end;

procedure __DC__SetTDCCustomPaletteGridHeaderItem__Width(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGridHeaderItem(Instance).Width:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomPaletteGridHeaderItem__Caption(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGridHeaderItem(Instance).Caption;
end;

procedure __DC__SetTDCCustomPaletteGridHeaderItem__Caption(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGridHeaderItem(Instance).Caption:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomPaletteGridLineItem__Rows(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCCustomPaletteGridLineItem(Instance).Rows);
end;

procedure __DC__SetTDCCustomPaletteGridLineItem__Rows(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGridLineItem(Instance).Rows:=TDCPaletteGridSubItems(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCCustomPaletteGridSubItem__Text(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomPaletteGridSubItem(Instance).Text;
end;

procedure __DC__SetTDCCustomPaletteGridSubItem__Text(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomPaletteGridSubItem(Instance).Text:=OleVariant(Params^[0]);
end;

function __DC__GetTDCPaletteGridHeaderItems__GridHeader(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCPaletteGridHeaderItems(Instance).GridHeader);
end;

procedure __DC__SetTDCPaletteGridHeaderItems__GridHeader(Instance : TObject; Params : PVariantArgList);
begin
TDCPaletteGridHeaderItems(Instance).GridHeader:=TDCCustomPaletteGridHeader(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCPaletteGridHeaderItems__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCPaletteGridHeaderItems(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTDCPaletteGridHeaderItems__Items(Instance : TObject; Params : PVariantArgList);
begin
TDCPaletteGridHeaderItems(Instance).Items[OleVariant(Params^[1])]:=TCollectionItem(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCPaletteGridSubItems__PaletteGrid(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCPaletteGridSubItems(Instance).PaletteGrid);
end;

procedure __DC__SetTDCPaletteGridSubItems__PaletteGrid(Instance : TObject; Params : PVariantArgList);
begin
TDCPaletteGridSubItems(Instance).PaletteGrid:=TDCCustomPaletteGridLineItem(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCPaletteGridSubItems__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCPaletteGridSubItems(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTDCPaletteGridSubItems__Items(Instance : TObject; Params : PVariantArgList);
begin
TDCPaletteGridSubItems(Instance).Items[OleVariant(Params^[1])]:=TCollectionItem(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TDCCustomPaletteGrid,'ItemIndex',__DC__GetTDCCustomPaletteGrid__ItemIndex,__DC__SetTDCCustomPaletteGrid__ItemIndex);
RegisterProperty(TDCCustomPaletteGrid,'AutoSizeCol',__DC__GetTDCCustomPaletteGrid__AutoSizeCol,__DC__SetTDCCustomPaletteGrid__AutoSizeCol);
RegisterProperty(TDCCustomPaletteGrid,'BorderStyle',__DC__GetTDCCustomPaletteGrid__BorderStyle,__DC__SetTDCCustomPaletteGrid__BorderStyle);
RegisterProperty(TDCCustomPaletteGrid,'ImageList',__DC__GetTDCCustomPaletteGrid__ImageList,__DC__SetTDCCustomPaletteGrid__ImageList);
RegisterProperty(TDCCustomPaletteGrid,'CanDragItems',__DC__GetTDCCustomPaletteGrid__CanDragItems,__DC__SetTDCCustomPaletteGrid__CanDragItems);
RegisterProperty(TDCCustomPaletteGrid,'ColCount',__DC__GetTDCCustomPaletteGrid__ColCount,nil);
RegisterProperty(TDCCustomPaletteGrid,'Items',__DC__GetTDCCustomPaletteGrid__Items,__DC__SetTDCCustomPaletteGrid__Items);
RegisterProperty(TDCCustomPaletteGrid,'Captions',__DC__GetTDCCustomPaletteGrid__Captions,__DC__SetTDCCustomPaletteGrid__Captions);
RegisterProperty(TDCCustomPaletteGrid,'Sorted',__DC__GetTDCCustomPaletteGrid__Sorted,__DC__SetTDCCustomPaletteGrid__Sorted);
RegisterProperty(TDCCustomPaletteGrid,'SortingCollumn',__DC__GetTDCCustomPaletteGrid__SortingCollumn,__DC__SetTDCCustomPaletteGrid__SortingCollumn);
RegisterProperty(TDCCustomPaletteGridHeader,'ColCount',__DC__GetTDCCustomPaletteGridHeader__ColCount,nil);
RegisterProperty(TDCCustomPaletteGridHeader,'AutoSizeCol',__DC__GetTDCCustomPaletteGridHeader__AutoSizeCol,__DC__SetTDCCustomPaletteGridHeader__AutoSizeCol);
RegisterProperty(TDCCustomPaletteGridHeader,'Flat',__DC__GetTDCCustomPaletteGridHeader__Flat,__DC__SetTDCCustomPaletteGridHeader__Flat);
RegisterProperty(TDCCustomPaletteGridHeader,'Items',__DC__GetTDCCustomPaletteGridHeader__Items,__DC__SetTDCCustomPaletteGridHeader__Items);
RegisterProperty(TDCCustomPaletteGridHeader,'Width',__DC__GetTDCCustomPaletteGridHeader__Width,__DC__SetTDCCustomPaletteGridHeader__Width);
RegisterProperty(TDCCustomPaletteGridHeader,'Height',__DC__GetTDCCustomPaletteGridHeader__Height,__DC__SetTDCCustomPaletteGridHeader__Height);
RegisterProperty(TDCCustomPaletteGridHeader,'Color',__DC__GetTDCCustomPaletteGridHeader__Color,__DC__SetTDCCustomPaletteGridHeader__Color);
RegisterProperty(TDCCustomPaletteGridHeaderItem,'Width',__DC__GetTDCCustomPaletteGridHeaderItem__Width,__DC__SetTDCCustomPaletteGridHeaderItem__Width);
RegisterProperty(TDCCustomPaletteGridHeaderItem,'Caption',__DC__GetTDCCustomPaletteGridHeaderItem__Caption,__DC__SetTDCCustomPaletteGridHeaderItem__Caption);
RegisterProperty(TDCCustomPaletteGridLineItem,'Rows',__DC__GetTDCCustomPaletteGridLineItem__Rows,__DC__SetTDCCustomPaletteGridLineItem__Rows);
RegisterProperty(TDCCustomPaletteGridSubItem,'Text',__DC__GetTDCCustomPaletteGridSubItem__Text,__DC__SetTDCCustomPaletteGridSubItem__Text);
RegisterProperty(TDCPaletteGridHeaderItems,'GridHeader',__DC__GetTDCPaletteGridHeaderItems__GridHeader,__DC__SetTDCPaletteGridHeaderItems__GridHeader);
RegisterIndexedProperty(TDCPaletteGridHeaderItems,'Items',1,True,__DC__GetTDCPaletteGridHeaderItems__Items,__DC__SetTDCPaletteGridHeaderItems__Items);
RegisterProperty(TDCPaletteGridSubItems,'PaletteGrid',__DC__GetTDCPaletteGridSubItems__PaletteGrid,__DC__SetTDCPaletteGridSubItems__PaletteGrid);
RegisterIndexedProperty(TDCPaletteGridSubItems,'Items',1,True,__DC__GetTDCPaletteGridSubItems__Items,__DC__SetTDCPaletteGridSubItems__Items);
end;

const __ConstNames0 : array[0..1] of string = (
'sDCDefaultWidth'
,'sDCHeaderCellHeight'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,sDCDefaultWidth));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,sDCHeaderCellHeight));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..12] of TClass = (
TDCCustomPaletteGrid,
TDCCustomPaletteGridHeader,
TDCCustomPaletteGridHeaderItem,
TDCCustomPaletteGridLineItem,
TDCCustomPaletteGridSubItem,
TDCPaletteGrid,
TDCPaletteGridHeader,
TDCPaletteGridHeaderItem,
TDCPaletteGridHeaderItems,
TDCPaletteGridLineItem,
TDCPaletteGridListBox,
TDCPaletteGridSubItem,
TDCPaletteGridSubItems
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
RegRegisterMethod(TDCCustomPaletteGrid,'Clear',TypeInfo(_T1),NoParams,Addr(TDCCustomPaletteGrid.Clear));

//RegRegisterMethod(TDCCustomPaletteGridHeader,'DoColCountChanged',TypeInfo(_T2),NoParams, pointer(220));
RegRegisterMethod(TDCCustomPaletteGridHeader,'DoColCountChanged',TypeInfo(_T2),NoParams,  getVMTProcAddr('TDCCustomPaletteGridHeader','DoColCountChanged',220));


//RegRegisterMethod(TDCCustomPaletteGridHeader,'UpdateMeasurements',TypeInfo(_T3),NoParams, pointer(224));
RegRegisterMethod(TDCCustomPaletteGridHeader,'UpdateMeasurements',TypeInfo(_T3),NoParams,  getVMTProcAddr('TDCCustomPaletteGridHeader','UpdateMeasurements',224));


//RegRegisterMethod(TDCCustomPaletteGridHeader,'DoColClick',TypeInfo(_T4),[TypeInfo(Integer)], pointer(228));
RegRegisterMethod(TDCCustomPaletteGridHeader,'DoColClick',TypeInfo(_T4),[TypeInfo(Integer)],  getVMTProcAddr('TDCCustomPaletteGridHeader','DoColClick',228));


//RegRegisterMethod(TDCCustomPaletteGridHeader,'DoCanColResize',TypeInfo(_T5),[TypeInfo(Integer),TypeInfo(Integer)], pointer(232));
RegRegisterMethod(TDCCustomPaletteGridHeader,'DoCanColResize',TypeInfo(_T5),[TypeInfo(Integer),TypeInfo(Integer)],  getVMTProcAddr('TDCCustomPaletteGridHeader','DoCanColResize',232));


//RegRegisterMethod(TDCCustomPaletteGridHeader,'SetNewColCount',TypeInfo(_T6),[TypeInfo(Integer)], pointer(236));
RegRegisterMethod(TDCCustomPaletteGridHeader,'SetNewColCount',TypeInfo(_T6),[TypeInfo(Integer)],  getVMTProcAddr('TDCCustomPaletteGridHeader','SetNewColCount',236));


//RegRegisterMethod(TDCCustomPaletteGridHeader,'InvalidateItem',TypeInfo(_T7),[TypeInfo(Integer),TypeInfo(IDispatch)], pointer(240));
RegRegisterMethod(TDCCustomPaletteGridHeader,'InvalidateItem',TypeInfo(_T7),[TypeInfo(Integer),TypeInfo(IDispatch)],  getVMTProcAddr('TDCCustomPaletteGridHeader','InvalidateItem',240));


RegRegisterMethod(TDCCustomPaletteGridHeader,'GetColRect',TypeInfo(_T8),[
TypeInfo(Integer),TypeInfo(IDispatch)],Addr(__TDCCustomPaletteGridHeader__GetColRect__Wrapper));

//RegRegisterMethod(TDCCustomPaletteGridHeaderItem,'DrawCol',TypeInfo(_T9),[TypeInfo(TCanvas),TypeInfo(IDispatch),TypeInfo(Boolean)], pointer(32));
RegRegisterMethod(TDCCustomPaletteGridHeaderItem,'DrawCol',TypeInfo(_T9),[TypeInfo(TCanvas),TypeInfo(IDispatch),TypeInfo(Boolean)],  getVMTProcAddr('TDCCustomPaletteGridHeaderItem','DrawCol',32));


RegRegisterMethod(TDCCustomPaletteGridSubItem,'DrawCell',TypeInfo(_T11),[
TypeInfo(TCanvas),
TypeInfo(IDispatch)],Addr(__TDCCustomPaletteGridSubItem__DrawCell__Wrapper));

//RegRegisterMethod(TDCPaletteGridListBox,'SetNewColCount',TypeInfo(_T12),[TypeInfo(Integer)], pointer(256));
RegRegisterMethod(TDCPaletteGridListBox,'SetNewColCount',TypeInfo(_T12),[TypeInfo(Integer)],  getVMTProcAddr('TDCPaletteGridListBox','SetNewColCount',256));


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
{RegRegisterMethod(TDCCustomPaletteGrid,'GetHeaderClass',TypeInfo(_T0),[TypeInfo(TDCPaletteGridHeaderClass)], pointer(216))}

{RegRegisterMethod(TDCCustomPaletteGridLineItem,'GetRowsClass',TypeInfo(_T10),[TypeInfo(TDCPaletteGridSubItemClass)], pointer(48))}

RegisterEvent(TypeInfo(TDCCanColResizeEvent),[
TypeInfo(TObject),
TypeInfo(Integer),
TypeInfo(Integer)]);

RegisterEvent(TypeInfo(TDCColChangedEvent),[
TypeInfo(TObject),
TypeInfo(Integer)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.