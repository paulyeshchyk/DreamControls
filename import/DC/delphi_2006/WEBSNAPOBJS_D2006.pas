{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit WEBSNAPOBJS_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  dcscript,
  dcsystem,
  dcdreamlib,
  SysUtils,
  Windows,
  ActiveX,
  WebCntxt,
  SiteComp,
  Classes,
  HTTPProd,
  HTTPApp,
  ObjComAuto,
  WebSnapObjs;
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
type __TCustomEnumDispatcher__ = class(TCustomEnumDispatcher);
type
{_T0 = function (p0 : TEnumeratorObj): IDispatch of object;}

_T1 = function (p0 : string;
p1 : string): Variant of object;

_T2 = function (p0 : Variant): Boolean of object;

_T3 = _T2;

_T4 = function (p0 : Variant): string of object;

_T5 = function (p0 : Variant): Variant of object;

{_T6 = procedure (p0 : IScriptContext) of object;}

_T7 = function (const p0 : WideString): WideString of object;

_T8 = function : Variant of object;

_T9 = _T8;

_T10 = _T8;

_T11 = procedure  of object;

_T12 = function : string of object;

{_T13 = procedure (p0 : IScriptContext) of object;}

_T14 = function (const p0 : IDispatch;
p1 : Pointer;
p2 : Integer;
p3 : Integer;
p4 : Pointer): HRESULT of object;

_T15 = function (p0 : Integer;
p1 : Integer;
out p2): HRESULT of object;

_T16 = function (out p0 : Integer): HRESULT of object;

_T17 = function (p0 : Integer;
const p1 : IDispatch;
p2 : Integer;
p3 : Word;
var p4 : Word;
p5 : Pointer;
p6 : Pointer;
p7 : Pointer): HRESULT of object;

_T18 = procedure (p0 : TEnumeratorObj) of object;

{_T19 = procedure (p0 : IScriptContext) of object;}

_T20 = function : Integer of object;

_T21 = function (p0 : Integer): Variant of object;

_T22 = function : Boolean of object;

_T23 = _T22;

_T24 = function : Bool of object;

_T25 = _T8;

_T26 = _T21;

{_T27 = procedure (p0 : IAdapterError) of object;}

_T28 = procedure (p0 : Variant) of object;

_T29 = function (p0 : Integer): string of object;

_T30 = procedure (p0 : Integer) of object;

_T31 = function : WideString of object;

_T32 = function (const p0 : string;
const p1 : string): Variant of object;

_T33 = function (const p0 : string;
const p1 : string;
const p2 : string): Variant of object;

_T34 = function (const p0 : TComponent): string of object;

_T35 = _T11;

_T36 = procedure (p0 : TObject) of object;

{_T37 = procedure (p0 : IScriptContext;
p1 : IWebPageInfo) of object;}

{_T38 = procedure (p0 : IScriptContext) of object;}

_T39 = _T31;

_T40 = procedure (const p0 : WideString) of object;

_T41 = _T28;

{_T42 = procedure (p0 : IScriptProducer) of object;}

_T43 = _T8;

{_T44 = function (const p0 : string): IDispatch of object;}

_T45 = function (const p0 : string): TObject of object;

_T46 = _T11;

{_T47 = function (const p0 : TObject): IDispatch of object;}

_T48 = function (const p0 : string): Variant of object;

_T49 = procedure (const p0 : string;
const p1 : Variant) of object;

_T50 = _T48;

_T51 = procedure (p0 : TStrings) of object;

_T52 = _T29;

_T53 = function (const p0 : string): string of object;

_T54 = procedure (const p0 : string;
const p1 : string) of object;

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
function __TCustomEnumDispatcher__GetIDsOfNames__Wrapper(__Instance : TCustomEnumDispatcher;
const p0 : IDispatch;
p1 : Pointer;
p2 : Integer;
p3 : Integer;
p4 : Pointer): HRESULT;
var
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := __TCustomEnumDispatcher__(__Instance).GetIDsOfNames(__p0^,p1,p2,p3,p4);
end;

function __TCustomEnumDispatcher__Invoke__Wrapper(__Instance : TCustomEnumDispatcher;
p0 : Integer;
const p1 : IDispatch;
p2 : Integer;
p3 : Word;
var p4 : Word;
p5 : Pointer;
p6 : Pointer;
p7 : Pointer): HRESULT;
var
__p1 : ^TGUID;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
result := __TCustomEnumDispatcher__(__Instance).Invoke(p0,__p1^,p2,p3,p4,p5,p6,p7);
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
procedure __RegisterProps;
begin
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..29] of TClass = (
EScriptException,
TAdapterActionObj,
TAdapterFieldObj,
TAdapterFieldValuesObj,
TAdapterObj,
TAdapterValuesListObj,
TApplicationObj,
TBaseAdapterObj,
TComponentsEnumerator,
TContextObj,
TCustomEnumDispatcher,
TEndUserObj,
TEnumeratorObj,
TErrorObj,
TErrorsObj,
THiddenFieldsEnum,
THTMLItemsObj,
TImageObj,
TImageProducerObj,
TModuleObj,
TModulesObj,
TObjectScripter,
TPageObj,
TPagesObj,
TProducerObj,
TRequestObj,
TResponseObj,
TScriptableObject,
TSessionObj,
TStringsObj
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
RegRegisterMethod(TAdapterActionObj,'LinkToPage',TypeInfo(_T1),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Variant)],Addr(TAdapterActionObj.LinkToPage));

