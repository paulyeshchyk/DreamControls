{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcimagelistbox_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  Types,
  activex,
  dcscript,
  Windows,
  Messages,
  Classes,
  Controls,
  Forms,
  Graphics,
  CommCtrl,
  SysUtils,
  StdCtrls,
  DCCommon,
  DCdreamLib,
  DCSystem,
  DCGraphFunc,
  DCImageListBox;
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
type __TDCCustomImageListItem__ = class(TDCCustomImageListItem);
type
_T0 = procedure (p0 : TDCCustomCheckListItem) of object;

_T1 = function (p0 : Integer;
p1 : Integer): Boolean of object;

_T2 = procedure (p0 : Integer;
p1 : Integer) of object;

_T3 = function : Integer of object;

_T4 = _T3;

_T5 = function (var p0 : Integer): Integer of object;

_T6 = procedure  of object;

_T7 = _T6;

{_T8 = function : TDCImageListItemClass of object;}

_T9 = function (p0 : Integer): String of object;

_T10 = _T6;

_T11 = _T6;

_T12 = _T6;

_T13 = _T6;

_T14 = _T6;

_T15 = _T6;

_T16 = _T6;

_T17 = _T6;

_T18 = _T6;

_T19 = _T6;

_T20 = _T6;

_T21 = procedure (p0 : Boolean) of object;

_T22 = function (const p0 : String): Integer of object;

_T23 = _T22;

_T24 = _T3;

_T25 = function (p0 : Integer): IDispatch of object;

_T26 = function (p0 : Integer;
p1 : Integer;
p2 : Boolean): Integer of object;

_T27 = procedure (p0 : Integer) of object;

_T28 = procedure (p0 : TCanvas;
const p1 : IDispatch;
p2 : TImageList) of object;

_T29 = _T6;

_T30 = procedure (p0 : TCanvas;
const p1 : IDispatch;
p2 : Boolean) of object;

_T31 = function (p0 : TCanvas;
p1 : Boolean): Integer of object;

_T32 = _T2;

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
function __TDCCustomImageListBox__GetItemRect__Wrapper(__Instance : TDCCustomImageListBox;
p0 : Integer): IDispatch;
var
__result : TRect;
__wrapper : __TRect__Wrapper;
begin
__result := TDCCustomImageListBox(__Instance).GetItemRect(p0);
__wrapper := __TRect__Wrapper.Create;
__wrapper.fR := __result;
result := IDispatch(__wrapper);
end;

procedure __TDCCustomImageListItem__DrawImage__Wrapper(__Instance : TDCCustomImageListItem;
p0 : TCanvas;
const p1 : IDispatch;
p2 : TImageList);
var
__p1 : ^TRect;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
__TDCCustomImageListItem__(__Instance).DrawImage(p0,__p1^,p2);
end;

procedure __TDCCustomImageListItem__DrawAt__Wrapper(__Instance : TDCCustomImageListItem;
p0 : TCanvas;
const p1 : IDispatch;
p2 : Boolean);
var
__p1 : ^TRect;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
__TDCCustomImageListItem__(__Instance).DrawAt(p0,__p1^,p2);
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
function __DC__GetTDCCustomBtnImageListBox__ImageBackgroudColor(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomBtnImageListBox(Instance).ImageBackgroudColor;
end;

procedure __DC__SetTDCCustomBtnImageListBox__ImageBackgroudColor(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomBtnImageListBox(Instance).ImageBackgroudColor:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomCheckImageListBox__ShowCheckBoxes(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomCheckImageListBox(Instance).ShowCheckBoxes;
end;

procedure __DC__SetTDCCustomCheckImageListBox__ShowCheckBoxes(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomCheckImageListBox(Instance).ShowCheckBoxes:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomCheckImageListBox__Flat(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomCheckImageListBox(Instance).Flat;
end;

procedure __DC__SetTDCCustomCheckImageListBox__Flat(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomCheckImageListBox(Instance).Flat:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomCheckListItem__State(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomCheckListItem(Instance).State;
end;

procedure __DC__SetTDCCustomCheckListItem__State(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomCheckListItem(Instance).State:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomCheckListItem__Checked(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomCheckListItem(Instance).Checked;
end;

procedure __DC__SetTDCCustomCheckListItem__Checked(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomCheckListItem(Instance).Checked:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomImageListBox__DraggingItem(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListBox(Instance).DraggingItem;
end;

function __DC__GetTDCCustomImageListBox__SelDraggingItem(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListBox(Instance).SelDraggingItem;
end;

function __DC__GetTDCCustomImageListBox__BorderStyle(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListBox(Instance).BorderStyle;
end;

procedure __DC__SetTDCCustomImageListBox__BorderStyle(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListBox(Instance).BorderStyle:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomImageListBox__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCCustomImageListBox(Instance).Items);
end;

procedure __DC__SetTDCCustomImageListBox__Items(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListBox(Instance).Items:=TDCImageListItems(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCCustomImageListBox__SelectedColor(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListBox(Instance).SelectedColor;
end;

procedure __DC__SetTDCCustomImageListBox__SelectedColor(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListBox(Instance).SelectedColor:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomImageListBox__SelectedTextColor(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListBox(Instance).SelectedTextColor;
end;

procedure __DC__SetTDCCustomImageListBox__SelectedTextColor(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListBox(Instance).SelectedTextColor:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomImageListBox__ItemIndex(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListBox(Instance).ItemIndex;
end;

procedure __DC__SetTDCCustomImageListBox__ItemIndex(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListBox(Instance).ItemIndex:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomImageListBox__Sorted(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListBox(Instance).Sorted;
end;

procedure __DC__SetTDCCustomImageListBox__Sorted(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListBox(Instance).Sorted:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomImageListBox__QuickSearch(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListBox(Instance).QuickSearch;
end;

procedure __DC__SetTDCCustomImageListBox__QuickSearch(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListBox(Instance).QuickSearch:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomImageListBox__CanDragItems(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListBox(Instance).CanDragItems;
end;

procedure __DC__SetTDCCustomImageListBox__CanDragItems(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListBox(Instance).CanDragItems:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomImageListBox__HighlightItems(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListBox(Instance).HighlightItems;
end;

procedure __DC__SetTDCCustomImageListBox__HighlightItems(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListBox(Instance).HighlightItems:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomImageListBox__ShowRectWhenAcceptDrag(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListBox(Instance).ShowRectWhenAcceptDrag;
end;

procedure __DC__SetTDCCustomImageListBox__ShowRectWhenAcceptDrag(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListBox(Instance).ShowRectWhenAcceptDrag:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomImageListBox__ScrollStepHorz(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListBox(Instance).ScrollStepHorz;
end;

procedure __DC__SetTDCCustomImageListBox__ScrollStepHorz(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListBox(Instance).ScrollStepHorz:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomImageListBox__ScrollStepVert(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListBox(Instance).ScrollStepVert;
end;

procedure __DC__SetTDCCustomImageListBox__ScrollStepVert(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListBox(Instance).ScrollStepVert:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomImageListBox__Canvas(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCCustomImageListBox(Instance).Canvas);
end;

function __DC__GetTDCCustomImageListItem__UserData(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := PointerToVariant(TDCCustomImageListItem(Instance).UserData);
end;

procedure __DC__SetTDCCustomImageListItem__UserData(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListItem(Instance).UserData:=VarToPointer(OleVariant(Params^[0]));
end;

function __DC__GetTDCCustomImageListItem__Caption(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListItem(Instance).Caption;
end;

procedure __DC__SetTDCCustomImageListItem__Caption(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListItem(Instance).Caption:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomImageListItem__ImageIndex(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomImageListItem(Instance).ImageIndex;
end;

procedure __DC__SetTDCCustomImageListItem__ImageIndex(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomImageListItem(Instance).ImageIndex:=OleVariant(Params^[0]);
end;

function __DC__GetTDCImageListDragObject__NotifyObject(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCImageListDragObject(Instance).NotifyObject);
end;

procedure __DC__SetTDCImageListDragObject__NotifyObject(Instance : TObject; Params : PVariantArgList);
begin
TDCImageListDragObject(Instance).NotifyObject:=TDCCustomImageListBox(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCImageListItems__ImageListBox(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCImageListItems(Instance).ImageListBox);
end;

procedure __DC__SetTDCImageListItems__ImageListBox(Instance : TObject; Params : PVariantArgList);
begin
TDCImageListItems(Instance).ImageListBox:=TDCCustomImageListBox(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCImageListItems__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCImageListItems(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTDCImageListItems__Items(Instance : TObject; Params : PVariantArgList);
begin
TDCImageListItems(Instance).Items[OleVariant(Params^[1])]:=TCollectionItem(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TDCCustomBtnImageListBox,'ImageBackgroudColor',__DC__GetTDCCustomBtnImageListBox__ImageBackgroudColor,__DC__SetTDCCustomBtnImageListBox__ImageBackgroudColor);
RegisterProperty(TDCCustomCheckImageListBox,'ShowCheckBoxes',__DC__GetTDCCustomCheckImageListBox__ShowCheckBoxes,__DC__SetTDCCustomCheckImageListBox__ShowCheckBoxes);
RegisterProperty(TDCCustomCheckImageListBox,'Flat',__DC__GetTDCCustomCheckImageListBox__Flat,__DC__SetTDCCustomCheckImageListBox__Flat);
RegisterProperty(TDCCustomCheckListItem,'State',__DC__GetTDCCustomCheckListItem__State,__DC__SetTDCCustomCheckListItem__State);
RegisterProperty(TDCCustomCheckListItem,'Checked',__DC__GetTDCCustomCheckListItem__Checked,__DC__SetTDCCustomCheckListItem__Checked);
RegisterProperty(TDCCustomImageListBox,'DraggingItem',__DC__GetTDCCustomImageListBox__DraggingItem,nil);
RegisterProperty(TDCCustomImageListBox,'SelDraggingItem',__DC__GetTDCCustomImageListBox__SelDraggingItem,nil);
RegisterProperty(TDCCustomImageListBox,'BorderStyle',__DC__GetTDCCustomImageListBox__BorderStyle,__DC__SetTDCCustomImageListBox__BorderStyle);
RegisterProperty(TDCCustomImageListBox,'Items',__DC__GetTDCCustomImageListBox__Items,__DC__SetTDCCustomImageListBox__Items);
RegisterProperty(TDCCustomImageListBox,'SelectedColor',__DC__GetTDCCustomImageListBox__SelectedColor,__DC__SetTDCCustomImageListBox__SelectedColor);
RegisterProperty(TDCCustomImageListBox,'SelectedTextColor',__DC__GetTDCCustomImageListBox__SelectedTextColor,__DC__SetTDCCustomImageListBox__SelectedTextColor);
RegisterProperty(TDCCustomImageListBox,'ItemIndex',__DC__GetTDCCustomImageListBox__ItemIndex,__DC__SetTDCCustomImageListBox__ItemIndex);
RegisterProperty(TDCCustomImageListBox,'Sorted',__DC__GetTDCCustomImageListBox__Sorted,__DC__SetTDCCustomImageListBox__Sorted);
RegisterProperty(TDCCustomImageListBox,'QuickSearch',__DC__GetTDCCustomImageListBox__QuickSearch,__DC__SetTDCCustomImageListBox__QuickSearch);
RegisterProperty(TDCCustomImageListBox,'CanDragItems',__DC__GetTDCCustomImageListBox__CanDragItems,__DC__SetTDCCustomImageListBox__CanDragItems);
RegisterProperty(TDCCustomImageListBox,'HighlightItems',__DC__GetTDCCustomImageListBox__HighlightItems,__DC__SetTDCCustomImageListBox__HighlightItems);
RegisterProperty(TDCCustomImageListBox,'ShowRectWhenAcceptDrag',__DC__GetTDCCustomImageListBox__ShowRectWhenAcceptDrag,__DC__SetTDCCustomImageListBox__ShowRectWhenAcceptDrag);
RegisterProperty(TDCCustomImageListBox,'ScrollStepHorz',__DC__GetTDCCustomImageListBox__ScrollStepHorz,__DC__SetTDCCustomImageListBox__ScrollStepHorz);
RegisterProperty(TDCCustomImageListBox,'ScrollStepVert',__DC__GetTDCCustomImageListBox__ScrollStepVert,__DC__SetTDCCustomImageListBox__ScrollStepVert);
RegisterProperty(TDCCustomImageListBox,'Canvas',__DC__GetTDCCustomImageListBox__Canvas,nil);
RegisterProperty(TDCCustomImageListItem,'UserData',__DC__GetTDCCustomImageListItem__UserData,__DC__SetTDCCustomImageListItem__UserData);
RegisterProperty(TDCCustomImageListItem,'Caption',__DC__GetTDCCustomImageListItem__Caption,__DC__SetTDCCustomImageListItem__Caption);
RegisterProperty(TDCCustomImageListItem,'ImageIndex',__DC__GetTDCCustomImageListItem__ImageIndex,__DC__SetTDCCustomImageListItem__ImageIndex);
RegisterProperty(TDCImageListDragObject,'NotifyObject',__DC__GetTDCImageListDragObject__NotifyObject,__DC__SetTDCImageListDragObject__NotifyObject);
RegisterProperty(TDCImageListItems,'ImageListBox',__DC__GetTDCImageListItems__ImageListBox,__DC__SetTDCImageListItems__ImageListBox);
RegisterIndexedProperty(TDCImageListItems,'Items',1,True,__DC__GetTDCImageListItems__Items,__DC__SetTDCImageListItems__Items);
end;

const __ConstNames0 : array[0..2] of string = (
'sDCDefaultImageWidth'
,'sDCDefaultImageHeight'
,'sDCIconBorder'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,sDCDefaultImageWidth));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,sDCDefaultImageHeight));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,sDCIconBorder));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..13] of TClass = (
TDCBtnImageListBox,
TDCBtnImageListItem,
TDCCheckImageListBox,
TDCCheckListItem,
TDCCustomBtnImageListBox,
TDCCustomBtnImageListItem,
TDCCustomCheckImageListBox,
TDCCustomCheckListItem,
TDCCustomImageListBox,
TDCCustomImageListItem,
TDCImageListBox,
TDCImageListDragObject,
TDCImageListItem,
TDCImageListItems
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
//RegRegisterMethod(TDCCustomCheckImageListBox,'DoCheckStateChanged',TypeInfo(_T0),[TypeInfo(TDCCustomCheckListItem)], pointer(256));
RegRegisterMethod(TDCCustomCheckImageListBox,'DoCheckStateChanged',TypeInfo(_T0),[TypeInfo(TDCCustomCheckListItem)],  getVMTProcAddr('TDCCustomCheckImageListBox','DoCheckStateChanged',256));


//RegRegisterMethod(TDCCustomImageListBox,'DoCanMoveItem',TypeInfo(_T1),[TypeInfo(Integer),TypeInfo(Integer),TypeInfo(Boolean)], pointer(220));
RegRegisterMethod(TDCCustomImageListBox,'DoCanMoveItem',TypeInfo(_T1),[TypeInfo(Integer),TypeInfo(Integer),TypeInfo(Boolean)],  getVMTProcAddr('TDCCustomImageListBox','DoCanMoveItem',220));


//RegRegisterMethod(TDCCustomImageListBox,'DoItemMoved',TypeInfo(_T2),[TypeInfo(Integer),TypeInfo(Integer)], pointer(224));
RegRegisterMethod(TDCCustomImageListBox,'DoItemMoved',TypeInfo(_T2),[TypeInfo(Integer),TypeInfo(Integer)],  getVMTProcAddr('TDCCustomImageListBox','DoItemMoved',224));


//RegRegisterMethod(TDCCustomImageListBox,'GetItemsHeight',TypeInfo(_T3),[TypeInfo(Integer)], pointer(228));
RegRegisterMethod(TDCCustomImageListBox,'GetItemsHeight',TypeInfo(_T3),[TypeInfo(Integer)],  getVMTProcAddr('TDCCustomImageListBox','GetItemsHeight',228));


//RegRegisterMethod(TDCCustomImageListBox,'GetImageWidth',TypeInfo(_T4),[TypeInfo(Integer)], pointer(232));
RegRegisterMethod(TDCCustomImageListBox,'GetImageWidth',TypeInfo(_T4),[TypeInfo(Integer)],  getVMTProcAddr('TDCCustomImageListBox','GetImageWidth',232));


//RegRegisterMethod(TDCCustomImageListBox,'GetItemsMaxWidth',TypeInfo(_T5),[TypeInfo(Integer),TypeInfo(Integer)], pointer(236));
RegRegisterMethod(TDCCustomImageListBox,'GetItemsMaxWidth',TypeInfo(_T5),[TypeInfo(Integer),TypeInfo(Integer)],  getVMTProcAddr('TDCCustomImageListBox','GetItemsMaxWidth',236));


RegRegisterMethod(TDCCustomImageListBox,'DoChanged',TypeInfo(_T6),NoParams, pointer(MinVMTOffset - 79));

RegRegisterMethod(TDCCustomImageListBox,'DoSelectionChanged',TypeInfo(_T7),NoParams, pointer(MinVMTOffset - 80));

//RegRegisterMethod(TDCCustomImageListBox,'GetSortingField',TypeInfo(_T9),[TypeInfo(Integer),TypeInfo(String)], pointer(244));
RegRegisterMethod(TDCCustomImageListBox,'GetSortingField',TypeInfo(_T9),[TypeInfo(Integer),TypeInfo(String)],  getVMTProcAddr('TDCCustomImageListBox','GetSortingField',244));


//RegRegisterMethod(TDCCustomImageListBox,'ResortItems',TypeInfo(_T10),NoParams, pointer(248));
RegRegisterMethod(TDCCustomImageListBox,'ResortItems',TypeInfo(_T10),NoParams,  getVMTProcAddr('TDCCustomImageListBox','ResortItems',248));


RegRegisterMethod(TDCCustomImageListBox,'ScrollLineDown',TypeInfo(_T11),NoParams,Addr(TDCCustomImageListBox.ScrollLineDown));

RegRegisterMethod(TDCCustomImageListBox,'ScrollLineUp',TypeInfo(_T12),NoParams,Addr(TDCCustomImageListBox.ScrollLineUp));

RegRegisterMethod(TDCCustomImageListBox,'ScrollPageUp',TypeInfo(_T13),NoParams,Addr(TDCCustomImageListBox.ScrollPageUp));

RegRegisterMethod(TDCCustomImageListBox,'ScrollPageDown',TypeInfo(_T14),NoParams,Addr(TDCCustomImageListBox.ScrollPageDown));

RegRegisterMethod(TDCCustomImageListBox,'ScrollCharLeft',TypeInfo(_T15),NoParams,Addr(TDCCustomImageListBox.ScrollCharLeft));

RegRegisterMethod(TDCCustomImageListBox,'ScrollCharRight',TypeInfo(_T16),NoParams,Addr(TDCCustomImageListBox.ScrollCharRight));

RegRegisterMethod(TDCCustomImageListBox,'ScrollPageLeft',TypeInfo(_T17),NoParams,Addr(TDCCustomImageListBox.ScrollPageLeft));

RegRegisterMethod(TDCCustomImageListBox,'ScrollPageRight',TypeInfo(_T18),NoParams,Addr(TDCCustomImageListBox.ScrollPageRight));

RegRegisterMethod(TDCCustomImageListBox,'CheckAllItems',TypeInfo(_T19),NoParams,Addr(TDCCustomImageListBox.CheckAllItems));

RegRegisterMethod(TDCCustomImageListBox,'UnCheckAllItems',TypeInfo(_T20),NoParams,Addr(TDCCustomImageListBox.UnCheckAllItems));

RegRegisterMethod(TDCCustomImageListBox,'SetItemsChecked',TypeInfo(_T21),[
TypeInfo(Boolean)],Addr(TDCCustomImageListBox.SetItemsChecked));

RegRegisterMethod(TDCCustomImageListBox,'IndexOf',TypeInfo(_T22),[
TypeInfo(String),TypeInfo(Integer)],Addr(TDCCustomImageListBox.IndexOf));

RegRegisterMethod(TDCCustomImageListBox,'IndexWithStart',TypeInfo(_T23),[
TypeInfo(String),TypeInfo(Integer)],Addr(TDCCustomImageListBox.IndexWithStart));

RegRegisterMethod(TDCCustomImageListBox,'ItemCount',TypeInfo(_T24),[TypeInfo(Integer)],Addr(TDCCustomImageListBox.ItemCount));

RegRegisterMethod(TDCCustomImageListBox,'GetItemRect',TypeInfo(_T25),[
TypeInfo(Integer),TypeInfo(IDispatch)],Addr(__TDCCustomImageListBox__GetItemRect__Wrapper));

RegRegisterMethod(TDCCustomImageListBox,'ItemAtPos',TypeInfo(_T26),[
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(Boolean),TypeInfo(Integer)],Addr(TDCCustomImageListBox.ItemAtPos));

//RegRegisterMethod(TDCCustomImageListBox,'Delete',TypeInfo(_T27),[TypeInfo(Integer)], pointer(252));
RegRegisterMethod(TDCCustomImageListBox,'Delete',TypeInfo(_T27),[TypeInfo(Integer)],  getVMTProcAddr('TDCCustomImageListBox','Delete',252));


//RegRegisterMethod(TDCCustomImageListItem,'DrawImage',TypeInfo(_T28),[TypeInfo(TCanvas),TypeInfo(IDispatch),TypeInfo(TImageList)], pointer(32));
RegRegisterMethod(TDCCustomImageListItem,'DrawImage',TypeInfo(_T28),[TypeInfo(TCanvas),TypeInfo(IDispatch),TypeInfo(TImageList)],  getVMTProcAddr('TDCCustomImageListItem','DrawImage',32));


//RegRegisterMethod(TDCCustomImageListItem,'CaptionChanged',TypeInfo(_T29),NoParams, pointer(36));
RegRegisterMethod(TDCCustomImageListItem,'CaptionChanged',TypeInfo(_T29),NoParams,  getVMTProcAddr('TDCCustomImageListItem','CaptionChanged',36));


//RegRegisterMethod(TDCCustomImageListItem,'DrawAt',TypeInfo(_T30),[TypeInfo(TCanvas),TypeInfo(IDispatch),TypeInfo(Boolean)], pointer(40));
RegRegisterMethod(TDCCustomImageListItem,'DrawAt',TypeInfo(_T30),[TypeInfo(TCanvas),TypeInfo(IDispatch),TypeInfo(Boolean)],  getVMTProcAddr('TDCCustomImageListItem','DrawAt',40));


//RegRegisterMethod(TDCCustomImageListItem,'GetItemTextWidth',TypeInfo(_T31),[TypeInfo(TCanvas),TypeInfo(Boolean),TypeInfo(Integer)], pointer(44));
RegRegisterMethod(TDCCustomImageListItem,'GetItemTextWidth',TypeInfo(_T31),[TypeInfo(TCanvas),TypeInfo(Boolean),TypeInfo(Integer)],  getVMTProcAddr('TDCCustomImageListItem','GetItemTextWidth',44));


RegRegisterMethod(TDCImageListItems,'MoveItemTo',TypeInfo(_T32),[
TypeInfo(Integer),
TypeInfo(Integer)],Addr(TDCImageListItems.MoveItemTo));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
{RegRegisterMethod(TDCCustomImageListBox,'GetListItemClass',TypeInfo(_T8),[TypeInfo(TDCImageListItemClass)], pointer(240))}

RegisterEvent(TypeInfo(TDCCanMoveItemEvent),[
TypeInfo(TObject),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(Boolean)]);

RegisterEvent(TypeInfo(TDCItemMovedEvent),[
TypeInfo(TObject),
TypeInfo(Integer),
TypeInfo(Integer)]);

RegisterEvent(TypeInfo(TDCOnCheckStateChanged),[
TypeInfo(TObject),
TypeInfo(TDCCustomCheckListItem)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
