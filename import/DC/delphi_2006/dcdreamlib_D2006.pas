{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcdreamlib_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  dcscript,
  dcsystem,
  ActiveX,
  Consts,
  dcconsts,
  Classes,
  Sysutils,
  windows,
  messages,
  Typinfo,
  dcHook,
  dcClasses,
  RTLConsts,
  Variants,
  dcdreamlib;
function ConvertTMethodToVariant(var R : TMethod) : OleVariant;
function ConvertVariantToTMethod(const V : OleVariant) : TMethod;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TMethod__Wrapper = class(TDCRecordWrapper)
private
fR : TMethod;
public
function GetRecordPtr : pointer; override;
published
end;
type
_T0 = function (const p0 : AnsiString;
const p1 : AnsiString;
p2 : Integer): Integer of object;

_T1 = _T0;

_T2 = function (p0 : Integer): Integer of object;

_T3 = function (const p0 : string): string of object;

_T4 = procedure (const p0 : string;
p1 : Char;
p2 : TStrings) of object;

_T5 = _T4;

_T6 = function (p0 : Char;
p1 : Char;
const p2 : string): string of object;

_T7 = function (p0 : Integer;
p1 : Integer): Integer of object;

_T8 = procedure (var p0 : Integer;
var p1 : Integer) of object;

_T9 = _T7;

_T10 = _T8;

_T11 = function (const p0 : string): Boolean of object;

_T12 = function (p0 : Boolean): string of object;

_T13 = procedure (const p0 : string;
const p1 : Array of Const) of object;

_T14 = procedure (const p0 : string) of object;

_T15 = procedure (p0 : TStream;
p1 : TPersistent) of object;

_T16 = _T15;

_T17 = procedure (p0 : TPersistent;
const p1 : string) of object;

_T18 = _T17;

_T19 = _T15;

_T20 = _T15;

_T21 = _T17;

_T22 = _T17;

_T23 = function (p0 : TObject;
const p1 : string): Boolean of object;

_T24 = function (const p0 : IDispatch;
const p1 : IDispatch): Boolean of object;

_T25 = function (p0 : TObject): TPersistent of object;

_T26 = function (p0 : TObject): Pointer of object;

_T27 = procedure (p0 : TList;
p1 : TList) of object;

_T28 = _T27;

_T29 = procedure (p0 : TSortedList) of object;

_T30 = procedure (const p0 : TList) of object;

_T31 = procedure (const p0 : TInterfaceList) of object;

_T32 = procedure (const p0 : TInterfaceList;
var p1) of object;

_T33 = procedure (const p0 : TList;
var p1) of object;

_T34 = procedure (const p0 : TSortedList;
var p1) of object;

_T35 = procedure (p0 : TStrings;
const p1 : string) of object;

_T36 = _T35;

_T37 = _T35;

{_T38 = procedure (p0 : TPersistent;
p1 : TTypeKinds;
p2 : TPropCallBack;
p3 : Boolean;
p4 : Integer) of object;}

{_T39 = procedure (p0 : TPersistent;
p1 : TPropCallBack;
p2 : Boolean;
p3 : Integer) of object;}

_T40 = function (p0 : TObject;
p1 : TObject): Boolean of object;

{_T41 = function (p0 : TPersistent;
p1 : PPropInfo): Integer of object;}

_T42 = function (p0 : TFloatType): Integer of object;

_T43 = procedure (p0 : TPersistent;
p1 : TPersistent;
p2 : TStringList) of object;

_T44 = procedure (p0 : TPersistent;
p1 : TPersistent) of object;

_T45 = function (const p0 : Variant): Variant of object;

{_T46 = function (p0 : PPropInfo): PTypeInfo of object;}

_T47 = procedure (p0 : TPersistent;
p1 : TPersistent;
const p2 : string) of object;

{_T48 = procedure (p0 : TPersistent;
p1 : TPersistent;
p2 : PPropInfo;
p3 : PPropInfo) of object;}

_T49 = function (p0 : TOrdType): Integer of object;

{_T50 = function (p0 : TPersistent;
p1 : PPropInfo): Variant of object;}

{_T51 = procedure (p0 : TPersistent;
p1 : PPropInfo;
const p2 : Variant) of object;}

_T52 = function (p0 : TPersistent;
const p1 : string): TObject of object;

_T53 = procedure (var p0) of object;

{_T54 = function (p0 : TClass;
p1 : TClass;
p2 : Pointer): Pointer of object;}

_T55 = procedure  of object;

_T56 = procedure (var p0;
p1 : Integer) of object;

_T57 = function : Boolean of object;

_T58 = function (p0 : TList;
p1 : Pointer): Integer of object;

{_T59 = procedure (p0 : Integer;
p1 : Integer;
p2 : TDCCompareCallBack;
p3 : TDCExchangeCallBack) of object;}

_T60 = procedure (p0 : TObject;
var p1) of object;

{_T61 = function (const p0 : IUnknown): TObject of object;}

{_T62 = function (const p0 : IUnknown;
const p1 : TClass;
var p2 : TObject): Boolean of object;}

_T63 = function (const p0 : string): PWideChar of object;

_T64 = function (const p0 : string;
const p1 : Array of Const): string of object;

_T65 = procedure (var p0 : string;
const p1 : string;
const p2 : Array of Const) of object;

{_T66 = procedure (p0 : TComponent;
p1 : TDCNamedItemClass) of object;}

_T67 = function (const p0 : string): Integer of object;

_T68 = function (p0 : TDCNamedItem): Integer of object;

{_T69 = procedure (p0 : TDCInterfaceListSortCompare) of object;}

_T70 = procedure (p0 : TObject) of object;

_T71 = procedure (p0 : Integer;
p1 : Integer) of object;

_T72 = _T71;

_T73 = function : Integer of object;

_T74 = _T2;

_T75 = _T57;

_T76 = _T55;

_T77 = function (const p0 : IDispatch): Integer of object;

_T78 = procedure (const p0 : IDispatch) of object;

_T79 = procedure (p0 : Integer) of object;

_T80 = _T55;

_T81 = _T55;

_T82 = _T55;

_T83 = _T55;

_T84 = _T55;

_T85 = _T55;

_T86 = _T79;

_T87 = function (p0 : Pointer): Integer of object;

_T88 = _T79;

_T89 = _T79;

_T90 = _T55;

_T91 = procedure (p0 : TStream) of object;

_T92 = _T91;

_T93 = procedure (p0 : Pointer) of object;

_T94 = function (p0 : Pointer): Pointer of object;

_T95 = function (p0 : Pointer): TSortedCustomData of object;

{_T96 = procedure (p0 : TSortedCustomDataClass) of object;}

_T97 = _T94;

_T98 = function (p0 : Pointer;
var p1 : Integer): Boolean of object;

_T99 = _T55;

_T100 = procedure (const p0 : OleVariant) of object;

_T101 = procedure (p0 : POleVariant) of object;

_T102 = function : OleVariant of object;

_T103 = _T79;

_T104 = _T79;

_T105 = _T79;

_T106 = procedure (p0 : PInt;
p1 : Cardinal;
p2 : Cardinal) of object;

_T107 = _T57;

_T108 = function (p0 : Integer): POleVariant of object;

_T109 = _T73;

function __TMethod__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
function ____isMethodsEqual__Wrapper(const p0 : IDispatch;
const p1 : IDispatch): Boolean;
var
__p0 : ^TMethod;
__i0 : IDispatch;
__p1 : ^TMethod;
__i1 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
result := isMethodsEqual(__p0^,__p1^);
end;

function __TMethodList__Add__Wrapper(__Instance : TMethodList;
const p0 : IDispatch): Integer;
var
__p0 : ^TMethod;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := TMethodList(__Instance).Add(__p0^);
end;

procedure __TMethodList__Remove__Wrapper(__Instance : TMethodList;
const p0 : IDispatch);
var
__p0 : ^TMethod;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
TMethodList(__Instance).Remove(__p0^);
end;


type __TMethod__Wrapper__ = class(__TMethod__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TMethod__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTMethodToVariant(var R : TMethod) : OleVariant;
var
__rw : __TMethod__Wrapper__;
begin
__rw := __TMethod__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTMethod(const V : OleVariant) : TMethod;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TMethod((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
function __DC__GetTCustomDCNamedItems__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TCustomDCNamedItems(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTCustomDCNamedItems__Items(Instance : TObject; Params : PVariantArgList);
begin
TCustomDCNamedItems(Instance).Items[OleVariant(Params^[1])]:=TCollectionItem(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCLinkedComponent__Link(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCLinkedComponent(Instance).Link);
end;

procedure __DC__SetTDCLinkedComponent__Link(Instance : TObject; Params : PVariantArgList);
begin
TDCLinkedComponent(Instance).Link:=TObject(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTMethodList__Count(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TMethodList(Instance).Count;
end;

function __DC__GetTMethodList__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __TMethod__Wrapper;
begin
__wrapper := __TMethod__Wrapper.Create;
__wrapper.fR := TMethodList(Instance).Items[OleVariant(Params^[0])];
result := IUnknown(__wrapper) as IDispatch;
end;

function __DC__GetTMethodList__Capacity(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TMethodList(Instance).Capacity;
end;

procedure __DC__SetTMethodList__Capacity(Instance : TObject; Params : PVariantArgList);
begin
TMethodList(Instance).Capacity:=OleVariant(Params^[0]);
end;

function __DC__GetTRecordList__Count(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TRecordList(Instance).Count;
end;

procedure __DC__SetTRecordList__Count(Instance : TObject; Params : PVariantArgList);
begin
TRecordList(Instance).Count:=OleVariant(Params^[0]);
end;

function __DC__GetTRecordList__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := PointerToVariant(TRecordList(Instance).Items[OleVariant(Params^[0])]);
end;

function __DC__GetTRecordList__Capacity(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TRecordList(Instance).Capacity;
end;

procedure __DC__SetTRecordList__Capacity(Instance : TObject; Params : PVariantArgList);
begin
TRecordList(Instance).Capacity:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterIndexedProperty(TCustomDCNamedItems,'Items',1,False,__DC__GetTCustomDCNamedItems__Items,__DC__SetTCustomDCNamedItems__Items);
RegisterProperty(TDCLinkedComponent,'Link',__DC__GetTDCLinkedComponent__Link,__DC__SetTDCLinkedComponent__Link);
RegisterProperty(TMethodList,'Count',__DC__GetTMethodList__Count,nil);
RegisterIndexedProperty(TMethodList,'Items',1,True,__DC__GetTMethodList__Items,nil);
RegisterProperty(TMethodList,'Capacity',__DC__GetTMethodList__Capacity,__DC__SetTMethodList__Capacity);
RegisterProperty(TRecordList,'Count',__DC__GetTRecordList__Count,__DC__SetTRecordList__Count);
RegisterIndexedProperty(TRecordList,'Items',1,True,__DC__GetTRecordList__Items,nil);
RegisterProperty(TRecordList,'Capacity',__DC__GetTRecordList__Capacity,__DC__SetTRecordList__Capacity);
end;

const __ConstNames0 : array[0..58] of string = (
'VK_PLUS'
,'VK_MINUS'
,'CM_DCBASE'
,'CM_NAMECHANGED'
,'CM_PROPCHANGED'
,'CM_PACKAGEUNLOADED'
,'CM_PALETTECLICK'
,'CM_BEFOREPACKAGEUNLOAD'
,'CM_OBJINSERT'
,'CM_REGISTERACTIVEX'
,'CM_UNREGISTERACTIVEX'
,'CM_INSPECTOR_CHANGED'
,'CM_UPDATEEDITORS'
,'CM_SELECTIONCHANGED'
,'cm_ShowInspector'
,'cm_LoadColorStyles'
,'cm_SaveColorStyles'
,'CM_PACKAGELOADED'
,'cm_HideInspector'
,'cm_ToolBarForm'
,'CM_DESIGNRESFORM'
,'CM_EDITTEXTPROP'
,'CM_IDECHANGED'
,'CM_IDEADDTO'
,'CM_IDESAVETO'
,'CM_IDEAPROJCHANGED'
,'CM_SOURCEEMPTY'
,'CM_IDECLOSEALL'
,'CM_IDEOBJPROPSCHANGED'
,'CM_IDEEndUpdate'
,'CM_IDEBeginUpdate'
,'CM_TSNOTIFY'
,'cm_ToggleInspector'
,'CM_FREEEDITGROUP'
,'CM_OBJDESTROYED'
,'CM_UPDATEEDITOR'
,'CM_SCRIPTERROR'
,'CM_INSPECTORRESCAN'
,'CM_SHOWPALETTE'
,'CM_HIDEPALETTE'
,'CM_SHOWALIGNPALETTE'
,'CM_HIDEALIGNPALETTE'
,'CM_MENUITEMINSERTED'
,'CM_REGISTERCOMPS'
,'CM_OBJECTCHANGED'
,'CM_UPDATESELECTION'
,'CM_DESIGNFINISHED'
,'CM_APPLYOPTIONS'
,'CM_TRACKERROR'
,'CM_PaletteChanged'
,'CM_ActiveXChanged'
,'CM_CANCELOPTIONS'
,'CM_RefreshPalette'
,'CM_UPDATEOPTIONS'
,'DefaultOpenMode'
,'CompanyURL'
,'SSeparatorTag'
,'SBoldTag'
,'SReturn'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,VK_PLUS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,VK_MINUS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,CM_DCBASE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,CM_NAMECHANGED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,CM_PROPCHANGED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,CM_PACKAGEUNLOADED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,CM_PALETTECLICK));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,CM_BEFOREPACKAGEUNLOAD));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,CM_OBJINSERT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,CM_REGISTERACTIVEX));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,CM_UNREGISTERACTIVEX));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,CM_INSPECTOR_CHANGED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,CM_UPDATEEDITORS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,CM_SELECTIONCHANGED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,cm_ShowInspector));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,cm_LoadColorStyles));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,cm_SaveColorStyles));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,CM_PACKAGELOADED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,cm_HideInspector));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,cm_ToolBarForm));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,CM_DESIGNRESFORM));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,CM_EDITTEXTPROP));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,CM_IDECHANGED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,CM_IDEADDTO));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,CM_IDESAVETO));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,CM_IDEAPROJCHANGED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,CM_SOURCEEMPTY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[27] ,CM_IDECLOSEALL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[28] ,CM_IDEOBJPROPSCHANGED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[29] ,CM_IDEEndUpdate));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[30] ,CM_IDEBeginUpdate));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[31] ,CM_TSNOTIFY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[32] ,cm_ToggleInspector));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[33] ,CM_FREEEDITGROUP));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[34] ,CM_OBJDESTROYED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[35] ,CM_UPDATEEDITOR));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[36] ,CM_SCRIPTERROR));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[37] ,CM_INSPECTORRESCAN));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[38] ,CM_SHOWPALETTE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[39] ,CM_HIDEPALETTE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[40] ,CM_SHOWALIGNPALETTE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[41] ,CM_HIDEALIGNPALETTE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[42] ,CM_MENUITEMINSERTED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[43] ,CM_REGISTERCOMPS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[44] ,CM_OBJECTCHANGED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[45] ,CM_UPDATESELECTION));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[46] ,CM_DESIGNFINISHED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[47] ,CM_APPLYOPTIONS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[48] ,CM_TRACKERROR));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[49] ,CM_PaletteChanged));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[50] ,CM_ActiveXChanged));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[51] ,CM_CANCELOPTIONS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[52] ,CM_RefreshPalette));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[53] ,CM_UPDATEOPTIONS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[54] ,DefaultOpenMode));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[55] ,CompanyURL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[56] ,SSeparatorTag));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[57] ,SBoldTag));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[58] ,SReturn));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..18] of TClass = (
TCustomDCNamedItems,
TDCCaseSensitiveStringList,
TDCInterfaceList,
TDCLinkedComponent,
TDCNamedItem,
TFastStringList,
TIntStack,
TMethodList,
TMultiReadExclusiveWriteSynchronizer,
TPersHolder,
TRecordList,
TSortedCompKeyList,
TSortedCustomData,
TSortedKeyDataList,
TSortedKeyList,
TSortedList,
TSortedListData,
TSortedListEx,
TVariantStack
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
const MethodNames : array[0..54] of string = (
'PosEx'
,'BackPosEx'
,'GetDWordSize'
,'ResStr'
,'ParseString'
,'ParseAndCompactString'
,'ChangeCharTo'
,'Min'
,'SwapInt'
,'Max'
,'SwapMaxInt'
,'StrToBool'
,'BoolToStr'
,'ErrorFmt'
,'Error'
,'WriteObjToStream'
,'ReadObjFromStream'
,'ReadObjFromFile'
,'WriteObjToFile'
,'WriteObjToTextStream'
,'ReadObjFromTextStream'
,'WriteObjToTextFile'
,'ReadObjFromTextFile'
,'InheritsFromClassName'
,'isMethodsEqual'
,'GetOwner'
,'GetVMT'
,'CopyList'
,'AppendList'
,'ClearSortedList'
,'ClearList'
,'ClearInterfaceList'
,'FreeInterfaceList'
,'FreeList'
,'FreeSortedList'
,'RemoveFromStrings'
,'AddToCountedStrings'
,'RemoveFromCountedStrings'
,'AreObjNotEqualNotNil'
,'GetFloatSize'
,'AssignAllPropsExclude'
,'AssignAllProps'
,'CorrectBool'
,'AssignProp'
,'GetOrdSize'
,'GetClassProperty'
,'FreePointer'
,'CheckTrialVersion'
,'GetMem0'
,'DelphiRunning'
,'ListIndexOf'
,'FreeObject'
,'DCStringToOleSt'
,'SafeFormat'
,'SafeFmtStr'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(AnsiString),
TypeInfo(AnsiString),
TypeInfo(Integer),TypeInfo(Integer)],Addr(PosEx),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[
TypeInfo(AnsiString),
TypeInfo(AnsiString),
TypeInfo(Integer),TypeInfo(Integer)],Addr(BackPosEx),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfo(Integer),TypeInfo(Integer)],Addr(GetDWordSize),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T3),[
TypeInfo(string),TypeInfo(string)],Addr(ResStr),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T4),[
TypeInfo(string),
TypeInfo(Char),
TypeInfo(TStrings)],Addr(ParseString),cRegister);