RegRegisterMethod(TAdapterFieldObj,'IsEqual',TypeInfo(_T2),[
TypeInfo(Variant),TypeInfo(Boolean)],Addr(TAdapterFieldObj.IsEqual));

RegRegisterMethod(TAdapterFieldValuesObj,'HasValue',TypeInfo(_T3),[
TypeInfo(Variant),TypeInfo(Boolean)],Addr(TAdapterFieldValuesObj.HasValue));

RegRegisterMethod(TAdapterValuesListObj,'NameOfValue',TypeInfo(_T4),[
TypeInfo(Variant),TypeInfo(string)],Addr(TAdapterValuesListObj.NameOfValue));

RegRegisterMethod(TAdapterValuesListObj,'ImageOfValue',TypeInfo(_T5),[
TypeInfo(Variant),TypeInfo(Variant)],Addr(TAdapterValuesListObj.ImageOfValue));

RegRegisterMethod(TApplicationObj,'QualifyFileName',TypeInfo(_T7),[
TypeInfo(WideString),TypeInfo(WideString)],Addr(TApplicationObj.QualifyFileName));

//RegRegisterMethod(TBaseAdapterObj,'GetFields',TypeInfo(_T8),[TypeInfo(Variant)], pointer(52));
RegRegisterMethod(TBaseAdapterObj,'GetFields',TypeInfo(_T8),[TypeInfo(Variant)],  getVMTProcAddr('TBaseAdapterObj','GetFields',52));


//RegRegisterMethod(TBaseAdapterObj,'GetActions',TypeInfo(_T9),[TypeInfo(Variant)], pointer(56));
RegRegisterMethod(TBaseAdapterObj,'GetActions',TypeInfo(_T9),[TypeInfo(Variant)],  getVMTProcAddr('TBaseAdapterObj','GetActions',56));


//RegRegisterMethod(TBaseAdapterObj,'GetRecords',TypeInfo(_T10),[TypeInfo(Variant)], pointer(60));
RegRegisterMethod(TBaseAdapterObj,'GetRecords',TypeInfo(_T10),[TypeInfo(Variant)],  getVMTProcAddr('TBaseAdapterObj','GetRecords',60));


RegRegisterMethod(TComponentsEnumerator,'EndIterating',TypeInfo(_T11),NoParams,Addr(TComponentsEnumerator.EndIterating));

RegRegisterMethod(TComponentsEnumerator,'ClassName',TypeInfo(_T12),[TypeInfo(string)],Addr(TComponentsEnumerator.ClassName));

RegisterProc(TCustomEnumDispatcher,'GetIDsOfNames',mtMethod,TypeInfo(_T14),[
TypeInfo(IDispatch),
TypeInfoPointer,
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfoPointer,TypeInfo(HRESULT)], pointer(0),cRegister);

RegisterProc(TCustomEnumDispatcher,'GetTypeInfo',mtMethod,TypeInfo(_T15),[
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfoUntyped,TypeInfo(HRESULT)], pointer(4),cStdCall);

RegisterProc(TCustomEnumDispatcher,'GetTypeInfoCount',mtMethod,TypeInfo(_T16),[
TypeInfo(Integer),TypeInfo(HRESULT)], pointer(8),cStdCall);

RegisterProc(TCustomEnumDispatcher,'Invoke',mtMethod,TypeInfo(_T17),[
TypeInfo(Integer),
TypeInfo(IDispatch),
TypeInfo(Integer),
TypeInfo(Word),
TypeInfo(Word),
TypeInfoPointer,
TypeInfoPointer,
TypeInfoPointer,TypeInfo(HRESULT)], pointer(12),cRegister);

