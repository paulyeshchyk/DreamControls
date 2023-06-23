{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit MAPI_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  classes,
  dcscript,
  dcsystem,
  dcdreamlib,
  Windows,
  Mapi;
function ConvertMapiFileDescToVariant(var R : MapiFileDesc) : OleVariant;
function ConvertVariantToMapiFileDesc(const V : OleVariant) : MapiFileDesc;
function ConvertMapiFileTagExtToVariant(var R : MapiFileTagExt) : OleVariant;
function ConvertVariantToMapiFileTagExt(const V : OleVariant) : MapiFileTagExt;
function ConvertMapiMessageToVariant(var R : MapiMessage) : OleVariant;
function ConvertVariantToMapiMessage(const V : OleVariant) : MapiMessage;
function ConvertMapiRecipDescToVariant(var R : MapiRecipDesc) : OleVariant;
function ConvertVariantToMapiRecipDesc(const V : OleVariant) : MapiRecipDesc;
function ConvertTMapiFileDescToVariant(var R : TMapiFileDesc) : OleVariant;
function ConvertVariantToTMapiFileDesc(const V : OleVariant) : TMapiFileDesc;
function ConvertTMapiFileTagExtToVariant(var R : TMapiFileTagExt) : OleVariant;
function ConvertVariantToTMapiFileTagExt(const V : OleVariant) : TMapiFileTagExt;
function ConvertTMapiMessageToVariant(var R : TMapiMessage) : OleVariant;
function ConvertVariantToTMapiMessage(const V : OleVariant) : TMapiMessage;
function ConvertTMapiRecipDescToVariant(var R : TMapiRecipDesc) : OleVariant;
function ConvertVariantToTMapiRecipDesc(const V : OleVariant) : TMapiRecipDesc;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __MapiFileDesc__Wrapper = class(TDCRecordWrapper)
private
fR : MapiFileDesc;
public
function GetRecordPtr : pointer; override;
published
procedure setulReserved(const val : Cardinal);
function getulReserved : Cardinal;
property ulReserved : Cardinal read getulReserved write setulReserved;
procedure setflFlags(const val : Cardinal);
function getflFlags : Cardinal;
property flFlags : Cardinal read getflFlags write setflFlags;
procedure setnPosition(const val : Cardinal);
function getnPosition : Cardinal;
property nPosition : Cardinal read getnPosition write setnPosition;
end;
type __MapiFileTagExt__Wrapper = class(TDCRecordWrapper)
private
fR : MapiFileTagExt;
public
function GetRecordPtr : pointer; override;
published
procedure setulReserved(const val : Cardinal);
function getulReserved : Cardinal;
property ulReserved : Cardinal read getulReserved write setulReserved;
procedure setcbTag(const val : Cardinal);
function getcbTag : Cardinal;
property cbTag : Cardinal read getcbTag write setcbTag;
procedure setcbEncoding(const val : Cardinal);
function getcbEncoding : Cardinal;
property cbEncoding : Cardinal read getcbEncoding write setcbEncoding;
end;
type __MapiMessage__Wrapper = class(TDCRecordWrapper)
private
fR : MapiMessage;
public
function GetRecordPtr : pointer; override;
published
procedure setulReserved(const val : Cardinal);
function getulReserved : Cardinal;
property ulReserved : Cardinal read getulReserved write setulReserved;
procedure setflFlags(const val : FLAGS);
function getflFlags : FLAGS;
property flFlags : FLAGS read getflFlags write setflFlags;
procedure setnRecipCount(const val : Cardinal);
function getnRecipCount : Cardinal;
property nRecipCount : Cardinal read getnRecipCount write setnRecipCount;
procedure setnFileCount(const val : Cardinal);
function getnFileCount : Cardinal;
property nFileCount : Cardinal read getnFileCount write setnFileCount;
end;
type __MapiRecipDesc__Wrapper = class(TDCRecordWrapper)
private
fR : MapiRecipDesc;
public
function GetRecordPtr : pointer; override;
published
procedure setulReserved(const val : Cardinal);
function getulReserved : Cardinal;
property ulReserved : Cardinal read getulReserved write setulReserved;
procedure setulRecipClass(const val : Cardinal);
function getulRecipClass : Cardinal;
property ulRecipClass : Cardinal read getulRecipClass write setulRecipClass;
procedure setulEIDSize(const val : Cardinal);
function getulEIDSize : Cardinal;
property ulEIDSize : Cardinal read getulEIDSize write setulEIDSize;
end;
type __TMapiFileDesc__Wrapper = class(TDCRecordWrapper)
private
fR : TMapiFileDesc;
public
function GetRecordPtr : pointer; override;
published
procedure setulReserved(const val : Cardinal);
function getulReserved : Cardinal;
property ulReserved : Cardinal read getulReserved write setulReserved;
procedure setflFlags(const val : Cardinal);
function getflFlags : Cardinal;
property flFlags : Cardinal read getflFlags write setflFlags;
procedure setnPosition(const val : Cardinal);
function getnPosition : Cardinal;
property nPosition : Cardinal read getnPosition write setnPosition;
end;
type __TMapiFileTagExt__Wrapper = class(TDCRecordWrapper)
private
fR : TMapiFileTagExt;
public
function GetRecordPtr : pointer; override;
published
procedure setulReserved(const val : Cardinal);
function getulReserved : Cardinal;
property ulReserved : Cardinal read getulReserved write setulReserved;
procedure setcbTag(const val : Cardinal);
function getcbTag : Cardinal;
property cbTag : Cardinal read getcbTag write setcbTag;
procedure setcbEncoding(const val : Cardinal);
function getcbEncoding : Cardinal;
property cbEncoding : Cardinal read getcbEncoding write setcbEncoding;
end;
type __TMapiMessage__Wrapper = class(TDCRecordWrapper)
private
fR : TMapiMessage;
public
function GetRecordPtr : pointer; override;
published
procedure setulReserved(const val : Cardinal);
function getulReserved : Cardinal;
property ulReserved : Cardinal read getulReserved write setulReserved;
procedure setflFlags(const val : FLAGS);
function getflFlags : FLAGS;
property flFlags : FLAGS read getflFlags write setflFlags;
procedure setnRecipCount(const val : Cardinal);
function getnRecipCount : Cardinal;
property nRecipCount : Cardinal read getnRecipCount write setnRecipCount;
procedure setnFileCount(const val : Cardinal);
function getnFileCount : Cardinal;
property nFileCount : Cardinal read getnFileCount write setnFileCount;
end;
type __TMapiRecipDesc__Wrapper = class(TDCRecordWrapper)
private
fR : TMapiRecipDesc;
public
function GetRecordPtr : pointer; override;
published
procedure setulReserved(const val : Cardinal);
function getulReserved : Cardinal;
property ulReserved : Cardinal read getulReserved write setulReserved;
procedure setulRecipClass(const val : Cardinal);
function getulRecipClass : Cardinal;
property ulRecipClass : Cardinal read getulRecipClass write setulRecipClass;
procedure setulEIDSize(const val : Cardinal);
function getulEIDSize : Cardinal;
property ulEIDSize : Cardinal read getulEIDSize write setulEIDSize;
end;
type
{_T0 = function (p0 : Cardinal;
p1 : LPSTR;
p2 : LPSTR;
p3 : FLAGS;
p4 : Cardinal;
p5 : PLHANDLE): Cardinal of object;}

_T1 = function (p0 : LHANDLE;
p1 : Cardinal;
p2 : FLAGS;
p3 : Cardinal): Cardinal of object;

_T2 = function (p0 : LHANDLE;
p1 : Cardinal;
const p2 : IDispatch;
p3 : FLAGS;
p4 : Cardinal): Cardinal of object;

{_T3 = function (p0 : Cardinal;
p1 : LPSTR;
p2 : LPSTR;
p3 : LPSTR;
p4 : Cardinal): Cardinal of object;}

{_T4 = function (p0 : LHANDLE;
p1 : Cardinal;
p2 : LPSTR;
p3 : LPSTR;
p4 : FLAGS;
p5 : Cardinal;
p6 : LPSTR): Cardinal of object;}

{_T5 = function (p0 : LHANDLE;
p1 : Cardinal;
p2 : LPSTR;
p3 : FLAGS;
p4 : Cardinal;
var p5 : PMapiMessage): Cardinal of object;}

{_T7 = function (p0 : LHANDLE;
p1 : Cardinal;
p2 : LPSTR;
p3 : FLAGS;
p4 : Cardinal): Cardinal of object;}

_T8 = function (p0 : Pointer): Cardinal of object;

_T10 = _T2;

{_T11 = function (p0 : LHANDLE;
p1 : Cardinal;
p2 : LPSTR;
p3 : FLAGS;
p4 : Cardinal;
var p5 : PMapiRecipDesc): Cardinal of object;}

function __MapiFileDesc__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __MapiFileDesc__Wrapper.setulReserved(const val : Cardinal);
begin
MapiFileDesc(GetRecordPtr^).ulReserved := val;
end;
function __MapiFileDesc__Wrapper.getulReserved : Cardinal;
begin
result := MapiFileDesc(GetRecordPtr^).ulReserved;
end;
procedure __MapiFileDesc__Wrapper.setflFlags(const val : Cardinal);
begin
MapiFileDesc(GetRecordPtr^).flFlags := val;
end;
function __MapiFileDesc__Wrapper.getflFlags : Cardinal;
begin
result := MapiFileDesc(GetRecordPtr^).flFlags;
end;
procedure __MapiFileDesc__Wrapper.setnPosition(const val : Cardinal);
begin
MapiFileDesc(GetRecordPtr^).nPosition := val;
end;
function __MapiFileDesc__Wrapper.getnPosition : Cardinal;
begin
result := MapiFileDesc(GetRecordPtr^).nPosition;
end;
function __MapiFileTagExt__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __MapiFileTagExt__Wrapper.setulReserved(const val : Cardinal);
begin
MapiFileTagExt(GetRecordPtr^).ulReserved := val;
end;
function __MapiFileTagExt__Wrapper.getulReserved : Cardinal;
begin
result := MapiFileTagExt(GetRecordPtr^).ulReserved;
end;
procedure __MapiFileTagExt__Wrapper.setcbTag(const val : Cardinal);
begin
MapiFileTagExt(GetRecordPtr^).cbTag := val;
end;
function __MapiFileTagExt__Wrapper.getcbTag : Cardinal;
begin
result := MapiFileTagExt(GetRecordPtr^).cbTag;
end;
procedure __MapiFileTagExt__Wrapper.setcbEncoding(const val : Cardinal);
begin
MapiFileTagExt(GetRecordPtr^).cbEncoding := val;
end;
function __MapiFileTagExt__Wrapper.getcbEncoding : Cardinal;
begin
result := MapiFileTagExt(GetRecordPtr^).cbEncoding;
end;
function __MapiMessage__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __MapiMessage__Wrapper.setulReserved(const val : Cardinal);
begin
MapiMessage(GetRecordPtr^).ulReserved := val;
end;
function __MapiMessage__Wrapper.getulReserved : Cardinal;
begin
result := MapiMessage(GetRecordPtr^).ulReserved;
end;
procedure __MapiMessage__Wrapper.setflFlags(const val : FLAGS);
begin
MapiMessage(GetRecordPtr^).flFlags := val;
end;
function __MapiMessage__Wrapper.getflFlags : FLAGS;
begin
result := MapiMessage(GetRecordPtr^).flFlags;
end;
procedure __MapiMessage__Wrapper.setnRecipCount(const val : Cardinal);
begin
MapiMessage(GetRecordPtr^).nRecipCount := val;
end;
function __MapiMessage__Wrapper.getnRecipCount : Cardinal;
begin
result := MapiMessage(GetRecordPtr^).nRecipCount;
end;
procedure __MapiMessage__Wrapper.setnFileCount(const val : Cardinal);
begin
MapiMessage(GetRecordPtr^).nFileCount := val;
end;
function __MapiMessage__Wrapper.getnFileCount : Cardinal;
begin
result := MapiMessage(GetRecordPtr^).nFileCount;
end;
function __MapiRecipDesc__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __MapiRecipDesc__Wrapper.setulReserved(const val : Cardinal);
begin
MapiRecipDesc(GetRecordPtr^).ulReserved := val;
end;
function __MapiRecipDesc__Wrapper.getulReserved : Cardinal;
begin
result := MapiRecipDesc(GetRecordPtr^).ulReserved;
end;
procedure __MapiRecipDesc__Wrapper.setulRecipClass(const val : Cardinal);
begin
MapiRecipDesc(GetRecordPtr^).ulRecipClass := val;
end;
function __MapiRecipDesc__Wrapper.getulRecipClass : Cardinal;
begin
result := MapiRecipDesc(GetRecordPtr^).ulRecipClass;
end;
procedure __MapiRecipDesc__Wrapper.setulEIDSize(const val : Cardinal);
begin
MapiRecipDesc(GetRecordPtr^).ulEIDSize := val;
end;
function __MapiRecipDesc__Wrapper.getulEIDSize : Cardinal;
begin
result := MapiRecipDesc(GetRecordPtr^).ulEIDSize;
end;
function __TMapiFileDesc__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TMapiFileDesc__Wrapper.setulReserved(const val : Cardinal);
begin
TMapiFileDesc(GetRecordPtr^).ulReserved := val;
end;
function __TMapiFileDesc__Wrapper.getulReserved : Cardinal;
begin
result := TMapiFileDesc(GetRecordPtr^).ulReserved;
end;
procedure __TMapiFileDesc__Wrapper.setflFlags(const val : Cardinal);
begin
TMapiFileDesc(GetRecordPtr^).flFlags := val;
end;
function __TMapiFileDesc__Wrapper.getflFlags : Cardinal;
begin
result := TMapiFileDesc(GetRecordPtr^).flFlags;
end;
procedure __TMapiFileDesc__Wrapper.setnPosition(const val : Cardinal);
begin
TMapiFileDesc(GetRecordPtr^).nPosition := val;
end;
function __TMapiFileDesc__Wrapper.getnPosition : Cardinal;
begin
result := TMapiFileDesc(GetRecordPtr^).nPosition;
end;
function __TMapiFileTagExt__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TMapiFileTagExt__Wrapper.setulReserved(const val : Cardinal);
begin
TMapiFileTagExt(GetRecordPtr^).ulReserved := val;
end;
function __TMapiFileTagExt__Wrapper.getulReserved : Cardinal;
begin
result := TMapiFileTagExt(GetRecordPtr^).ulReserved;
end;
procedure __TMapiFileTagExt__Wrapper.setcbTag(const val : Cardinal);
begin
TMapiFileTagExt(GetRecordPtr^).cbTag := val;
end;
function __TMapiFileTagExt__Wrapper.getcbTag : Cardinal;
begin
result := TMapiFileTagExt(GetRecordPtr^).cbTag;
end;
procedure __TMapiFileTagExt__Wrapper.setcbEncoding(const val : Cardinal);
begin
TMapiFileTagExt(GetRecordPtr^).cbEncoding := val;
end;
function __TMapiFileTagExt__Wrapper.getcbEncoding : Cardinal;
begin
result := TMapiFileTagExt(GetRecordPtr^).cbEncoding;
end;
function __TMapiMessage__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TMapiMessage__Wrapper.setulReserved(const val : Cardinal);
begin
TMapiMessage(GetRecordPtr^).ulReserved := val;
end;
function __TMapiMessage__Wrapper.getulReserved : Cardinal;
begin
result := TMapiMessage(GetRecordPtr^).ulReserved;
end;
procedure __TMapiMessage__Wrapper.setflFlags(const val : FLAGS);
begin
TMapiMessage(GetRecordPtr^).flFlags := val;
end;
function __TMapiMessage__Wrapper.getflFlags : FLAGS;
begin
result := TMapiMessage(GetRecordPtr^).flFlags;
end;
procedure __TMapiMessage__Wrapper.setnRecipCount(const val : Cardinal);
begin
TMapiMessage(GetRecordPtr^).nRecipCount := val;
end;
function __TMapiMessage__Wrapper.getnRecipCount : Cardinal;
begin
result := TMapiMessage(GetRecordPtr^).nRecipCount;
end;
procedure __TMapiMessage__Wrapper.setnFileCount(const val : Cardinal);
begin
TMapiMessage(GetRecordPtr^).nFileCount := val;
end;
function __TMapiMessage__Wrapper.getnFileCount : Cardinal;
begin
result := TMapiMessage(GetRecordPtr^).nFileCount;
end;
function __TMapiRecipDesc__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TMapiRecipDesc__Wrapper.setulReserved(const val : Cardinal);
begin
TMapiRecipDesc(GetRecordPtr^).ulReserved := val;
end;
function __TMapiRecipDesc__Wrapper.getulReserved : Cardinal;
begin
result := TMapiRecipDesc(GetRecordPtr^).ulReserved;
end;
procedure __TMapiRecipDesc__Wrapper.setulRecipClass(const val : Cardinal);
begin
TMapiRecipDesc(GetRecordPtr^).ulRecipClass := val;
end;
function __TMapiRecipDesc__Wrapper.getulRecipClass : Cardinal;
begin
result := TMapiRecipDesc(GetRecordPtr^).ulRecipClass;
end;
procedure __TMapiRecipDesc__Wrapper.setulEIDSize(const val : Cardinal);
begin
TMapiRecipDesc(GetRecordPtr^).ulEIDSize := val;
end;
function __TMapiRecipDesc__Wrapper.getulEIDSize : Cardinal;
begin
result := TMapiRecipDesc(GetRecordPtr^).ulEIDSize;
end;
function _MapiFileDesc_ : IDispatch;
begin
  result := __MapiFileDesc__Wrapper.Create;
end;
function _MapiFileTagExt_ : IDispatch;
begin
  result := __MapiFileTagExt__Wrapper.Create;
end;
function _MapiMessage_ : IDispatch;
begin
  result := __MapiMessage__Wrapper.Create;
end;
function _MapiRecipDesc_ : IDispatch;
begin
  result := __MapiRecipDesc__Wrapper.Create;
end;
function _TMapiFileDesc_ : IDispatch;
begin
  result := __TMapiFileDesc__Wrapper.Create;
end;
function _TMapiFileTagExt_ : IDispatch;
begin
  result := __TMapiFileTagExt__Wrapper.Create;
end;
function _TMapiMessage_ : IDispatch;
begin
  result := __TMapiMessage__Wrapper.Create;
end;
function _TMapiRecipDesc_ : IDispatch;
begin
  result := __TMapiRecipDesc__Wrapper.Create;
end;
function ____MapiSendMail__Wrapper(p0 : LHANDLE;
p1 : Cardinal;
const p2 : IDispatch;
p3 : FLAGS;
p4 : Cardinal): Cardinal;
var
__p2 : ^TMapiMessage;
__i2 : IDispatch;
begin
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
result := MapiSendMail(p0,p1,__p2^,p3,p4);
end;

function ____MapiDetails__Wrapper(p0 : LHANDLE;
p1 : Cardinal;
const p2 : IDispatch;
p3 : FLAGS;
p4 : Cardinal): Cardinal;
var
__p2 : ^TMapiRecipDesc;
__i2 : IDispatch;
begin
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
result := MapiDetails(p0,p1,__p2^,p3,p4);
end;


type __MapiFileDesc__Wrapper__ = class(__MapiFileDesc__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __MapiFileDesc__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertMapiFileDescToVariant(var R : MapiFileDesc) : OleVariant;
var
__rw : __MapiFileDesc__Wrapper__;
begin
__rw := __MapiFileDesc__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToMapiFileDesc(const V : OleVariant) : MapiFileDesc;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := MapiFileDesc((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __MapiFileTagExt__Wrapper__ = class(__MapiFileTagExt__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __MapiFileTagExt__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertMapiFileTagExtToVariant(var R : MapiFileTagExt) : OleVariant;
var
__rw : __MapiFileTagExt__Wrapper__;
begin
__rw := __MapiFileTagExt__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToMapiFileTagExt(const V : OleVariant) : MapiFileTagExt;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := MapiFileTagExt((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __MapiMessage__Wrapper__ = class(__MapiMessage__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __MapiMessage__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertMapiMessageToVariant(var R : MapiMessage) : OleVariant;
var
__rw : __MapiMessage__Wrapper__;
begin
__rw := __MapiMessage__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToMapiMessage(const V : OleVariant) : MapiMessage;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := MapiMessage((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __MapiRecipDesc__Wrapper__ = class(__MapiRecipDesc__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __MapiRecipDesc__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertMapiRecipDescToVariant(var R : MapiRecipDesc) : OleVariant;
var
__rw : __MapiRecipDesc__Wrapper__;
begin
__rw := __MapiRecipDesc__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToMapiRecipDesc(const V : OleVariant) : MapiRecipDesc;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := MapiRecipDesc((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __TMapiFileDesc__Wrapper__ = class(__TMapiFileDesc__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TMapiFileDesc__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTMapiFileDescToVariant(var R : TMapiFileDesc) : OleVariant;
var
__rw : __TMapiFileDesc__Wrapper__;
begin
__rw := __TMapiFileDesc__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTMapiFileDesc(const V : OleVariant) : TMapiFileDesc;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TMapiFileDesc((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __TMapiFileTagExt__Wrapper__ = class(__TMapiFileTagExt__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TMapiFileTagExt__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTMapiFileTagExtToVariant(var R : TMapiFileTagExt) : OleVariant;
var
__rw : __TMapiFileTagExt__Wrapper__;
begin
__rw := __TMapiFileTagExt__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTMapiFileTagExt(const V : OleVariant) : TMapiFileTagExt;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TMapiFileTagExt((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __TMapiMessage__Wrapper__ = class(__TMapiMessage__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TMapiMessage__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTMapiMessageToVariant(var R : TMapiMessage) : OleVariant;
var
__rw : __TMapiMessage__Wrapper__;
begin
__rw := __TMapiMessage__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTMapiMessage(const V : OleVariant) : TMapiMessage;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TMapiMessage((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __TMapiRecipDesc__Wrapper__ = class(__TMapiRecipDesc__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TMapiRecipDesc__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTMapiRecipDescToVariant(var R : TMapiRecipDesc) : OleVariant;
var
__rw : __TMapiRecipDesc__Wrapper__;
begin
__rw := __TMapiRecipDesc__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTMapiRecipDesc(const V : OleVariant) : TMapiRecipDesc;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TMapiRecipDesc((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
procedure __RegisterProps;
begin
end;

function __DC__GetMapi__MAPIDLL(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := Mapi.MAPIDLL;
end;

procedure __DC__SetMapi__MAPIDLL(Instance : TObject; Params : PVariantArgList);
begin
Mapi.MAPIDLL:=OleVariant(Params^[0]);
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('MAPIDLL',__DC__GetMapi__MAPIDLL,__DC__SetMapi__MAPIDLL));
end;

procedure __UnregisterVars;
begin
__RegisteredVars.Free;
end;

const __ConstNames0 : array[0..59] of string = (
'lhSessionNull'
,'MAPI_OLE'
,'MAPI_OLE_STATIC'
,'MAPI_ORIG'
,'MAPI_TO'
,'MAPI_CC'
,'MAPI_BCC'
,'MAPI_UNREAD'
,'MAPI_RECEIPT_REQUESTED'
,'MAPI_SENT'
,'MAPI_LOGON_UI'
,'MAPI_PASSWORD_UI'
,'MAPI_NEW_SESSION'
,'MAPI_FORCE_DOWNLOAD'
,'MAPI_ALLOW_OTHERS'
,'MAPI_EXPLICIT_PROFILE'
,'MAPI_EXTENDED'
,'MAPI_USE_DEFAULT'
,'MAPI_SIMPLE_DEFAULT'
,'MAPI_SIMPLE_EXPLICIT'
,'MAPI_LOGOFF_SHARED'
,'MAPI_LOGOFF_UI'
,'MAPI_DIALOG'
,'MAPI_UNREAD_ONLY'
,'MAPI_GUARANTEE_FIFO'
,'MAPI_LONG_MSGID'
,'MAPI_PEEK'
,'MAPI_SUPPRESS_ATTACH'
,'MAPI_ENVELOPE_ONLY'
,'MAPI_BODY_AS_FILE'
,'MAPI_AB_NOMODIFY'
,'SUCCESS_SUCCESS'
,'MAPI_USER_ABORT'
,'MAPI_E_USER_ABORT'
,'MAPI_E_FAILURE'
,'MAPI_E_LOGON_FAILURE'
,'MAPI_E_LOGIN_FAILURE'
,'MAPI_E_DISK_FULL'
,'MAPI_E_INSUFFICIENT_MEMORY'
,'MAPI_E_ACCESS_DENIED'
,'MAPI_E_TOO_MANY_SESSIONS'
,'MAPI_E_TOO_MANY_FILES'
,'MAPI_E_TOO_MANY_RECIPIENTS'
,'MAPI_E_ATTACHMENT_NOT_FOUND'
,'MAPI_E_ATTACHMENT_OPEN_FAILURE'
,'MAPI_E_ATTACHMENT_WRITE_FAILURE'
,'MAPI_E_UNKNOWN_RECIPIENT'
,'MAPI_E_BAD_RECIPTYPE'
,'MAPI_E_NO_MESSAGES'
,'MAPI_E_INVALID_MESSAGE'
,'MAPI_E_TEXT_TOO_LARGE'
,'MAPI_E_INVALID_SESSION'
,'MAPI_E_TYPE_NOT_SUPPORTED'
,'MAPI_E_AMBIGUOUS_RECIPIENT'
,'MAPI_E_AMBIG_RECIP'
,'MAPI_E_MESSAGE_IN_USE'
,'MAPI_E_NETWORK_FAILURE'
,'MAPI_E_INVALID_EDITFIELDS'
,'MAPI_E_INVALID_RECIPS'
,'MAPI_E_NOT_SUPPORTED'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,lhSessionNull));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,MAPI_OLE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,MAPI_OLE_STATIC));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,MAPI_ORIG));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,MAPI_TO));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,MAPI_CC));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,MAPI_BCC));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,MAPI_UNREAD));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,MAPI_RECEIPT_REQUESTED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,MAPI_SENT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,MAPI_LOGON_UI));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,MAPI_PASSWORD_UI));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,MAPI_NEW_SESSION));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,MAPI_FORCE_DOWNLOAD));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,MAPI_ALLOW_OTHERS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,MAPI_EXPLICIT_PROFILE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,MAPI_EXTENDED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,MAPI_USE_DEFAULT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,MAPI_SIMPLE_DEFAULT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,MAPI_SIMPLE_EXPLICIT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,MAPI_LOGOFF_SHARED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,MAPI_LOGOFF_UI));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,MAPI_DIALOG));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,MAPI_UNREAD_ONLY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,MAPI_GUARANTEE_FIFO));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,MAPI_LONG_MSGID));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,MAPI_PEEK));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[27] ,MAPI_SUPPRESS_ATTACH));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[28] ,MAPI_ENVELOPE_ONLY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[29] ,MAPI_BODY_AS_FILE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[30] ,MAPI_AB_NOMODIFY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[31] ,SUCCESS_SUCCESS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[32] ,MAPI_USER_ABORT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[33] ,MAPI_E_USER_ABORT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[34] ,MAPI_E_FAILURE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[35] ,MAPI_E_LOGON_FAILURE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[36] ,MAPI_E_LOGIN_FAILURE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[37] ,MAPI_E_DISK_FULL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[38] ,MAPI_E_INSUFFICIENT_MEMORY));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[39] ,MAPI_E_ACCESS_DENIED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[40] ,MAPI_E_TOO_MANY_SESSIONS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[41] ,MAPI_E_TOO_MANY_FILES));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[42] ,MAPI_E_TOO_MANY_RECIPIENTS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[43] ,MAPI_E_ATTACHMENT_NOT_FOUND));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[44] ,MAPI_E_ATTACHMENT_OPEN_FAILURE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[45] ,MAPI_E_ATTACHMENT_WRITE_FAILURE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[46] ,MAPI_E_UNKNOWN_RECIPIENT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[47] ,MAPI_E_BAD_RECIPTYPE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[48] ,MAPI_E_NO_MESSAGES));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[49] ,MAPI_E_INVALID_MESSAGE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[50] ,MAPI_E_TEXT_TOO_LARGE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[51] ,MAPI_E_INVALID_SESSION));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[52] ,MAPI_E_TYPE_NOT_SUPPORTED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[53] ,MAPI_E_AMBIGUOUS_RECIPIENT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[54] ,MAPI_E_AMBIG_RECIP));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[55] ,MAPI_E_MESSAGE_IN_USE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[56] ,MAPI_E_NETWORK_FAILURE));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[57] ,MAPI_E_INVALID_EDITFIELDS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[58] ,MAPI_E_INVALID_RECIPS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[59] ,MAPI_E_NOT_SUPPORTED));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