RegisterProc(nil,MethodNames[5],mtProc,TypeInfo(_T5),[
TypeInfo(string),
TypeInfo(Char),
TypeInfo(TStrings)],Addr(ParseAndCompactString),cRegister);

RegisterProc(nil,MethodNames[6],mtProc,TypeInfo(_T6),[
TypeInfo(Char),
TypeInfo(Char),
TypeInfo(string),TypeInfo(string)],Addr(ChangeCharTo),cRegister);

RegisterProc(nil,MethodNames[7],mtProc,TypeInfo(_T7),[
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(Integer)],Addr(Min),cRegister);

RegisterProc(nil,MethodNames[8],mtProc,TypeInfo(_T8),[
TypeInfo(Integer),
TypeInfo(Integer)],Addr(SwapInt),cRegister);

RegisterProc(nil,MethodNames[9],mtProc,TypeInfo(_T9),[
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(Integer)],Addr(Max),cRegister);

RegisterProc(nil,MethodNames[10],mtProc,TypeInfo(_T10),[
TypeInfo(Integer),
TypeInfo(Integer)],Addr(SwapMaxInt),cRegister);

RegisterProc(nil,MethodNames[11],mtProc,TypeInfo(_T11),[
TypeInfo(string),TypeInfo(Boolean)],Addr(StrToBool),cRegister);

