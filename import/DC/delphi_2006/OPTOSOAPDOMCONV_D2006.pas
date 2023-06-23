{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit OPTOSOAPDOMCONV_D2006;
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
  Variants,
  TypInfo,
  Classes,
  xmldom,
  XMLDoc,
  IntfInfo,
  InvokeRegistry,
  XMLIntf,
  OPConvert,
  WSDLNode,
  SOAPEnv,
  SOAPDomConv,
  Types,
  XSBuiltIns,
  SOAPAttachIntf,
  Contnrs,
  OPToSOAPDomConv;
function ConvertTIntfMetaDataToVariant(var R : TIntfMetaData) : OleVariant;
function ConvertVariantToTIntfMetaData(const V : OleVariant) : TIntfMetaData;
function ConvertTIntfMethEntryToVariant(var R : TIntfMethEntry) : OleVariant;
function ConvertVariantToTIntfMethEntry(const V : OleVariant) : TIntfMethEntry;
function ConvertTMultiRefNodeElemToVariant(var R : TMultiRefNodeElem) : OleVariant;
function ConvertVariantToTMultiRefNodeElem(const V : OleVariant) : TMultiRefNodeElem;
function ConvertTMultiRefNodeMapElemToVariant(var R : TMultiRefNodeMapElem) : OleVariant;
function ConvertVariantToTMultiRefNodeMapElem(const V : OleVariant) : TMultiRefNodeMapElem;
function ConvertTSOAPArrayElemDescToVariant(var R : TSOAPArrayElemDesc) : OleVariant;
function ConvertVariantToTSOAPArrayElemDesc(const V : OleVariant) : TSOAPArrayElemDesc;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TMultiRefNodeElem__Wrapper = class(TDCRecordWrapper)
private
fR : TMultiRefNodeElem;
public
function GetRecordPtr : pointer; override;
published
end;
type __TMultiRefNodeMapElem__Wrapper = class(TDCRecordWrapper)
private
fR : TMultiRefNodeMapElem;
public
function GetRecordPtr : pointer; override;
published
procedure setID(const val : AnsiString);
function getID : AnsiString;
property ID : AnsiString read getID write setID;
end;
type __TSOAPArrayElemDesc__Wrapper = class(TDCRecordWrapper)
private
fR : TSOAPArrayElemDesc;
public
function GetRecordPtr : pointer; override;
published
procedure setMultiDim(const val : Boolean);
function getMultiDim : Boolean;
property MultiDim : Boolean read getMultiDim write setMultiDim;
end;
type __TIntfMetaData__Wrapper = class(TDCRecordWrapper)
private
fR : TIntfMetaData;
public
function GetRecordPtr : pointer; override;
published
procedure setName(const val : AnsiString);
function getName : AnsiString;
property Name : AnsiString read getName write setName;
procedure setUnitName(const val : AnsiString);
function getUnitName : AnsiString;
property UnitName : AnsiString read getUnitName write setUnitName;
procedure setNumAnc(const val : Integer);
function getNumAnc : Integer;
property NumAnc : Integer read getNumAnc write setNumAnc;
end;
type __TIntfMethEntry__Wrapper = class(TDCRecordWrapper)
private
fR : TIntfMethEntry;
public
function GetRecordPtr : pointer; override;
published
procedure setName(const val : AnsiString);
function getName : AnsiString;
property Name : AnsiString read getName write setName;
procedure setCC(const val : TCallConv);
function getCC : TCallConv;
property CC : TCallConv read getCC write setCC;
procedure setPos(const val : Integer);
function getPos : Integer;
property Pos : Integer read getPos write setPos;
procedure setParamCount(const val : Integer);
function getParamCount : Integer;
property ParamCount : Integer read getParamCount write setParamCount;
procedure setHasRTTI(const val : Boolean);
function getHasRTTI : Boolean;
property HasRTTI : Boolean read getHasRTTI write setHasRTTI;
end;
type
{_T0 = function (p0 : TObject;
p1 : PPropInfo): Longint of object;}

_T1 = function : TSoapDataList of object;

_T2 = procedure (p0 : TSoapDataList) of object;

_T3 = function : string of object;

_T4 = procedure (const p0 : string) of object;

_T5 = procedure (const p0 : InvString;
const p1 : IDispatch;
var p2 : Integer;
p3 : TInvContext) of object;

_T6 = function (const p0 : IDispatch;
p1 : Integer;
p2 : TInvContext;
p3 : THeaderList): TStream of object;

_T7 = procedure (const p0 : IDispatch;
const p1 : Integer;
p2 : TInvContext;
p3 : TStream;
p4 : THeaderList) of object;

_T8 = procedure (const p0 : Exception;
p1 : TStream) of object;

_T9 = procedure (const p0 : InvString;
const p1 : IDispatch;
const p2 : IDispatch;
p3 : TInvContext) of object;

{_T10 = procedure (p0 : IXMLNode;
p1 : IXMLNode;
const p2 : InvString;
p3 : PTypeInfo;
p4 : Pointer;
p5 : Integer) of object;}

{_T11 = procedure (p0 : Pointer;
p1 : PTypeInfo;
p2 : TDataContext;
p3 : IXMLNode;
p4 : IXMLNode;
p5 : Boolean;
p6 : Boolean;
p7 : Integer) of object;}

function __TMultiRefNodeElem__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
function __TMultiRefNodeMapElem__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TMultiRefNodeMapElem__Wrapper.setID(const val : AnsiString);
begin
TMultiRefNodeMapElem(GetRecordPtr^).ID := val;
end;
function __TMultiRefNodeMapElem__Wrapper.getID : AnsiString;
begin
result := TMultiRefNodeMapElem(GetRecordPtr^).ID;
end;
function __TSOAPArrayElemDesc__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TSOAPArrayElemDesc__Wrapper.setMultiDim(const val : Boolean);
begin
TSOAPArrayElemDesc(GetRecordPtr^).MultiDim := val;
end;
function __TSOAPArrayElemDesc__Wrapper.getMultiDim : Boolean;
begin
result := TSOAPArrayElemDesc(GetRecordPtr^).MultiDim;
end;
function _TMultiRefNodeElem_ : IDispatch;
begin
  result := __TMultiRefNodeElem__Wrapper.Create;
end;
function _TMultiRefNodeMapElem_ : IDispatch;
begin
  result := __TMultiRefNodeMapElem__Wrapper.Create;
end;
function _TSOAPArrayElemDesc_ : IDispatch;
begin
  result := __TSOAPArrayElemDesc__Wrapper.Create;
end;
function __TIntfMetaData__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TIntfMetaData__Wrapper.setName(const val : AnsiString);
begin
TIntfMetaData(GetRecordPtr^).Name := val;
end;
function __TIntfMetaData__Wrapper.getName : AnsiString;
begin
result := TIntfMetaData(GetRecordPtr^).Name;
end;
procedure __TIntfMetaData__Wrapper.setUnitName(const val : AnsiString);
begin
TIntfMetaData(GetRecordPtr^).UnitName := val;
end;
function __TIntfMetaData__Wrapper.getUnitName : AnsiString;
begin
result := TIntfMetaData(GetRecordPtr^).UnitName;
end;
procedure __TIntfMetaData__Wrapper.setNumAnc(const val : Integer);
begin
TIntfMetaData(GetRecordPtr^).NumAnc := val;
end;
function __TIntfMetaData__Wrapper.getNumAnc : Integer;
begin
result := TIntfMetaData(GetRecordPtr^).NumAnc;
end;
function __TIntfMethEntry__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TIntfMethEntry__Wrapper.setName(const val : AnsiString);
begin
TIntfMethEntry(GetRecordPtr^).Name := val;
end;
function __TIntfMethEntry__Wrapper.getName : AnsiString;
begin
result := TIntfMethEntry(GetRecordPtr^).Name;
end;
procedure __TIntfMethEntry__Wrapper.setCC(const val : TCallConv);
begin
TIntfMethEntry(GetRecordPtr^).CC := val;
end;
function __TIntfMethEntry__Wrapper.getCC : TCallConv;
begin
result := TIntfMethEntry(GetRecordPtr^).CC;
end;
procedure __TIntfMethEntry__Wrapper.setPos(const val : Integer);
begin
TIntfMethEntry(GetRecordPtr^).Pos := val;
end;
function __TIntfMethEntry__Wrapper.getPos : Integer;
begin
result := TIntfMethEntry(GetRecordPtr^).Pos;
end;
procedure __TIntfMethEntry__Wrapper.setParamCount(const val : Integer);
begin
TIntfMethEntry(GetRecordPtr^).ParamCount := val;
end;
function __TIntfMethEntry__Wrapper.getParamCount : Integer;
begin
result := TIntfMethEntry(GetRecordPtr^).ParamCount;
end;
procedure __TIntfMethEntry__Wrapper.setHasRTTI(const val : Boolean);
begin
TIntfMethEntry(GetRecordPtr^).HasRTTI := val;
end;
function __TIntfMethEntry__Wrapper.getHasRTTI : Boolean;
begin
result := TIntfMethEntry(GetRecordPtr^).HasRTTI;
end;
procedure __TOPToSoapDomConvert__MsgToInvContext__Wrapper(__Instance : TOPToSoapDomConvert;
const p0 : InvString;
const p1 : IDispatch;
var p2 : Integer;
p3 : TInvContext);
var
__p1 : ^TIntfMetaData;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
TOPToSoapDomConvert(__Instance).MsgToInvContext(p0,__p1^,p2,p3);
end;

function __TOPToSoapDomConvert__InvContextToMsg__Wrapper(__Instance : TOPToSoapDomConvert;
const p0 : IDispatch;
p1 : Integer;
p2 : TInvContext;
p3 : THeaderList): TStream;
var
__p0 : ^TIntfMetaData;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := TOPToSoapDomConvert(__Instance).InvContextToMsg(__p0^,p1,p2,p3);
end;

procedure __TOPToSoapDomConvert__MakeResponse__Wrapper(__Instance : TOPToSoapDomConvert;
const p0 : IDispatch;
const p1 : Integer;
p2 : TInvContext;
p3 : TStream;
p4 : THeaderList);
var
__p0 : ^TIntfMetaData;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
TOPToSoapDomConvert(__Instance).MakeResponse(__p0^,p1,p2,p3,p4);
end;

procedure __TOPToSoapDomConvert__ProcessResponse__Wrapper(__Instance : TOPToSoapDomConvert;
const p0 : InvString;
const p1 : IDispatch;
const p2 : IDispatch;
p3 : TInvContext);
var
__p1 : ^TIntfMetaData;
__i1 : IDispatch;
__p2 : ^TIntfMethEntry;
__i2 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
TOPToSoapDomConvert(__Instance).ProcessResponse(p0,__p1^,__p2^,p3);
end;


type __TIntfMetaData__Wrapper__ = class(__TIntfMetaData__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TIntfMetaData__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTIntfMetaDataToVariant(var R : TIntfMetaData) : OleVariant;
var
__rw : __TIntfMetaData__Wrapper__;
begin
__rw := __TIntfMetaData__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTIntfMetaData(const V : OleVariant) : TIntfMetaData;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TIntfMetaData((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __TIntfMethEntry__Wrapper__ = class(__TIntfMethEntry__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TIntfMethEntry__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTIntfMethEntryToVariant(var R : TIntfMethEntry) : OleVariant;
var
__rw : __TIntfMethEntry__Wrapper__;
begin
__rw := __TIntfMethEntry__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTIntfMethEntry(const V : OleVariant) : TIntfMethEntry;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TIntfMethEntry((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __TMultiRefNodeElem__Wrapper__ = class(__TMultiRefNodeElem__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TMultiRefNodeElem__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTMultiRefNodeElemToVariant(var R : TMultiRefNodeElem) : OleVariant;
var
__rw : __TMultiRefNodeElem__Wrapper__;
begin
__rw := __TMultiRefNodeElem__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTMultiRefNodeElem(const V : OleVariant) : TMultiRefNodeElem;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TMultiRefNodeElem((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __TMultiRefNodeMapElem__Wrapper__ = class(__TMultiRefNodeMapElem__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TMultiRefNodeMapElem__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTMultiRefNodeMapElemToVariant(var R : TMultiRefNodeMapElem) : OleVariant;
var
__rw : __TMultiRefNodeMapElem__Wrapper__;
begin
__rw := __TMultiRefNodeMapElem__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTMultiRefNodeMapElem(const V : OleVariant) : TMultiRefNodeMapElem;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TMultiRefNodeMapElem((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __TSOAPArrayElemDesc__Wrapper__ = class(__TSOAPArrayElemDesc__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TSOAPArrayElemDesc__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTSOAPArrayElemDescToVariant(var R : TSOAPArrayElemDesc) : OleVariant;
var
__rw : __TSOAPArrayElemDesc__Wrapper__;
begin
__rw := __TSOAPArrayElemDesc__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTSOAPArrayElemDesc(const V : OleVariant) : TSOAPArrayElemDesc;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TSOAPArrayElemDesc((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
function __DC__GetTOPToSoapDomConvert__Attachments(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TOPToSoapDomConvert(Instance).Attachments);
end;

procedure __DC__SetTOPToSoapDomConvert__Attachments(Instance : TObject; Params : PVariantArgList);
begin
TOPToSoapDomConvert(Instance).Attachments:=TSoapDataList(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TOPToSoapDomConvert,'Attachments',__DC__GetTOPToSoapDomConvert__Attachments,__DC__SetTOPToSoapDomConvert__Attachments);
end;

function __DC__GetOPToSOAPDomConv__DefArrayElemName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := OPToSOAPDomConv.DefArrayElemName;
end;

procedure __DC__SetOPToSOAPDomConv__DefArrayElemName(Instance : TObject; Params : PVariantArgList);
begin
OPToSOAPDomConv.DefArrayElemName:=OleVariant(Params^[0]);
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('DefArrayElemName',__DC__GetOPToSOAPDomConv__DefArrayElemName,__DC__SetOPToSOAPDomConv__DefArrayElemName));
end;

procedure __UnregisterVars;
begin
__RegisteredVars.Free;
end;

const __ConstNames0 : array[0..4] of string = (
'SVarArrayType'
,'nsClientSend'
,'nsServerReceive'
,'nsServerSend'
,'nsClientReceive'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,SVarArrayType));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,nsClientSend));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,nsServerReceive));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,nsServerSend));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,nsClientReceive));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..2] of TClass = (
ESOAPDomConvertError,
TOPToSoapDomConvert,
TSOAPDomConv
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
const MethodNames : array[0..2] of string = (
'TMultiRefNodeElem'
,'TMultiRefNodeMapElem'
,'TSOAPArrayElemDesc'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
__RegisteredMethods.Add(RegisterRWProc(MethodNames[0],Addr(_TMultiRefNodeElem_)));
__RegisteredMethods.Add(RegisterRWProc(MethodNames[1],Addr(_TMultiRefNodeMapElem_)));
__RegisteredMethods.Add(RegisterRWProc(MethodNames[2],Addr(_TSOAPArrayElemDesc_)));
//RegRegisterMethod(TOPToSoapDomConvert,'GetAttachments',TypeInfo(_T1),[TypeInfo(TSoapDataList)], pointer(60));
RegRegisterMethod(TOPToSoapDomConvert,'GetAttachments',TypeInfo(_T1),[TypeInfo(TSoapDataList)],  getVMTProcAddr('TOPToSoapDomConvert','GetAttachments',60));


//RegRegisterMethod(TOPToSoapDomConvert,'SetAttachments',TypeInfo(_T2),[TypeInfo(TSoapDataList)], pointer(64));
RegRegisterMethod(TOPToSoapDomConvert,'SetAttachments',TypeInfo(_T2),[TypeInfo(TSoapDataList)],  getVMTProcAddr('TOPToSoapDomConvert','SetAttachments',64));


//RegRegisterMethod(TOPToSoapDomConvert,'GetTempDir',TypeInfo(_T3),[TypeInfo(string)], pointer(68));
RegRegisterMethod(TOPToSoapDomConvert,'GetTempDir',TypeInfo(_T3),[TypeInfo(string)],  getVMTProcAddr('TOPToSoapDomConvert','GetTempDir',68));


//RegRegisterMethod(TOPToSoapDomConvert,'SetTempDir',TypeInfo(_T4),[TypeInfo(string)], pointer(72));
RegRegisterMethod(TOPToSoapDomConvert,'SetTempDir',TypeInfo(_T4),[TypeInfo(string)],  getVMTProcAddr('TOPToSoapDomConvert','SetTempDir',72));


//RegRegisterMethod(TOPToSoapDomConvert,'MsgToInvContext',TypeInfo(_T5),[TypeInfo(InvString),TypeInfo(IDispatch),TypeInfo(Integer),TypeInfo(TInvContext)], pointer(76));
RegRegisterMethod(TOPToSoapDomConvert,'MsgToInvContext',TypeInfo(_T5),[TypeInfo(InvString),TypeInfo(IDispatch),TypeInfo(Integer),TypeInfo(TInvContext)],  getVMTProcAddr('TOPToSoapDomConvert','MsgToInvContext',76));


RegRegisterMethod(TOPToSoapDomConvert,'InvContextToMsg',TypeInfo(_T6),[
TypeInfo(IDispatch),
TypeInfo(Integer),
TypeInfo(TInvContext),
TypeInfo(THeaderList),TypeInfo(TStream)],Addr(__TOPToSoapDomConvert__InvContextToMsg__Wrapper));

//RegRegisterMethod(TOPToSoapDomConvert,'MakeResponse',TypeInfo(_T7),[TypeInfo(IDispatch),TypeInfo(Integer),TypeInfo(TInvContext),TypeInfo(TStream),TypeInfo(THeaderList)], pointer(84));
RegRegisterMethod(TOPToSoapDomConvert,'MakeResponse',TypeInfo(_T7),[TypeInfo(IDispatch),TypeInfo(Integer),TypeInfo(TInvContext),TypeInfo(TStream),TypeInfo(THeaderList)],  getVMTProcAddr('TOPToSoapDomConvert','MakeResponse',84));


//RegRegisterMethod(TOPToSoapDomConvert,'MakeFault',TypeInfo(_T8),[TypeInfo(Exception),TypeInfo(TStream)], pointer(88));
RegRegisterMethod(TOPToSoapDomConvert,'MakeFault',TypeInfo(_T8),[TypeInfo(Exception),TypeInfo(TStream)],  getVMTProcAddr('TOPToSoapDomConvert','MakeFault',88));


//RegRegisterMethod(TOPToSoapDomConvert,'ProcessResponse',TypeInfo(_T9),[TypeInfo(InvString),TypeInfo(IDispatch),TypeInfo(IDispatch),TypeInfo(TInvContext)], pointer(92));
RegRegisterMethod(TOPToSoapDomConvert,'ProcessResponse',TypeInfo(_T9),[TypeInfo(InvString),TypeInfo(IDispatch),TypeInfo(IDispatch),TypeInfo(TInvContext)],  getVMTProcAddr('TOPToSoapDomConvert','ProcessResponse',92));


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
{RegisterProc(nil,'GetOrdPropEx',mtProc,TypeInfo(_T0),[
TypeInfo(TObject),
TypeInfoPointer,TypeInfo(Longint)],Addr(GetOrdPropEx),cRegister)}

{RegRegisterMethod(TSOAPDomConv,'ConvertNativeDataToSoap',TypeInfo(_T10),[
TypeInfo(IXMLNode),
TypeInfo(IXMLNode),
TypeInfo(InvString),
TypeInfoPointer,
TypeInfoPointer,
TypeInfo(Integer)], pointer(MinVMTOffset - 16))}

{RegRegisterMethod(TSOAPDomConv,'ConvertSoapToNativeData',TypeInfo(_T11),[
TypeInfoPointer,
TypeInfoPointer,
TypeInfo(TDataContext),
TypeInfo(IXMLNode),
TypeInfo(IXMLNode),
TypeInfo(Boolean),
TypeInfo(Boolean),
TypeInfo(Integer)], pointer(MinVMTOffset - 17))}

RegisterEvent(TypeInfo(TMemberDataNotReceivedEvent),[
TypeInfo(string),
TypeInfo(string)]);

RegisterEvent(TypeInfo(TUnhandledNodeEvent),[
TypeInfo(string),
TypeInfo(WideString)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
__RegisterVars;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnRegisterVars;
__UnregisterProcs;
end.