procedure __RegisterClasses;
begin
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..11] of string = (
'MapiFileDesc'
,'MapiFileTagExt'
,'MapiMessage'
,'MapiRecipDesc'
,'TMapiFileDesc'
,'TMapiFileTagExt'
,'TMapiMessage'
,'TMapiRecipDesc'
,'MapiLogOff'
,'MapiSendMail'
,'MapiFreeBuffer'
,'MapiDetails'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
__RegisteredMethods.Add(RegisterRWProc(MethodNames[0],Addr(_MapiFileDesc_)));
__RegisteredMethods.Add(RegisterRWProc(MethodNames[1],Addr(_MapiFileTagExt_)));
__RegisteredMethods.Add(RegisterRWProc(MethodNames[2],Addr(_MapiMessage_)));
__RegisteredMethods.Add(RegisterRWProc(MethodNames[3],Addr(_MapiRecipDesc_)));
__RegisteredMethods.Add(RegisterRWProc(MethodNames[4],Addr(_TMapiFileDesc_)));
__RegisteredMethods.Add(RegisterRWProc(MethodNames[5],Addr(_TMapiFileTagExt_)));
__RegisteredMethods.Add(RegisterRWProc(MethodNames[6],Addr(_TMapiMessage_)));
__RegisteredMethods.Add(RegisterRWProc(MethodNames[7],Addr(_TMapiRecipDesc_)));
RegisterProc(nil,MethodNames[8],mtProc,TypeInfo(_T1),[
TypeInfo(LHANDLE),
TypeInfo(Cardinal),
TypeInfo(FLAGS),
TypeInfo(Cardinal),TypeInfo(Cardinal)],Addr(MapiLogOff),cRegister);

RegisterProc(nil,MethodNames[9],mtProc,TypeInfo(_T2),[
TypeInfo(LHANDLE),
TypeInfo(Cardinal),
TypeInfo(IDispatch),
TypeInfo(FLAGS),
TypeInfo(Cardinal),TypeInfo(Cardinal)],Addr(____MapiSendMail__Wrapper),cRegister);

RegisterProc(nil,MethodNames[10],mtProc,TypeInfo(_T8),[
TypeInfoPointer,TypeInfo(Cardinal)],Addr(MapiFreeBuffer),cRegister);

RegisterProc(nil,MethodNames[11],mtProc,TypeInfo(_T10),[
TypeInfo(LHANDLE),
TypeInfo(Cardinal),
TypeInfo(IDispatch),
TypeInfo(FLAGS),
TypeInfo(Cardinal),TypeInfo(Cardinal)],Addr(____MapiDetails__Wrapper),cRegister);

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
{RegisterProc(nil,'MapiLogOn',mtProc,TypeInfo(_T0),[
TypeInfo(Cardinal),
TypeInfoPChar,
TypeInfoPChar,
TypeInfo(FLAGS),
TypeInfo(Cardinal),
TypeInfoPointer,TypeInfo(Cardinal)],Addr(MapiLogOn),cRegister)}

{RegisterProc(nil,'MapiSendDocuments',mtProc,TypeInfo(_T3),[
TypeInfo(Cardinal),
TypeInfoPChar,
TypeInfoPChar,
TypeInfoPChar,
TypeInfo(Cardinal),TypeInfo(Cardinal)],Addr(MapiSendDocuments),cRegister)}

{RegisterProc(nil,'MapiFindNext',mtProc,TypeInfo(_T4),[
TypeInfo(LHANDLE),
TypeInfo(Cardinal),
TypeInfoPChar,
TypeInfoPChar,
TypeInfo(FLAGS),
TypeInfo(Cardinal),
TypeInfoPChar,TypeInfo(Cardinal)],Addr(MapiFindNext),cRegister)}

{RegisterProc(nil,'MapiReadMail',mtProc,TypeInfo(_T5),[
TypeInfo(LHANDLE),
TypeInfo(Cardinal),
TypeInfoPChar,
TypeInfo(FLAGS),
TypeInfo(Cardinal),
TypeInfoPointer,TypeInfo(Cardinal)],Addr(MapiReadMail),cRegister)}

{RegisterProc(nil,'MapiDeleteMail',mtProc,TypeInfo(_T7),[
TypeInfo(LHANDLE),
TypeInfo(Cardinal),
TypeInfoPChar,
TypeInfo(FLAGS),
TypeInfo(Cardinal),TypeInfo(Cardinal)],Addr(MapiDeleteMail),cRegister)}

{RegisterProc(nil,'MapiResolveName',mtProc,TypeInfo(_T11),[
TypeInfo(LHANDLE),
TypeInfo(Cardinal),
TypeInfoPChar,
TypeInfo(FLAGS),
TypeInfo(Cardinal),
TypeInfoPointer,TypeInfo(Cardinal)],Addr(MapiResolveName),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
__RegisterVars;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnRegisterVars;
__UnregisterProcs;
end.