RegisterProc(nil,MethodNames[12],mtProc,TypeInfo(_T12),[
TypeInfo(Boolean),TypeInfo(string)],Addr(BoolToStr),cRegister);

RegisterProc(nil,MethodNames[13],mtProc,TypeInfo(_T13),[
TypeInfo(string),
TypeInfoArrayOfConst],Addr(ErrorFmt),cRegister);

RegisterProc(nil,MethodNames[14],mtProc,TypeInfo(_T14),[
TypeInfo(string)],Addr(Error),cRegister);

RegisterProc(nil,MethodNames[15],mtProc,TypeInfo(_T15),[
TypeInfo(TStream),
TypeInfo(TPersistent)],Addr(WriteObjToStream),cRegister);

RegisterProc(nil,MethodNames[16],mtProc,TypeInfo(_T16),[
TypeInfo(TStream),
TypeInfo(TPersistent)],Addr(ReadObjFromStream),cRegister);

RegisterProc(nil,MethodNames[17],mtProc,TypeInfo(_T17),[
TypeInfo(TPersistent),
TypeInfo(string)],Addr(ReadObjFromFile),cRegister);

RegisterProc(nil,MethodNames[18],mtProc,TypeInfo(_T18),[
TypeInfo(TPersistent),
TypeInfo(string)],Addr(WriteObjToFile),cRegister);

