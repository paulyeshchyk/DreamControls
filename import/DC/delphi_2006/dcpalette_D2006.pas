{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcpalette_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  dcscript,
  Classes,
  Dialogs,
  Windows,
  Controls,
  Graphics,
  Messages,
  ComCtrls,
  Forms,
  SysUtils,
  ActiveX,
  DCGen,
  DCSystem,
  DCCommon,
  DCAPI,
  DCdreamLib,
  DCConsts,
  DCEnvOpt,
  DCGraphFunc,
  DCPalette;
function ConvertTGUIDToVariant(var R : TGUID) : OleVariant;
function ConvertVariantToTGUID(const V : OleVariant) : TGUID;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TGUID__Wrapper = class(TDCRecordWrapper)
private
fR : TGUID;
public
function GetRecordPtr : pointer; override;
published
procedure setD1(const val : LongWord);
function getD1 : LongWord;
property D1 : LongWord read getD1 write setD1;
procedure setD2(const val : Word);
function getD2 : Word;
property D2 : Word read getD2 write setD2;
procedure setD3(const val : Word);
function getD3 : Word;
property D3 : Word read getD3 write setD3;
end;
type
_T0 = function : Boolean of object;

_T1 = function : TActiveXProvider of object;

_T2 = function (const p0 : IDispatch): IDispatch of object;

_T3 = procedure (const p0 : IDispatch;
var p1 : Integer;
var p2 : string) of object;

_T4 = function (const p0 : IDispatch): string of object;

_T5 = _T4;

_T6 = procedure (p0 : TBitmap;
p1 : THandle;
p2 : Integer) of object;

_T7 = function (const p0 : string): Boolean of object;

_T8 = function (p0 : HKEY;
const p1 : string): string of object;

_T9 = procedure  of object;

_T10 = _T9;

_T11 = procedure (const p0 : IDispatch) of object;

_T12 = _T11;

_T13 = _T9;

_T14 = _T0;

_T15 = procedure (const p0 : IDispatch;
const p1 : IDispatch;
const p2 : string;
p3 : THandle;
p4 : Integer) of object;

{_T16 = procedure (p0 : TComponentClass;
p1 : THandle) of object;}

_T17 = _T9;

_T18 = _T9;

_T19 = _T9;

_T20 = procedure (p0 : Integer) of object;

{_T21 = procedure (const p0 : string;
p1 : TComponentClass;
p2 : THandle) of object;}

_T22 = _T15;

_T23 = _T11;

_T24 = function : Integer of object;

_T25 = _T9;

_T26 = _T9;

_T27 = _T9;

_T28 = function : string of object;

_T29 = _T28;

_T30 = procedure (p0 : TDCSinglePaletterBar) of object;

_T31 = _T0;

_T32 = procedure (p0 : TCanvas;
p1 : Integer;
p2 : Integer;
p3 : Boolean;
p4 : Boolean) of object;

_T33 = procedure (p0 : TObject) of object;

_T34 = _T28;

_T35 = procedure (const p0 : string) of object;

_T36 = _T0;

_T37 = _T9;

_T38 = _T9;

_T39 = function (const p0 : string;
const p1 : string): string of object;

_T40 = function (const p0 : string;
const p1 : string;
var p2 : Integer;
var p3 : Integer): string of object;

_T41 = function (const p0 : string): Integer of object;

_T42 = procedure (p0 : Integer;
const p1 : string) of object;

_T43 = procedure (p0 : Integer;
p1 : Integer) of object;

_T44 = _T41;

_T45 = _T43;

_T46 = _T20;

_T47 = function (p0 : Integer;
p1 : Integer;
p2 : Integer): Integer of object;

_T48 = function (p0 : Integer;
p1 : Integer): Integer of object;

_T49 = _T48;

_T50 = function (const p0 : string;
p1 : Integer): Integer of object;

_T51 = _T9;

_T52 = _T24;

_T53 = _T24;

_T54 = procedure (p0 : TDCPaletteButton;
p1 : Integer;
p2 : Integer;
p3 : Boolean;
p4 : Boolean) of object;

_T55 = _T9;

_T56 = _T9;

_T57 = _T41;

{_T58 = function (p0 : TComponentClass;
p1 : THandle): TDCPaletteButton of object;}

_T59 = function (const p0 : IDispatch;
const p1 : IDispatch;
const p2 : string;
p3 : THandle;
p4 : Integer): TDCPaletteButton of object;

_T60 = _T48;

_T61 = _T20;

_T62 = procedure (p0 : TDCStoredPageInfo) of object;

_T63 = procedure (const p0 : string;
const p1 : string) of object;

_T64 = _T9;

_T65 = _T41;

_T66 = _T41;

_T67 = _T42;

_T68 = _T20;

_T69 = _T28;

_T70 = _T43;

function __TGUID__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TGUID__Wrapper.setD1(const val : LongWord);
begin
TGUID(GetRecordPtr^).D1 := val;
end;
function __TGUID__Wrapper.getD1 : LongWord;
begin
result := TGUID(GetRecordPtr^).D1;
end;
procedure __TGUID__Wrapper.setD2(const val : Word);
begin
TGUID(GetRecordPtr^).D2 := val;
end;
function __TGUID__Wrapper.getD2 : Word;
begin
result := TGUID(GetRecordPtr^).D2;
end;
procedure __TGUID__Wrapper.setD3(const val : Word);
begin
TGUID(GetRecordPtr^).D3 := val;
end;
function __TGUID__Wrapper.getD3 : Word;
begin
result := TGUID(GetRecordPtr^).D3;
end;
function ____DCGetTypeLibraryGUID__Wrapper(const p0 : IDispatch): IDispatch;
var
__result : TGUID;
__wrapper : __TGUID__Wrapper;
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
__result := DCGetTypeLibraryGUID(__p0^);
__wrapper := __TGUID__Wrapper.Create;
__wrapper.fR := __result;
result := IDispatch(__wrapper);
end;

procedure ____DCGetActiveXPictureInfo__Wrapper(const p0 : IDispatch;
var p1 : Integer;
var p2 : string);
var
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
DCGetActiveXPictureInfo(__p0^,p1,p2);
end;

function ____DCGetActiveXHint__Wrapper(const p0 : IDispatch): string;
var
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := DCGetActiveXHint(__p0^);
end;

function ____DCGetInprocServer__Wrapper(const p0 : IDispatch): string;
var
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := DCGetInprocServer(__p0^);
end;

procedure __TActiveXProvider__RegisterActiveX__Wrapper(__Instance : TActiveXProvider;
const p0 : IDispatch);
var
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
TActiveXProvider(__Instance).RegisterActiveX(__p0^);
end;

procedure __TActiveXProvider__UnregisterActiveX__Wrapper(__Instance : TActiveXProvider;
const p0 : IDispatch);
var
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
TActiveXProvider(__Instance).UnregisterActiveX(__p0^);
end;

procedure __TDCActiveXButton__InitButton__Wrapper(__Instance : TDCActiveXButton;
const p0 : IDispatch;
const p1 : IDispatch;
const p2 : string;
p3 : THandle;
p4 : Integer);
var
__p0 : ^TGUID;
__i0 : IDispatch;
__p1 : ^TGUID;
__i1 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
TDCActiveXButton(__Instance).InitButton(__p0^,__p1^,p2,p3,p4);
end;

procedure __TDCCustomComponentPalette__RegisterActiveX__Wrapper(__Instance : TDCCustomComponentPalette;
const p0 : IDispatch;
const p1 : IDispatch;
const p2 : string;
p3 : THandle;
p4 : Integer);
var
__p0 : ^TGUID;
__i0 : IDispatch;
__p1 : ^TGUID;
__i1 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
TDCCustomComponentPalette(__Instance).RegisterActiveX(__p0^,__p1^,p2,p3,p4);
end;

procedure __TDCCustomComponentPalette__UnregisterActiveX__Wrapper(__Instance : TDCCustomComponentPalette;
const p0 : IDispatch);
var
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
TDCCustomComponentPalette(__Instance).UnregisterActiveX(__p0^);
end;

function __TDCSinglePaletterBar__AddActiveX__Wrapper(__Instance : TDCSinglePaletterBar;
const p0 : IDispatch;
const p1 : IDispatch;
const p2 : string;
p3 : THandle;
p4 : Integer): TDCPaletteButton;
var
__p0 : ^TGUID;
__i0 : IDispatch;
__p1 : ^TGUID;
__i1 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
result := TDCSinglePaletterBar(__Instance).AddActiveX(__p0^,__p1^,p2,p3,p4);
end;


type __TGUID__Wrapper__ = class(__TGUID__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TGUID__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTGUIDToVariant(var R : TGUID) : OleVariant;
var
__rw : __TGUID__Wrapper__;
begin
__rw := __TGUID__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTGUID(const V : OleVariant) : TGUID;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TGUID((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
function __DC__GetTActiveXProvider__RegisteredLibs(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TActiveXProvider(Instance).RegisteredLibs);
end;

function __DC__GetTActiveXProvider__Count(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TActiveXProvider(Instance).Count;
end;

function __DC__GetTActiveXProvider__TypeLibraries(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TActiveXProvider(Instance).TypeLibraries[OleVariant(Params^[0])]);
end;

function __DC__GetTActiveXProvider__RegisterImmediately(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TActiveXProvider(Instance).RegisterImmediately;
end;

procedure __DC__SetTActiveXProvider__RegisterImmediately(Instance : TObject; Params : PVariantArgList);
begin
TActiveXProvider(Instance).RegisterImmediately:=OleVariant(Params^[0]);
end;

function __DC__GetTDCActiveXButton__GUID(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __TGUID__Wrapper;
begin
__wrapper := __TGUID__Wrapper.Create;
__wrapper.fR := TDCActiveXButton(Instance).GUID;
result := IUnknown(__wrapper) as IDispatch;
end;

function __DC__GetTDCActiveXButton__TypeLib(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __TGUID__Wrapper;
begin
__wrapper := __TGUID__Wrapper.Create;
__wrapper.fR := TDCActiveXButton(Instance).TypeLib;
result := IUnknown(__wrapper) as IDispatch;
end;

function __DC__GetTDCCompButton__PackageID(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCompButton(Instance).PackageID;
end;

function __DC__GetTDCCustomComponentPalette__ButtonTabs(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCCustomComponentPalette(Instance).ButtonTabs[OleVariant(Params^[0])]);
end;

function __DC__GetTDCCustomComponentPalette__SelectedComponent(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomComponentPalette(Instance).SelectedComponent;
end;

procedure __DC__SetTDCCustomComponentPalette__SelectedComponent(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomComponentPalette(Instance).SelectedComponent:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomComponentPalette__MouseGlyph(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCCustomComponentPalette(Instance).MouseGlyph);
end;

procedure __DC__SetTDCCustomComponentPalette__MouseGlyph(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomComponentPalette(Instance).MouseGlyph:=TBitmap(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCCustomComponentPalette__AutoSize(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomComponentPalette(Instance).AutoSize;
end;

procedure __DC__SetTDCCustomComponentPalette__AutoSize(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomComponentPalette(Instance).AutoSize:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomComponentPalette__OnlyDefinedItems(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomComponentPalette(Instance).OnlyDefinedItems;
end;

procedure __DC__SetTDCCustomComponentPalette__OnlyDefinedItems(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomComponentPalette(Instance).OnlyDefinedItems:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomComponentPalette__PredefinedPages(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCCustomComponentPalette(Instance).PredefinedPages);
end;

procedure __DC__SetTDCCustomComponentPalette__PredefinedPages(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomComponentPalette(Instance).PredefinedPages:=TStrings(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCCustomComponentPalette__RegistryKey(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomComponentPalette(Instance).RegistryKey;
end;

procedure __DC__SetTDCCustomComponentPalette__RegistryKey(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomComponentPalette(Instance).RegistryKey:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomComponentPalette__ShowActiveX(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomComponentPalette(Instance).ShowActiveX;
end;

procedure __DC__SetTDCCustomComponentPalette__ShowActiveX(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomComponentPalette(Instance).ShowActiveX:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomComponentPalette__UseGlobalOptions(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomComponentPalette(Instance).UseGlobalOptions;
end;

procedure __DC__SetTDCCustomComponentPalette__UseGlobalOptions(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomComponentPalette(Instance).UseGlobalOptions:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomComponentPalette__ShowHint(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomComponentPalette(Instance).ShowHint;
end;

procedure __DC__SetTDCCustomComponentPalette__ShowHint(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomComponentPalette(Instance).ShowHint:=OleVariant(Params^[0]);
end;

function __DC__GetTDCPaletteStorage__Pages(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCPaletteStorage(Instance).Pages[OleVariant(Params^[0])]);
end;

function __DC__GetTDCPaletteStorage__HiddenControls(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCPaletteStorage(Instance).HiddenControls[OleVariant(Params^[0])];
end;

procedure __DC__SetTDCPaletteStorage__HiddenControls(Instance : TObject; Params : PVariantArgList);
begin
TDCPaletteStorage(Instance).HiddenControls[OleVariant(Params^[1])]:=OleVariant(Params^[0]);
end;

function __DC__GetTDCSinglePaletterBar__ButtonCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCSinglePaletterBar(Instance).ButtonCount;
end;

function __DC__GetTDCSinglePaletterBar__Buttons(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCSinglePaletterBar(Instance).Buttons[OleVariant(Params^[0])]);
end;

procedure __DC__SetTDCSinglePaletterBar__Buttons(Instance : TObject; Params : PVariantArgList);
begin
TDCSinglePaletterBar(Instance).Buttons[OleVariant(Params^[1])]:=TDCPaletteButton(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTDCSinglePaletterBar__SelectedItem(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCSinglePaletterBar(Instance).SelectedItem;
end;

procedure __DC__SetTDCSinglePaletterBar__SelectedItem(Instance : TObject; Params : PVariantArgList);
begin
TDCSinglePaletterBar(Instance).SelectedItem:=OleVariant(Params^[0]);
end;

function __DC__GetTDCSinglePaletterBar__SelectedComponent(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCSinglePaletterBar(Instance).SelectedComponent;
end;

procedure __DC__SetTDCSinglePaletterBar__SelectedComponent(Instance : TObject; Params : PVariantArgList);
begin
TDCSinglePaletterBar(Instance).SelectedComponent:=OleVariant(Params^[0]);
end;

function __DC__GetTDCSinglePaletterBar__PermanentSelection(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCSinglePaletterBar(Instance).PermanentSelection;
end;

procedure __DC__SetTDCSinglePaletterBar__PermanentSelection(Instance : TObject; Params : PVariantArgList);
begin
TDCSinglePaletterBar(Instance).PermanentSelection:=OleVariant(Params^[0]);
end;

function __DC__GetTDCSinglePaletterBar__ShowHint(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCSinglePaletterBar(Instance).ShowHint;
end;

procedure __DC__SetTDCSinglePaletterBar__ShowHint(Instance : TObject; Params : PVariantArgList);
begin
TDCSinglePaletterBar(Instance).ShowHint:=OleVariant(Params^[0]);
end;

function __DC__GetTDCStoredPageInfo__PageName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCStoredPageInfo(Instance).PageName;
end;

procedure __DC__SetTDCStoredPageInfo__PageName(Instance : TObject; Params : PVariantArgList);
begin
TDCStoredPageInfo(Instance).PageName:=OleVariant(Params^[0]);
end;

function __DC__GetTDCStoredPageInfo__Count(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCStoredPageInfo(Instance).Count;
end;

function __DC__GetTDCStoredPageInfo__Components(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCStoredPageInfo(Instance).Components[OleVariant(Params^[0])];
end;

procedure __DC__SetTDCStoredPageInfo__Components(Instance : TObject; Params : PVariantArgList);
begin
TDCStoredPageInfo(Instance).Components[OleVariant(Params^[1])]:=OleVariant(Params^[0]);
end;

function __DC__GetTTypeLibraryDesc__GUID(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __TGUID__Wrapper;
begin
__wrapper := __TGUID__Wrapper.Create;
__wrapper.fR := TTypeLibraryDesc(Instance).GUID;
result := IUnknown(__wrapper) as IDispatch;
end;

function __DC__GetTTypeLibraryDesc__ActiveX(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __TGUID__Wrapper;
begin
__wrapper := __TGUID__Wrapper.Create;
__wrapper.fR := TTypeLibraryDesc(Instance).ActiveX[OleVariant(Params^[0])];
result := IUnknown(__wrapper) as IDispatch;
end;

procedure __DC__SetTTypeLibraryDesc__ActiveX(Instance : TObject; Params : PVariantArgList);
var
__idisp:IDispatch;
__iwrapper:IDCRecordWrapper;
begin
__idisp:=DCVarToInterface(OleVariant(Params^[0]));
if __idisp=nil then exit;
__idisp.QueryInterface(IDCRecordWrapper, __iwrapper);
TTypeLibraryDesc(Instance).ActiveX[OleVariant(Params^[1])]:=TGUID(__iwrapper.GetRecordPtr^);
end;

function __DC__GetTTypeLibraryDesc__Count(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TTypeLibraryDesc(Instance).Count;
end;

procedure __RegisterProps;
begin
RegisterProperty(TActiveXProvider,'RegisteredLibs',__DC__GetTActiveXProvider__RegisteredLibs,nil);
RegisterProperty(TActiveXProvider,'Count',__DC__GetTActiveXProvider__Count,nil);
RegisterIndexedProperty(TActiveXProvider,'TypeLibraries',1,False,__DC__GetTActiveXProvider__TypeLibraries,nil);
RegisterProperty(TActiveXProvider,'RegisterImmediately',__DC__GetTActiveXProvider__RegisterImmediately,__DC__SetTActiveXProvider__RegisterImmediately);
RegisterProperty(TDCActiveXButton,'GUID',__DC__GetTDCActiveXButton__GUID,nil);
RegisterProperty(TDCActiveXButton,'TypeLib',__DC__GetTDCActiveXButton__TypeLib,nil);
RegisterProperty(TDCCompButton,'PackageID',__DC__GetTDCCompButton__PackageID,nil);
RegisterIndexedProperty(TDCCustomComponentPalette,'ButtonTabs',1,False,__DC__GetTDCCustomComponentPalette__ButtonTabs,nil);
RegisterProperty(TDCCustomComponentPalette,'SelectedComponent',__DC__GetTDCCustomComponentPalette__SelectedComponent,__DC__SetTDCCustomComponentPalette__SelectedComponent);
RegisterProperty(TDCCustomComponentPalette,'MouseGlyph',__DC__GetTDCCustomComponentPalette__MouseGlyph,__DC__SetTDCCustomComponentPalette__MouseGlyph);
RegisterProperty(TDCCustomComponentPalette,'AutoSize',__DC__GetTDCCustomComponentPalette__AutoSize,__DC__SetTDCCustomComponentPalette__AutoSize);
RegisterProperty(TDCCustomComponentPalette,'OnlyDefinedItems',__DC__GetTDCCustomComponentPalette__OnlyDefinedItems,__DC__SetTDCCustomComponentPalette__OnlyDefinedItems);
RegisterProperty(TDCCustomComponentPalette,'PredefinedPages',__DC__GetTDCCustomComponentPalette__PredefinedPages,__DC__SetTDCCustomComponentPalette__PredefinedPages);
RegisterProperty(TDCCustomComponentPalette,'RegistryKey',__DC__GetTDCCustomComponentPalette__RegistryKey,__DC__SetTDCCustomComponentPalette__RegistryKey);
RegisterProperty(TDCCustomComponentPalette,'ShowActiveX',__DC__GetTDCCustomComponentPalette__ShowActiveX,__DC__SetTDCCustomComponentPalette__ShowActiveX);
RegisterProperty(TDCCustomComponentPalette,'UseGlobalOptions',__DC__GetTDCCustomComponentPalette__UseGlobalOptions,__DC__SetTDCCustomComponentPalette__UseGlobalOptions);
RegisterProperty(TDCCustomComponentPalette,'ShowHint',__DC__GetTDCCustomComponentPalette__ShowHint,__DC__SetTDCCustomComponentPalette__ShowHint);
RegisterIndexedProperty(TDCPaletteStorage,'Pages',1,True,__DC__GetTDCPaletteStorage__Pages,nil);
RegisterIndexedProperty(TDCPaletteStorage,'HiddenControls',1,False,__DC__GetTDCPaletteStorage__HiddenControls,__DC__SetTDCPaletteStorage__HiddenControls);
RegisterProperty(TDCSinglePaletterBar,'ButtonCount',__DC__GetTDCSinglePaletterBar__ButtonCount,nil);
RegisterIndexedProperty(TDCSinglePaletterBar,'Buttons',1,False,__DC__GetTDCSinglePaletterBar__Buttons,__DC__SetTDCSinglePaletterBar__Buttons);
RegisterProperty(TDCSinglePaletterBar,'SelectedItem',__DC__GetTDCSinglePaletterBar__SelectedItem,__DC__SetTDCSinglePaletterBar__SelectedItem);
RegisterProperty(TDCSinglePaletterBar,'SelectedComponent',__DC__GetTDCSinglePaletterBar__SelectedComponent,__DC__SetTDCSinglePaletterBar__SelectedComponent);
RegisterProperty(TDCSinglePaletterBar,'PermanentSelection',__DC__GetTDCSinglePaletterBar__PermanentSelection,__DC__SetTDCSinglePaletterBar__PermanentSelection);
RegisterProperty(TDCSinglePaletterBar,'ShowHint',__DC__GetTDCSinglePaletterBar__ShowHint,__DC__SetTDCSinglePaletterBar__ShowHint);
RegisterProperty(TDCStoredPageInfo,'PageName',__DC__GetTDCStoredPageInfo__PageName,__DC__SetTDCStoredPageInfo__PageName);
RegisterProperty(TDCStoredPageInfo,'Count',__DC__GetTDCStoredPageInfo__Count,nil);
RegisterIndexedProperty(TDCStoredPageInfo,'Components',1,False,__DC__GetTDCStoredPageInfo__Components,__DC__SetTDCStoredPageInfo__Components);
RegisterProperty(TTypeLibraryDesc,'GUID',__DC__GetTTypeLibraryDesc__GUID,nil);
RegisterIndexedProperty(TTypeLibraryDesc,'ActiveX',1,False,__DC__GetTTypeLibraryDesc__ActiveX,__DC__SetTTypeLibraryDesc__ActiveX);
RegisterProperty(TTypeLibraryDesc,'Count',__DC__GetTTypeLibraryDesc__Count,nil);
end;

const __ConstNames0 : array[0..4] of string = (
'sDCCannotSaveToRegistry'
,'ccsRefreshing'
,'ccsClearing'
,'sDCNoNameTypeLibrary'
,'sDCPalActiveX'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,sDCCannotSaveToRegistry));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,ccsRefreshing));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,ccsClearing));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,sDCNoNameTypeLibrary));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,sDCPalActiveX));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..9] of TClass = (
TActiveXProvider,
TDCActiveXButton,
TDCCompButton,
TDCComponentPalette,
TDCCustomComponentPalette,
TDCPaletteButton,
TDCPaletteStorage,
TDCSinglePaletterBar,
TDCStoredPageInfo,
TTypeLibraryDesc
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
const MethodNames : array[0..8] of string = (
'DCAreAnyActiveXAvailable'
,'DCGetActiveXProvider'
,'DCGetTypeLibraryGUID'
,'DCGetActiveXPictureInfo'
,'DCGetActiveXHint'
,'DCGetInprocServer'
,'DCLoadActiveXPicture'
,'DCIsActiveXRegisteres'
,'DCReadValueFromRegistry'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[TypeInfo(Boolean)],Addr(DCAreAnyActiveXAvailable),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[TypeInfo(TActiveXProvider)],Addr(DCGetActiveXProvider),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfo(IDispatch),TypeInfo(IDispatch)],Addr(____DCGetTypeLibraryGUID__Wrapper),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T3),[
TypeInfo(IDispatch),
TypeInfo(Integer),
TypeInfo(string)],Addr(____DCGetActiveXPictureInfo__Wrapper),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T4),[
TypeInfo(IDispatch),TypeInfo(string)],Addr(____DCGetActiveXHint__Wrapper),cRegister);

RegisterProc(nil,MethodNames[5],mtProc,TypeInfo(_T5),[
TypeInfo(IDispatch),TypeInfo(string)],Addr(____DCGetInprocServer__Wrapper),cRegister);

RegisterProc(nil,MethodNames[6],mtProc,TypeInfo(_T6),[
TypeInfo(TBitmap),
TypeInfo(THandle),
TypeInfo(Integer)],Addr(DCLoadActiveXPicture),cRegister);

RegisterProc(nil,MethodNames[7],mtProc,TypeInfo(_T7),[
TypeInfo(string),TypeInfo(Boolean)],Addr(DCIsActiveXRegisteres),cRegister);

RegisterProc(nil,MethodNames[8],mtProc,TypeInfo(_T8),[
TypeInfo(HKEY),
TypeInfo(string),TypeInfo(string)],Addr(DCReadValueFromRegistry),cRegister);

//RegisterProc(TActiveXProvider,'Create',mtConstructor,TypeInfo(_T9),NoParams, pointer(0),cRegister);
RegisterProc(TActiveXProvider,'Create',mtConstructor,TypeInfo(_T9),NoParams,  getVMTProcAddr('TActiveXProvider','Create',0),cRegister);


RegRegisterMethod(TActiveXProvider,'Initialize',TypeInfo(_T10),NoParams,Addr(TActiveXProvider.Initialize));

RegRegisterMethod(TActiveXProvider,'RegisterActiveX',TypeInfo(_T11),[
TypeInfo(IDispatch)],Addr(__TActiveXProvider__RegisterActiveX__Wrapper));

RegRegisterMethod(TActiveXProvider,'UnregisterActiveX',TypeInfo(_T12),[
TypeInfo(IDispatch)],Addr(__TActiveXProvider__UnregisterActiveX__Wrapper));

RegRegisterMethod(TActiveXProvider,'SaveActiveXConfig',TypeInfo(_T13),NoParams,Addr(TActiveXProvider.SaveActiveXConfig));

RegRegisterMethod(TActiveXProvider,'WasAnyChanges',TypeInfo(_T14),[TypeInfo(Boolean)],Addr(TActiveXProvider.WasAnyChanges));

RegRegisterMethod(TDCActiveXButton,'InitButton',TypeInfo(_T15),[
TypeInfo(IDispatch),
TypeInfo(IDispatch),
TypeInfo(string),
TypeInfo(THandle),
TypeInfo(Integer)],Addr(__TDCActiveXButton__InitButton__Wrapper));

RegRegisterMethod(TDCCustomComponentPalette,'RefreshData',TypeInfo(_T17),NoParams,Addr(TDCCustomComponentPalette.RefreshData));

RegRegisterMethod(TDCCustomComponentPalette,'Clear',TypeInfo(_T18),NoParams,Addr(TDCCustomComponentPalette.Clear));

RegRegisterMethod(TDCCustomComponentPalette,'ResetSelection',TypeInfo(_T19),NoParams,Addr(TDCCustomComponentPalette.ResetSelection));

RegRegisterMethod(TDCCustomComponentPalette,'SetNewTabIndex',TypeInfo(_T20),[
TypeInfo(Integer)],Addr(TDCCustomComponentPalette.SetNewTabIndex));

RegRegisterMethod(TDCCustomComponentPalette,'RegisterActiveX',TypeInfo(_T22),[
TypeInfo(IDispatch),
TypeInfo(IDispatch),
TypeInfo(string),
TypeInfo(THandle),
TypeInfo(Integer)],Addr(__TDCCustomComponentPalette__RegisterActiveX__Wrapper));

RegRegisterMethod(TDCCustomComponentPalette,'UnregisterActiveX',TypeInfo(_T23),[
TypeInfo(IDispatch)],Addr(__TDCCustomComponentPalette__UnregisterActiveX__Wrapper));

RegRegisterMethod(TDCCustomComponentPalette,'PageCount',TypeInfo(_T24),[TypeInfo(Integer)],Addr(TDCCustomComponentPalette.PageCount));

RegRegisterMethod(TDCCustomComponentPalette,'LoadGlobalOptions',TypeInfo(_T25),NoParams,Addr(TDCCustomComponentPalette.LoadGlobalOptions));

RegRegisterMethod(TDCCustomComponentPalette,'SelectMouseButton',TypeInfo(_T26),NoParams,Addr(TDCCustomComponentPalette.SelectMouseButton));

//RegRegisterMethod(TDCPaletteButton,'InitImage',TypeInfo(_T27),NoParams, pointer(12));
RegRegisterMethod(TDCPaletteButton,'InitImage',TypeInfo(_T27),NoParams,  getVMTProcAddr('TDCPaletteButton','InitImage',12));


//RegRegisterMethod(TDCPaletteButton,'GetComponentHint',TypeInfo(_T28),[TypeInfo(string)], pointer(16));
RegRegisterMethod(TDCPaletteButton,'GetComponentHint',TypeInfo(_T28),[TypeInfo(string)],  getVMTProcAddr('TDCPaletteButton','GetComponentHint',16));


//RegRegisterMethod(TDCPaletteButton,'ButtonName',TypeInfo(_T29),[TypeInfo(string)], pointer(20));
RegRegisterMethod(TDCPaletteButton,'ButtonName',TypeInfo(_T29),[TypeInfo(string)],  getVMTProcAddr('TDCPaletteButton','ButtonName',20));


RegisterProc(TDCPaletteButton,'Create',mtConstructor,TypeInfo(_T30),[
TypeInfo(TDCSinglePaletterBar)], pointer(24),cRegister);

//RegRegisterMethod(TDCPaletteButton,'ImageInitilized',TypeInfo(_T31),[TypeInfo(Boolean)], pointer(28));
RegRegisterMethod(TDCPaletteButton,'ImageInitilized',TypeInfo(_T31),[TypeInfo(Boolean)],  getVMTProcAddr('TDCPaletteButton','ImageInitilized',28));


//RegRegisterMethod(TDCPaletteButton,'DrawBtn',TypeInfo(_T32),[TypeInfo(TCanvas),TypeInfo(Integer),TypeInfo(Integer),TypeInfo(Boolean),TypeInfo(Boolean)], pointer(32));
RegRegisterMethod(TDCPaletteButton,'DrawBtn',TypeInfo(_T32),[TypeInfo(TCanvas),TypeInfo(Integer),TypeInfo(Integer),TypeInfo(Boolean),TypeInfo(Boolean)],  getVMTProcAddr('TDCPaletteButton','DrawBtn',32));


RegisterProc(TDCPaletteStorage,'Create',mtConstructor,TypeInfo(_T33),[
TypeInfo(TObject)], pointer(0),cRegister);

RegRegisterMethod(TDCPaletteStorage,'GetRegKeyName',TypeInfo(_T34),[TypeInfo(string)],Addr(TDCPaletteStorage.GetRegKeyName));

RegRegisterMethod(TDCPaletteStorage,'SetNewRegKey',TypeInfo(_T35),[
TypeInfo(string)],Addr(TDCPaletteStorage.SetNewRegKey));

RegRegisterMethod(TDCPaletteStorage,'IsClear',TypeInfo(_T36),[TypeInfo(Boolean)],Addr(TDCPaletteStorage.IsClear));

RegRegisterMethod(TDCPaletteStorage,'Initialize',TypeInfo(_T37),NoParams,Addr(TDCPaletteStorage.Initialize));

RegRegisterMethod(TDCPaletteStorage,'ResetPalette',TypeInfo(_T38),NoParams,Addr(TDCPaletteStorage.ResetPalette));

RegRegisterMethod(TDCPaletteStorage,'QueryComponentPage',TypeInfo(_T39),[
TypeInfo(string),
TypeInfo(string),TypeInfo(string)],Addr(TDCPaletteStorage.QueryComponentPage));

RegRegisterMethod(TDCPaletteStorage,'QueryComponentPageEx',TypeInfo(_T40),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(string)],Addr(TDCPaletteStorage.QueryComponentPageEx));

RegRegisterMethod(TDCPaletteStorage,'PageByName',TypeInfo(_T41),[
TypeInfo(string),TypeInfo(Integer)],Addr(TDCPaletteStorage.PageByName));

RegRegisterMethod(TDCPaletteStorage,'InsertPage',TypeInfo(_T42),[
TypeInfo(Integer),
TypeInfo(string)],Addr(TDCPaletteStorage.InsertPage));

RegRegisterMethod(TDCPaletteStorage,'MovePage',TypeInfo(_T43),[
TypeInfo(Integer),
TypeInfo(Integer)],Addr(TDCPaletteStorage.MovePage));

RegRegisterMethod(TDCPaletteStorage,'AddNewPage',TypeInfo(_T44),[
TypeInfo(string),TypeInfo(Integer)],Addr(TDCPaletteStorage.AddNewPage));

RegRegisterMethod(TDCPaletteStorage,'MoveItemTo',TypeInfo(_T45),[
TypeInfo(Integer),
TypeInfo(Integer)],Addr(TDCPaletteStorage.MoveItemTo));

RegRegisterMethod(TDCPaletteStorage,'DeletePage',TypeInfo(_T46),[
TypeInfo(Integer)],Addr(TDCPaletteStorage.DeletePage));

RegRegisterMethod(TDCPaletteStorage,'MoveComponent',TypeInfo(_T47),[
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(Integer)],Addr(TDCPaletteStorage.MoveComponent));

RegRegisterMethod(TDCPaletteStorage,'HideComponent',TypeInfo(_T48),[
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(Integer)],Addr(TDCPaletteStorage.HideComponent));

RegRegisterMethod(TDCPaletteStorage,'ShowComponent',TypeInfo(_T49),[
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(Integer)],Addr(TDCPaletteStorage.ShowComponent));

RegRegisterMethod(TDCPaletteStorage,'ShowComponentEx',TypeInfo(_T50),[
TypeInfo(string),
TypeInfo(Integer),TypeInfo(Integer)],Addr(TDCPaletteStorage.ShowComponentEx));

RegRegisterMethod(TDCPaletteStorage,'SavePalette',TypeInfo(_T51),NoParams,Addr(TDCPaletteStorage.SavePalette));

RegRegisterMethod(TDCPaletteStorage,'Count',TypeInfo(_T52),[TypeInfo(Integer)],Addr(TDCPaletteStorage.Count));

RegRegisterMethod(TDCPaletteStorage,'HiddenCount',TypeInfo(_T53),[TypeInfo(Integer)],Addr(TDCPaletteStorage.HiddenCount));

//RegRegisterMethod(TDCSinglePaletterBar,'DrawButton',TypeInfo(_T54),[TypeInfo(TDCPaletteButton),TypeInfo(Integer),TypeInfo(Integer),TypeInfo(Boolean),TypeInfo(Boolean)], pointer(220));
RegRegisterMethod(TDCSinglePaletterBar,'DrawButton',TypeInfo(_T54),[TypeInfo(TDCPaletteButton),TypeInfo(Integer),TypeInfo(Integer),TypeInfo(Boolean),TypeInfo(Boolean)],  getVMTProcAddr('TDCSinglePaletterBar','DrawButton',220));


RegRegisterMethod(TDCSinglePaletterBar,'Clear',TypeInfo(_T55),NoParams,Addr(TDCSinglePaletterBar.Clear));

RegRegisterMethod(TDCSinglePaletterBar,'ResetSelection',TypeInfo(_T56),NoParams,Addr(TDCSinglePaletterBar.ResetSelection));

RegRegisterMethod(TDCSinglePaletterBar,'FindElement',TypeInfo(_T57),[
TypeInfo(string),TypeInfo(Integer)],Addr(TDCSinglePaletterBar.FindElement));

RegRegisterMethod(TDCSinglePaletterBar,'AddActiveX',TypeInfo(_T59),[
TypeInfo(IDispatch),
TypeInfo(IDispatch),
TypeInfo(string),
TypeInfo(THandle),
TypeInfo(Integer),TypeInfo(TDCPaletteButton)],Addr(__TDCSinglePaletterBar__AddActiveX__Wrapper));

RegRegisterMethod(TDCSinglePaletterBar,'GetButtonAt',TypeInfo(_T60),[
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(Integer)],Addr(TDCSinglePaletterBar.GetButtonAt));

RegRegisterMethod(TDCSinglePaletterBar,'DeleteButton',TypeInfo(_T61),[
TypeInfo(Integer)],Addr(TDCSinglePaletterBar.DeleteButton));

RegRegisterMethod(TDCSinglePaletterBar,'ResetBarOrder',TypeInfo(_T62),[
TypeInfo(TDCStoredPageInfo)],Addr(TDCSinglePaletterBar.ResetBarOrder));

RegisterProc(TDCStoredPageInfo,'Create',mtConstructor,TypeInfo(_T63),[
TypeInfo(string),
TypeInfo(string)], pointer(0),cRegister);

RegRegisterMethod(TDCStoredPageInfo,'Clear',TypeInfo(_T64),NoParams,Addr(TDCStoredPageInfo.Clear));

RegRegisterMethod(TDCStoredPageInfo,'GetComponentOnPage',TypeInfo(_T65),[
TypeInfo(string),TypeInfo(Integer)],Addr(TDCStoredPageInfo.GetComponentOnPage));

RegRegisterMethod(TDCStoredPageInfo,'AddComponent',TypeInfo(_T66),[
TypeInfo(string),TypeInfo(Integer)],Addr(TDCStoredPageInfo.AddComponent));

RegRegisterMethod(TDCStoredPageInfo,'InsertComponent',TypeInfo(_T67),[
TypeInfo(Integer),
TypeInfo(string)],Addr(TDCStoredPageInfo.InsertComponent));

RegRegisterMethod(TDCStoredPageInfo,'DeleteComponent',TypeInfo(_T68),[
TypeInfo(Integer)],Addr(TDCStoredPageInfo.DeleteComponent));

RegRegisterMethod(TDCStoredPageInfo,'GetComponentsSet',TypeInfo(_T69),[TypeInfo(string)],Addr(TDCStoredPageInfo.GetComponentsSet));

RegRegisterMethod(TDCStoredPageInfo,'MoveComponent',TypeInfo(_T70),[
TypeInfo(Integer),
TypeInfo(Integer)],Addr(TDCStoredPageInfo.MoveComponent));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
{RegRegisterMethod(TDCCompButton,'InitButton',TypeInfo(_T16),[
TypeInfo(TComponentClass),
TypeInfo(THandle)],Addr(TDCCompButton.InitButton))}

{RegRegisterMethod(TDCCustomComponentPalette,'RegisterComp',TypeInfo(_T21),[
TypeInfo(string),
TypeInfo(TComponentClass),
TypeInfo(THandle)],Addr(TDCCustomComponentPalette.RegisterComp))}

{RegRegisterMethod(TDCSinglePaletterBar,'AddComponent',TypeInfo(_T58),[
TypeInfo(TComponentClass),
TypeInfo(THandle),TypeInfo(TDCPaletteButton)],Addr(TDCSinglePaletterBar.AddComponent))}

RegisterEvent(TypeInfo(TOnGetHintEvent),[
TypeInfo(TObject),
TypeInfo(string)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