RegisterProc(TCustomEnumDispatcher,'Create',mtConstructor,TypeInfo(_T18),[
TypeInfo(TEnumeratorObj)], pointer(16),cRegister);

//RegRegisterMethod(TEnumeratorObj,'GetListCount',TypeInfo(_T20),[TypeInfo(Integer)], pointer(32));
RegRegisterMethod(TEnumeratorObj,'GetListCount',TypeInfo(_T20),[TypeInfo(Integer)],  getVMTProcAddr('TEnumeratorObj','GetListCount',32));


//RegRegisterMethod(TEnumeratorObj,'GetListItem',TypeInfo(_T21),[TypeInfo(Integer),TypeInfo(Variant)], pointer(36));
RegRegisterMethod(TEnumeratorObj,'GetListItem',TypeInfo(_T21),[TypeInfo(Integer),TypeInfo(Variant)],  getVMTProcAddr('TEnumeratorObj','GetListItem',36));


//RegRegisterMethod(TEnumeratorObj,'moveFirst',TypeInfo(_T22),[TypeInfo(Boolean)], pointer(40));
RegRegisterMethod(TEnumeratorObj,'moveFirst',TypeInfo(_T22),[TypeInfo(Boolean)],  getVMTProcAddr('TEnumeratorObj','moveFirst',40));


//RegRegisterMethod(TEnumeratorObj,'moveNext',TypeInfo(_T23),[TypeInfo(Boolean)], pointer(44));
RegRegisterMethod(TEnumeratorObj,'moveNext',TypeInfo(_T23),[TypeInfo(Boolean)],  getVMTProcAddr('TEnumeratorObj','moveNext',44));


//RegRegisterMethod(TEnumeratorObj,'atEnd',TypeInfo(_T24),[TypeInfo(Bool)], pointer(48));
RegRegisterMethod(TEnumeratorObj,'atEnd',TypeInfo(_T24),[TypeInfo(Bool)],  getVMTProcAddr('TEnumeratorObj','atEnd',48));


RegRegisterMethod(TEnumeratorObj,'Item',TypeInfo(_T25),[TypeInfo(Variant)],Addr(TEnumeratorObj.Item));

RegRegisterMethod(TEnumeratorObj,'Items',TypeInfo(_T26),[
TypeInfo(Integer),TypeInfo(Variant)],Addr(TEnumeratorObj.Items));

RegRegisterMethod(THiddenFieldsEnum,'WriteFields',TypeInfo(_T28),[
TypeInfo(Variant)],Addr(THiddenFieldsEnum.WriteFields));

RegRegisterMethod(THTMLItemsObj,'Item',TypeInfo(_T29),[
TypeInfo(Integer),TypeInfo(string)],Addr(THTMLItemsObj.Item));

RegRegisterMethod(THTMLItemsObj,'WriteItem',TypeInfo(_T30),[
TypeInfo(Integer)],Addr(THTMLItemsObj.WriteItem));

RegRegisterMethod(TImageObj,'AsHREF',TypeInfo(_T31),[TypeInfo(WideString)],Addr(TImageObj.AsHREF));

RegRegisterMethod(TImageProducerObj,'GetImage',TypeInfo(_T32),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Variant)],Addr(TImageProducerObj.GetImage));

RegRegisterMethod(TImageProducerObj,'GetEventImage',TypeInfo(_T33),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(Variant)],Addr(TImageProducerObj.GetEventImage));

RegRegisterMethod(TImageProducerObj,'GetDisplayStyle',TypeInfo(_T34),[
TypeInfo(TComponent),TypeInfo(string)],Addr(TImageProducerObj.GetDisplayStyle));

RegisterProc(TModulesObj,'Create',mtConstructor,TypeInfo(_T35),NoParams,Addr(TModulesObj.Create),cRegister);

RegisterProc(TObjectScripter,'Create',mtConstructor,TypeInfo(_T36),[
TypeInfo(TObject)], pointer(28),cRegister);

//RegRegisterMethod(TProducerObj,'GetContent',TypeInfo(_T39),[TypeInfo(WideString)], pointer(28));
RegRegisterMethod(TProducerObj,'GetContent',TypeInfo(_T39),[TypeInfo(WideString)],  getVMTProcAddr('TProducerObj','GetContent',28));