RegisterProc(nil,MethodNames[19],mtProc,TypeInfo(_T19),[
TypeInfo(TStream),
TypeInfo(TPersistent)],Addr(WriteObjToTextStream),cRegister);

RegisterProc(nil,MethodNames[20],mtProc,TypeInfo(_T20),[
TypeInfo(TStream),
TypeInfo(TPersistent)],Addr(ReadObjFromTextStream),cRegister);

RegisterProc(nil,MethodNames[21],mtProc,TypeInfo(_T21),[
TypeInfo(TPersistent),
TypeInfo(string)],Addr(WriteObjToTextFile),cRegister);

RegisterProc(nil,MethodNames[22],mtProc,TypeInfo(_T22),[
TypeInfo(TPersistent),
TypeInfo(string)],Addr(ReadObjFromTextFile),cRegister);

RegisterProc(nil,MethodNames[23],mtProc,TypeInfo(_T23),[
TypeInfo(TObject),
TypeInfo(string),TypeInfo(Boolean)],Addr(InheritsFromClassName),cRegister);

RegisterProc(nil,MethodNames[24],mtProc,TypeInfo(_T24),[
TypeInfo(IDispatch),
TypeInfo(IDispatch),TypeInfo(Boolean)],Addr(____isMethodsEqual__Wrapper),cRegister);

RegisterProc(nil,MethodNames[25],mtProc,TypeInfo(_T25),[
TypeInfo(TObject),TypeInfo(TPersistent)],Addr(GetOwner),cRegister);

RegisterProc(nil,MethodNames[26],mtProc,TypeInfo(_T26),[
TypeInfo(TObject),TypeInfoPointer],Addr(GetVMT),cRegister);

RegisterProc(nil,MethodNames[27],mtProc,TypeInfo(_T27),[
TypeInfo(TList),
TypeInfo(TList)],Addr(CopyList),cRegister);

RegisterProc(nil,MethodNames[28],mtProc,TypeInfo(_T28),[
TypeInfo(TList),
TypeInfo(TList)],Addr(AppendList),cRegister);

RegisterProc(nil,MethodNames[29],mtProc,TypeInfo(_T29),[
TypeInfo(TSortedList)],Addr(ClearSortedList),cRegister);

RegisterProc(nil,MethodNames[30],mtProc,TypeInfo(_T30),[
TypeInfo(TList)],Addr(ClearList),cRegister);

RegisterProc(nil,MethodNames[31],mtProc,TypeInfo(_T31),[
TypeInfo(TInterfaceList)],Addr(ClearInterfaceList),cRegister);

RegisterProc(nil,MethodNames[32],mtProc,TypeInfo(_T32),[
TypeInfo(TInterfaceList),
TypeInfoUntyped],Addr(FreeInterfaceList),cRegister);

RegisterProc(nil,MethodNames[33],mtProc,TypeInfo(_T33),[
TypeInfo(TList),
TypeInfoUntyped],Addr(FreeList),cRegister);

RegisterProc(nil,MethodNames[34],mtProc,TypeInfo(_T34),[
TypeInfo(TSortedList),
TypeInfoUntyped],Addr(FreeSortedList),cRegister);

RegisterProc(nil,MethodNames[35],mtProc,TypeInfo(_T35),[
TypeInfo(TStrings),
TypeInfo(string)],Addr(RemoveFromStrings),cRegister);

RegisterProc(nil,MethodNames[36],mtProc,TypeInfo(_T36),[
TypeInfo(TStrings),
TypeInfo(string)],Addr(AddToCountedStrings),cRegister);

RegisterProc(nil,MethodNames[37],mtProc,TypeInfo(_T37),[
TypeInfo(TStrings),
TypeInfo(string)],Addr(RemoveFromCountedStrings),cRegister);

RegisterProc(nil,MethodNames[38],mtProc,TypeInfo(_T40),[
TypeInfo(TObject),
TypeInfo(TObject),TypeInfo(Boolean)],Addr(AreObjNotEqualNotNil),cRegister);

RegisterProc(nil,MethodNames[39],mtProc,TypeInfo(_T42),[
TypeInfo(TFloatType),TypeInfo(Integer)],Addr(GetFloatSize),cRegister);