//RegRegisterMethod(TProducerObj,'SetContent',TypeInfo(_T40),[TypeInfo(WideString)], pointer(32));
RegRegisterMethod(TProducerObj,'SetContent',TypeInfo(_T40),[TypeInfo(WideString)],  getVMTProcAddr('TProducerObj','SetContent',32));


//RegRegisterMethod(TProducerObj,'Write',TypeInfo(_T41),[TypeInfo(Variant)], pointer(36));
RegRegisterMethod(TProducerObj,'Write',TypeInfo(_T41),[TypeInfo(Variant)],  getVMTProcAddr('TProducerObj','Write',36));


RegRegisterMethod(TRequestObj,'QueryFields',TypeInfo(_T43),[TypeInfo(Variant)],Addr(TRequestObj.QueryFields));

//RegRegisterMethod(TScriptableObject,'FindObject',TypeInfo(_T45),[TypeInfo(string),TypeInfo(TObject)], pointer(24));
RegRegisterMethod(TScriptableObject,'FindObject',TypeInfo(_T45),[TypeInfo(string),TypeInfo(TObject)],  getVMTProcAddr('TScriptableObject','FindObject',24));


RegisterProc(TScriptableObject,'Create',mtConstructor,TypeInfo(_T46),NoParams,Addr(TScriptableObject.Create),cRegister);

RegRegisterMethod(TSessionObj,'GetValue',TypeInfo(_T48),[
TypeInfo(string),TypeInfo(Variant)],Addr(TSessionObj.GetValue));

RegRegisterMethod(TSessionObj,'SetValue',TypeInfo(_T49),[
TypeInfo(string),
TypeInfo(Variant)],Addr(TSessionObj.SetValue));

RegRegisterMethod(TSessionObj,'Values',TypeInfo(_T50),[
TypeInfo(string),TypeInfo(Variant)],Addr(TSessionObj.Values));

RegisterProc(TStringsObj,'Create',mtConstructor,TypeInfo(_T51),[
TypeInfo(TStrings)],Addr(TStringsObj.Create),cRegister);

RegRegisterMethod(TStringsObj,'Names',TypeInfo(_T52),[
TypeInfo(Integer),TypeInfo(string)],Addr(TStringsObj.Names));

RegRegisterMethod(TStringsObj,'Values',TypeInfo(_T53),[
TypeInfo(string),TypeInfo(string)],Addr(TStringsObj.Values));

RegRegisterMethod(TStringsObj,'SetValues',TypeInfo(_T54),[
TypeInfo(string),
TypeInfo(string)],Addr(TStringsObj.SetValues));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
{RegisterProc(nil,'CreateEnumeratedObject',mtProc,TypeInfo(_T0),[
TypeInfo(TEnumeratorObj),TypeInfo(IDispatch)],Addr(CreateEnumeratedObject),cRegister)}

{RegisterProc(TApplicationObj,'Create',mtConstructor,TypeInfo(_T6),[
TypeInfo(IScriptContext)],Addr(TApplicationObj.Create),cRegister)}

{RegisterProc(TContextObj,'Create',mtConstructor,TypeInfo(_T13),[
TypeInfo(IScriptContext)],Addr(TContextObj.Create),cRegister)}

{RegisterProc(TEndUserObj,'Create',mtConstructor,TypeInfo(_T19),[
TypeInfo(IScriptContext)],Addr(TEndUserObj.Create),cRegister)}

{RegisterProc(TErrorObj,'Create',mtConstructor,TypeInfo(_T27),[
TypeInfo(IAdapterError)],Addr(TErrorObj.Create),cRegister)}

{RegisterProc(TPageObj,'Create',mtConstructor,TypeInfo(_T37),[
TypeInfo(IScriptContext),
TypeInfo(IWebPageInfo)],Addr(TPageObj.Create),cRegister)}

{RegisterProc(TPagesObj,'Create',mtConstructor,TypeInfo(_T38),[
TypeInfo(IScriptContext)],Addr(TPagesObj.Create),cRegister)}

{RegisterProc(TProducerObj,'Create',mtConstructor,TypeInfo(_T42),[
TypeInfo(IScriptProducer)],Addr(TProducerObj.Create),cRegister)}

{RegRegisterMethod(TScriptableObject,'DispatchOfName',TypeInfo(_T44),[
TypeInfo(string),TypeInfo(IDispatch)], pointer(20))}

{RegisterProc(TScriptableObject,'DispatchOfObject',mtClassMethod,TypeInfo(_T47),[
TypeInfo(TObject),TypeInfo(IDispatch)],Addr(TScriptableObject.DispatchOfObject),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