RegisterProc(nil,MethodNames[40],mtProc,TypeInfo(_T43),[
TypeInfo(TPersistent),
TypeInfo(TPersistent),
TypeInfo(TStringList)],Addr(AssignAllPropsExclude),cRegister);

RegisterProc(nil,MethodNames[41],mtProc,TypeInfo(_T44),[
TypeInfo(TPersistent),
TypeInfo(TPersistent)],Addr(AssignAllProps),cRegister);

RegisterProc(nil,MethodNames[42],mtProc,TypeInfo(_T45),[
TypeInfo(Variant),TypeInfo(Variant)],Addr(CorrectBool),cRegister);

RegisterProc(nil,MethodNames[43],mtProc,TypeInfo(_T47),[
TypeInfo(TPersistent),
TypeInfo(TPersistent),
TypeInfo(string)],Addr(AssignProp),cRegister);

RegisterProc(nil,MethodNames[44],mtProc,TypeInfo(_T49),[
TypeInfo(TOrdType),TypeInfo(Integer)],Addr(GetOrdSize),cRegister);

RegisterProc(nil,MethodNames[45],mtProc,TypeInfo(_T52),[
TypeInfo(TPersistent),
TypeInfo(string),TypeInfo(TObject)],Addr(GetClassProperty),cRegister);

RegisterProc(nil,MethodNames[46],mtProc,TypeInfo(_T53),[
TypeInfoUntyped],Addr(FreePointer),cRegister);

RegisterProc(nil,MethodNames[47],mtProc,TypeInfo(_T55),NoParams,Addr(CheckTrialVersion),cRegister);

RegisterProc(nil,MethodNames[48],mtProc,TypeInfo(_T56),[
TypeInfoUntyped,
TypeInfo(Integer)],Addr(GetMem0),cRegister);

RegisterProc(nil,MethodNames[49],mtProc,TypeInfo(_T57),[TypeInfo(Boolean)],Addr(DelphiRunning),cRegister);

RegisterProc(nil,MethodNames[50],mtProc,TypeInfo(_T58),[
TypeInfo(TList),
TypeInfoPointer,TypeInfo(Integer)],Addr(ListIndexOf),cRegister);

RegisterProc(nil,MethodNames[51],mtProc,TypeInfo(_T60),[
TypeInfo(TObject),
TypeInfoUntyped],Addr(FreeObject),cRegister);

RegisterProc(nil,MethodNames[52],mtProc,TypeInfo(_T63),[
TypeInfo(string),TypeInfoPWideChar],Addr(DCStringToOleSt),cRegister);

RegisterProc(nil,MethodNames[53],mtProc,TypeInfo(_T64),[
TypeInfo(string),
TypeInfoArrayOfConst,TypeInfo(string)],Addr(SafeFormat),cRegister);

RegisterProc(nil,MethodNames[54],mtProc,TypeInfo(_T65),[
TypeInfo(string),
TypeInfo(string),
TypeInfoArrayOfConst],Addr(SafeFmtStr),cRegister);

RegRegisterMethod(TCustomDCNamedItems,'IndexOfName',TypeInfo(_T67),[
TypeInfo(string),TypeInfo(Integer)],Addr(TCustomDCNamedItems.IndexOfName));

RegRegisterMethod(TCustomDCNamedItems,'IndexOf',TypeInfo(_T68),[
TypeInfo(TDCNamedItem),TypeInfo(Integer)],Addr(TCustomDCNamedItems.IndexOf));

//RegRegisterMethod(TDCNamedItem,'OnChange',TypeInfo(_T70),[TypeInfo(TObject)], pointer(32));
RegRegisterMethod(TDCNamedItem,'OnChange',TypeInfo(_T70),[TypeInfo(TObject)],  getVMTProcAddr('TDCNamedItem','OnChange',32));


RegRegisterMethod(TFastStringList,'QuickSort',TypeInfo(_T71),[
TypeInfo(Integer),
TypeInfo(Integer)],Addr(TFastStringList.QuickSort));

RegRegisterMethod(TFastStringList,'ExchangeItems',TypeInfo(_T72),[
TypeInfo(Integer),
TypeInfo(Integer)],Addr(TFastStringList.ExchangeItems));

RegRegisterMethod(TIntStack,'Pop',TypeInfo(_T73),[TypeInfo(Integer)],Addr(TIntStack.Pop));

RegRegisterMethod(TIntStack,'Push',TypeInfo(_T74),[
TypeInfo(Integer),TypeInfo(Integer)],Addr(TIntStack.Push));

RegRegisterMethod(TIntStack,'IsEmpty',TypeInfo(_T75),[TypeInfo(Boolean)],Addr(TIntStack.IsEmpty));

RegisterProc(TMethodList,'Create',mtConstructor,TypeInfo(_T76),NoParams,Addr(TMethodList.Create),cRegister);

RegRegisterMethod(TMethodList,'Add',TypeInfo(_T77),[
TypeInfo(IDispatch),TypeInfo(Integer)],Addr(__TMethodList__Add__Wrapper));

RegRegisterMethod(TMethodList,'Remove',TypeInfo(_T78),[
TypeInfo(IDispatch)],Addr(__TMethodList__Remove__Wrapper));

RegRegisterMethod(TMethodList,'Delete',TypeInfo(_T79),[
TypeInfo(Integer)],Addr(TMethodList.Delete));

RegRegisterMethod(TMethodList,'Clear',TypeInfo(_T80),NoParams,Addr(TMethodList.Clear));

RegisterProc(TMultiReadExclusiveWriteSynchronizer,'Create',mtConstructor,TypeInfo(_T81),NoParams,Addr(TMultiReadExclusiveWriteSynchronizer.Create),cRegister);

RegRegisterMethod(TMultiReadExclusiveWriteSynchronizer,'BeginRead',TypeInfo(_T82),NoParams,Addr(TMultiReadExclusiveWriteSynchronizer.BeginRead));

RegRegisterMethod(TMultiReadExclusiveWriteSynchronizer,'EndRead',TypeInfo(_T83),NoParams,Addr(TMultiReadExclusiveWriteSynchronizer.EndRead));

RegRegisterMethod(TMultiReadExclusiveWriteSynchronizer,'BeginWrite',TypeInfo(_T84),NoParams,Addr(TMultiReadExclusiveWriteSynchronizer.BeginWrite));

RegRegisterMethod(TMultiReadExclusiveWriteSynchronizer,'EndWrite',TypeInfo(_T85),NoParams,Addr(TMultiReadExclusiveWriteSynchronizer.EndWrite));

RegisterProc(TRecordList,'Create',mtConstructor,TypeInfo(_T86),[
TypeInfo(Integer)],Addr(TRecordList.Create),cRegister);

RegRegisterMethod(TRecordList,'Add',TypeInfo(_T87),[
TypeInfoPointer,TypeInfo(Integer)],Addr(TRecordList.Add));

RegRegisterMethod(TRecordList,'Delete',TypeInfo(_T88),[
TypeInfo(Integer)],Addr(TRecordList.Delete));

RegRegisterMethod(TRecordList,'SetCapacity',TypeInfo(_T89),[
TypeInfo(Integer)],Addr(TRecordList.SetCapacity));

RegRegisterMethod(TRecordList,'Clear',TypeInfo(_T90),NoParams,Addr(TRecordList.Clear));

RegRegisterMethod(TRecordList,'SaveToStream',TypeInfo(_T91),[
TypeInfo(TStream)],Addr(TRecordList.SaveToStream));

RegRegisterMethod(TRecordList,'LoadFromStream',TypeInfo(_T92),[
TypeInfo(TStream)],Addr(TRecordList.LoadFromStream));

RegisterProc(TSortedCustomData,'Create',mtConstructor,TypeInfo(_T93),[
TypeInfoPointer], pointer(0),cRegister);

//RegRegisterMethod(TSortedKeyDataList,'ItemByKey',TypeInfo(_T94),[TypeInfoPointer,TypeInfoPointer], pointer(16));
RegRegisterMethod(TSortedKeyDataList,'ItemByKey',TypeInfo(_T94),[TypeInfoPointer,TypeInfoPointer],  getVMTProcAddr('TSortedKeyDataList','ItemByKey',16));


//RegRegisterMethod(TSortedKeyDataList,'Add',TypeInfo(_T95),[TypeInfoPointer,TypeInfo(TSortedCustomData)], pointer(20));
RegRegisterMethod(TSortedKeyDataList,'Add',TypeInfo(_T95),[TypeInfoPointer,TypeInfo(TSortedCustomData)],  getVMTProcAddr('TSortedKeyDataList','Add',20));


//RegRegisterMethod(TSortedKeyList,'KeyByItem',TypeInfo(_T97),[TypeInfoPointer,TypeInfoPointer], pointer(12));
RegRegisterMethod(TSortedKeyList,'KeyByItem',TypeInfo(_T97),[TypeInfoPointer,TypeInfoPointer],  getVMTProcAddr('TSortedKeyList','KeyByItem',12));


RegRegisterMethod(TSortedListEx,'FindNearest',TypeInfo(_T98),[
TypeInfoPointer,
TypeInfo(Integer),TypeInfo(Boolean)],Addr(TSortedListEx.FindNearest));

RegisterProc(TVariantStack,'Create',mtConstructor,TypeInfo(_T99),NoParams,Addr(TVariantStack.Create),cRegister);

RegRegisterMethod(TVariantStack,'Push',TypeInfo(_T100),[
TypeInfo(OleVariant)],Addr(TVariantStack.Push));

RegRegisterMethod(TVariantStack,'PopLast',TypeInfo(_T101),[
TypeInfoPointer],Addr(TVariantStack.PopLast));

RegRegisterMethod(TVariantStack,'Pop',TypeInfo(_T102),[TypeInfo(OleVariant)],Addr(TVariantStack.Pop));

RegRegisterMethod(TVariantStack,'PushInt',TypeInfo(_T103),[
TypeInfo(Integer)],Addr(TVariantStack.PushInt));

RegRegisterMethod(TVariantStack,'Expand',TypeInfo(_T104),[
TypeInfo(Integer)],Addr(TVariantStack.Expand));

RegRegisterMethod(TVariantStack,'Collapse',TypeInfo(_T105),[
TypeInfo(Integer)],Addr(TVariantStack.Collapse));

RegRegisterMethod(TVariantStack,'FillWithItems',TypeInfo(_T106),[
TypeInfoPointer,
TypeInfo(Cardinal),
TypeInfo(Cardinal)],Addr(TVariantStack.FillWithItems));

RegRegisterMethod(TVariantStack,'IsEmpty',TypeInfo(_T107),[TypeInfo(Boolean)],Addr(TVariantStack.IsEmpty));

RegRegisterMethod(TVariantStack,'Items',TypeInfo(_T108),[
TypeInfo(Integer),TypeInfoPointer],Addr(TVariantStack.Items));

RegRegisterMethod(TVariantStack,'Count',TypeInfo(_T109),[TypeInfo(Integer)],Addr(TVariantStack.Count));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
{RegisterProc(nil,'IterateProps',mtProc,TypeInfo(_T38),[
TypeInfo(TPersistent),
TypeInfo(TTypeKinds),
TypeInfo(TPropCallBack),
TypeInfo(Boolean),
TypeInfo(Integer)],Addr(IterateProps),cRegister)}

{RegisterProc(nil,'ForEachProp',mtProc,TypeInfo(_T39),[
TypeInfo(TPersistent),
TypeInfo(TPropCallBack),
TypeInfo(Boolean),
TypeInfo(Integer)],Addr(ForEachProp),cRegister)}

{RegisterProc(nil,'GetPropValueSize',mtProc,TypeInfo(_T41),[
TypeInfo(TPersistent),
TypeInfoPointer,TypeInfo(Integer)],Addr(GetPropValueSize),cRegister)}

{RegisterProc(nil,'GetPTypeInfo',mtProc,TypeInfo(_T46),[
TypeInfoPointer,TypeInfoPointer],Addr(GetPTypeInfo),cRegister)}

{RegisterProc(nil,'AssignPropInfo',mtProc,TypeInfo(_T48),[
TypeInfo(TPersistent),
TypeInfo(TPersistent),
TypeInfoPointer,
TypeInfoPointer],Addr(AssignPropInfo),cRegister)}

{RegisterProc(nil,'GetPropValueByPropInfo',mtProc,TypeInfo(_T50),[
TypeInfo(TPersistent),
TypeInfoPointer,TypeInfo(Variant)],Addr(GetPropValueByPropInfo),cRegister)}

{RegisterProc(nil,'SetPropValueByPropInfo',mtProc,TypeInfo(_T51),[
TypeInfo(TPersistent),
TypeInfoPointer,
TypeInfo(Variant)],Addr(SetPropValueByPropInfo),cRegister)}

{RegisterProc(nil,'GetVirtualProcAddress',mtProc,TypeInfo(_T54),[
TypeInfo(TClass),
TypeInfo(TClass),
TypeInfoPointer,TypeInfoPointer],Addr(GetVirtualProcAddress),cRegister)}

{RegisterProc(nil,'DCQuickSort',mtProc,TypeInfo(_T59),[
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(TDCCompareCallBack),
TypeInfo(TDCExchangeCallBack)],Addr(DCQuickSort),cRegister)}

{RegisterProc(nil,'PSCGetIntfInstance',mtProc,TypeInfo(_T61),[
TypeInfo(IUnknown),TypeInfo(TObject)],Addr(PSCGetIntfInstance),cRegister)}

{RegisterProc(nil,'PSCSupportsInstance',mtProc,TypeInfo(_T62),[
TypeInfo(IUnknown),
TypeInfo(TClass),
TypeInfo(TObject),TypeInfo(Boolean)],Addr(PSCSupportsInstance),cRegister)}

{RegisterProc(TCustomDCNamedItems,'Create',mtConstructor,TypeInfo(_T66),[
TypeInfo(TComponent),
TypeInfo(TDCNamedItemClass)], pointer(40),cRegister)}

{RegRegisterMethod(TDCInterfaceList,'Sort',TypeInfo(_T69),[
TypeInfo(TDCInterfaceListSortCompare)],Addr(TDCInterfaceList.Sort))}

{RegisterProc(TSortedKeyDataList,'Create',mtConstructor,TypeInfo(_T96),[
TypeInfo(TSortedCustomDataClass)], pointer(24),cRegister)}

RegisterEvent(TypeInfo(TDCCompareCallBack),[
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(Integer)]);

RegisterEvent(TypeInfo(TDCExchangeCallBack),[
TypeInfo(Integer),
TypeInfo(Integer)]);

RegisterEvent(TypeInfo(TNotifyProc),[
TypeInfo(TComponent),
TypeInfo(TOperation)]);

{RegisterEvent(TypeInfo(TPropCallBack),[
TypeInfo(TPersistent),
TypeInfoPointer,
TypeInfo(Integer)]);}

RegisterEvent(TypeInfo(TUpdateCollectionEvent),[
TypeInfo(TObject),
TypeInfo(TCollectionItem)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
