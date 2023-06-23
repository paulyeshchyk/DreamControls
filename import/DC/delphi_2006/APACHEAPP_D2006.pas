{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit APACHEAPP_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  WinSock,
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  SysUtils,
  Classes,
  HTTPD,
  ApacheHTTP,
  HTTPApp,
  WebBroker,
  ApacheApp;
function Convertmodule_structToVariant(var R : module_struct) : OleVariant;
function ConvertVariantTomodule_struct(const V : OleVariant) : module_struct;
function Convertrequest_recToVariant(var R : request_rec) : OleVariant;
function ConvertVariantTorequest_rec(const V : OleVariant) : request_rec;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __module_struct__Wrapper = class(TDCRecordWrapper)
private
fR : module_struct;
public
function GetRecordPtr : pointer; override;
published
procedure setversion(const val : Integer);
function getversion : Integer;
property version : Integer read getversion write setversion;
procedure setminor_version(const val : Integer);
function getminor_version : Integer;
property minor_version : Integer read getminor_version write setminor_version;
procedure setmodule_index(const val : Integer);
function getmodule_index : Integer;
property module_index : Integer read getmodule_index write setmodule_index;
procedure setmagic(const val : Integer);
function getmagic : Integer;
property magic : Integer read getmagic write setmagic;
end;
type __request_rec__Wrapper = class(TDCRecordWrapper)
private
fR : request_rec;
public
function GetRecordPtr : pointer; override;
published
procedure setbackwards(const val : ap_int);
function getbackwards : ap_int;
property backwards : ap_int read getbackwards write setbackwards;
procedure setproxyreq(const val : ap_int);
function getproxyreq : ap_int;
property proxyreq : ap_int read getproxyreq write setproxyreq;
procedure setheader_only(const val : ap_int);
function getheader_only : ap_int;
property header_only : ap_int read getheader_only write setheader_only;
procedure setproto_num(const val : ap_int);
function getproto_num : ap_int;
property proto_num : ap_int read getproto_num write setproto_num;
procedure setrequest_time(const val : time_t);
function getrequest_time : time_t;
property request_time : time_t read getrequest_time write setrequest_time;
procedure setstatus(const val : ap_int);
function getstatus : ap_int;
property status : ap_int read getstatus write setstatus;
procedure setmethod_number(const val : ap_int);
function getmethod_number : ap_int;
property method_number : ap_int read getmethod_number write setmethod_number;
procedure setallowed(const val : ap_int);
function getallowed : ap_int;
property allowed : ap_int read getallowed write setallowed;
procedure setsent_bodyct(const val : ap_int);
function getsent_bodyct : ap_int;
property sent_bodyct : ap_int read getsent_bodyct write setsent_bodyct;
procedure setbytes_sent(const val : ap_long);
function getbytes_sent : ap_long;
property bytes_sent : ap_long read getbytes_sent write setbytes_sent;
procedure setmtime(const val : time_t);
function getmtime : time_t;
property mtime : time_t read getmtime write setmtime;
procedure setchunked(const val : ap_int);
function getchunked : ap_int;
property chunked : ap_int read getchunked write setchunked;
procedure setbyterange(const val : ap_int);
function getbyterange : ap_int;
property byterange : ap_int read getbyterange write setbyterange;
procedure setclength(const val : ap_long);
function getclength : ap_long;
property clength : ap_long read getclength write setclength;
procedure setremaining(const val : ap_long);
function getremaining : ap_long;
property remaining : ap_long read getremaining write setremaining;
procedure setread_length(const val : ap_long);
function getread_length : ap_long;
property read_length : ap_long read getread_length write setread_length;
procedure setread_body(const val : ap_int);
function getread_body : ap_int;
property read_body : ap_int read getread_body write setread_body;
procedure setread_chunked(const val : ap_int);
function getread_chunked : ap_int;
property read_chunked : ap_int read getread_chunked write setread_chunked;
procedure setexpecting_100(const val : ap_unsigned);
function getexpecting_100 : ap_unsigned;
property expecting_100 : ap_unsigned read getexpecting_100 write setexpecting_100;
procedure setno_cache(const val : ap_int);
function getno_cache : ap_int;
property no_cache : ap_int read getno_cache write setno_cache;
procedure setno_local_copy(const val : ap_int);
function getno_local_copy : ap_int;
property no_local_copy : ap_int read getno_local_copy write setno_local_copy;
end;
type __TApacheFactory__ = class(TApacheFactory);
type
{_T0 = function (p0 : Prequest_rec): Integer of object;}

{_T1 = procedure (p0 : Pmodule) of object;}

_T2 = function (const p0 : IDispatch): ap_int of object;

_T3 = function (const p0 : IDispatch): TApacheRequest of object;

_T4 = function (p0 : TApacheRequest): TApacheResponse of object;

_T5 = procedure  of object;

function __module_struct__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __module_struct__Wrapper.setversion(const val : Integer);
begin
module_struct(GetRecordPtr^).version := val;
end;
function __module_struct__Wrapper.getversion : Integer;
begin
result := module_struct(GetRecordPtr^).version;
end;
procedure __module_struct__Wrapper.setminor_version(const val : Integer);
begin
module_struct(GetRecordPtr^).minor_version := val;
end;
function __module_struct__Wrapper.getminor_version : Integer;
begin
result := module_struct(GetRecordPtr^).minor_version;
end;
procedure __module_struct__Wrapper.setmodule_index(const val : Integer);
begin
module_struct(GetRecordPtr^).module_index := val;
end;
function __module_struct__Wrapper.getmodule_index : Integer;
begin
result := module_struct(GetRecordPtr^).module_index;
end;
procedure __module_struct__Wrapper.setmagic(const val : Integer);
begin
module_struct(GetRecordPtr^).magic := val;
end;
function __module_struct__Wrapper.getmagic : Integer;
begin
result := module_struct(GetRecordPtr^).magic;
end;
function __request_rec__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __request_rec__Wrapper.setbackwards(const val : ap_int);
begin
request_rec(GetRecordPtr^).backwards := val;
end;
function __request_rec__Wrapper.getbackwards : ap_int;
begin
result := request_rec(GetRecordPtr^).backwards;
end;
procedure __request_rec__Wrapper.setproxyreq(const val : ap_int);
begin
request_rec(GetRecordPtr^).proxyreq := val;
end;
function __request_rec__Wrapper.getproxyreq : ap_int;
begin
result := request_rec(GetRecordPtr^).proxyreq;
end;
procedure __request_rec__Wrapper.setheader_only(const val : ap_int);
begin
request_rec(GetRecordPtr^).header_only := val;
end;
function __request_rec__Wrapper.getheader_only : ap_int;
begin
result := request_rec(GetRecordPtr^).header_only;
end;
procedure __request_rec__Wrapper.setproto_num(const val : ap_int);
begin
request_rec(GetRecordPtr^).proto_num := val;
end;
function __request_rec__Wrapper.getproto_num : ap_int;
begin
result := request_rec(GetRecordPtr^).proto_num;
end;
procedure __request_rec__Wrapper.setrequest_time(const val : time_t);
begin
request_rec(GetRecordPtr^).request_time := val;
end;
function __request_rec__Wrapper.getrequest_time : time_t;
begin
result := request_rec(GetRecordPtr^).request_time;
end;
procedure __request_rec__Wrapper.setstatus(const val : ap_int);
begin
request_rec(GetRecordPtr^).status := val;
end;
function __request_rec__Wrapper.getstatus : ap_int;
begin
result := request_rec(GetRecordPtr^).status;
end;
procedure __request_rec__Wrapper.setmethod_number(const val : ap_int);
begin
request_rec(GetRecordPtr^).method_number := val;
end;
function __request_rec__Wrapper.getmethod_number : ap_int;
begin
result := request_rec(GetRecordPtr^).method_number;
end;
procedure __request_rec__Wrapper.setallowed(const val : ap_int);
begin
request_rec(GetRecordPtr^).allowed := val;
end;
function __request_rec__Wrapper.getallowed : ap_int;
begin
result := request_rec(GetRecordPtr^).allowed;
end;
procedure __request_rec__Wrapper.setsent_bodyct(const val : ap_int);
begin
request_rec(GetRecordPtr^).sent_bodyct := val;
end;
function __request_rec__Wrapper.getsent_bodyct : ap_int;
begin
result := request_rec(GetRecordPtr^).sent_bodyct;
end;
procedure __request_rec__Wrapper.setbytes_sent(const val : ap_long);
begin
request_rec(GetRecordPtr^).bytes_sent := val;
end;
function __request_rec__Wrapper.getbytes_sent : ap_long;
begin
result := request_rec(GetRecordPtr^).bytes_sent;
end;
procedure __request_rec__Wrapper.setmtime(const val : time_t);
begin
request_rec(GetRecordPtr^).mtime := val;
end;
function __request_rec__Wrapper.getmtime : time_t;
begin
result := request_rec(GetRecordPtr^).mtime;
end;
procedure __request_rec__Wrapper.setchunked(const val : ap_int);
begin
request_rec(GetRecordPtr^).chunked := val;
end;
function __request_rec__Wrapper.getchunked : ap_int;
begin
result := request_rec(GetRecordPtr^).chunked;
end;
procedure __request_rec__Wrapper.setbyterange(const val : ap_int);
begin
request_rec(GetRecordPtr^).byterange := val;
end;
function __request_rec__Wrapper.getbyterange : ap_int;
begin
result := request_rec(GetRecordPtr^).byterange;
end;
procedure __request_rec__Wrapper.setclength(const val : ap_long);
begin
request_rec(GetRecordPtr^).clength := val;
end;
function __request_rec__Wrapper.getclength : ap_long;
begin
result := request_rec(GetRecordPtr^).clength;
end;
procedure __request_rec__Wrapper.setremaining(const val : ap_long);
begin
request_rec(GetRecordPtr^).remaining := val;
end;
function __request_rec__Wrapper.getremaining : ap_long;
begin
result := request_rec(GetRecordPtr^).remaining;
end;
procedure __request_rec__Wrapper.setread_length(const val : ap_long);
begin
request_rec(GetRecordPtr^).read_length := val;
end;
function __request_rec__Wrapper.getread_length : ap_long;
begin
result := request_rec(GetRecordPtr^).read_length;
end;
procedure __request_rec__Wrapper.setread_body(const val : ap_int);
begin
request_rec(GetRecordPtr^).read_body := val;
end;
function __request_rec__Wrapper.getread_body : ap_int;
begin
result := request_rec(GetRecordPtr^).read_body;
end;
procedure __request_rec__Wrapper.setread_chunked(const val : ap_int);
begin
request_rec(GetRecordPtr^).read_chunked := val;
end;
function __request_rec__Wrapper.getread_chunked : ap_int;
begin
result := request_rec(GetRecordPtr^).read_chunked;
end;
procedure __request_rec__Wrapper.setexpecting_100(const val : ap_unsigned);
begin
request_rec(GetRecordPtr^).expecting_100 := val;
end;
function __request_rec__Wrapper.getexpecting_100 : ap_unsigned;
begin
result := request_rec(GetRecordPtr^).expecting_100;
end;
procedure __request_rec__Wrapper.setno_cache(const val : ap_int);
begin
request_rec(GetRecordPtr^).no_cache := val;
end;
function __request_rec__Wrapper.getno_cache : ap_int;
begin
result := request_rec(GetRecordPtr^).no_cache;
end;
procedure __request_rec__Wrapper.setno_local_copy(const val : ap_int);
begin
request_rec(GetRecordPtr^).no_local_copy := val;
end;
function __request_rec__Wrapper.getno_local_copy : ap_int;
begin
result := request_rec(GetRecordPtr^).no_local_copy;
end;
function __TApacheApplication__ProcessRequest__Wrapper(__Instance : TApacheApplication;
const p0 : IDispatch): ap_int;
var
__p0 : ^request_rec;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := TApacheApplication(__Instance).ProcessRequest(__p0^);
end;

function __TApacheFactory__NewRequest__Wrapper(__Instance : TApacheFactory;
const p0 : IDispatch): TApacheRequest;
var
__p0 : ^request_rec;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
result := __TApacheFactory__(__Instance).NewRequest(__p0^);
end;


type __module_struct__Wrapper__ = class(__module_struct__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __module_struct__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function Convertmodule_structToVariant(var R : module_struct) : OleVariant;
var
__rw : __module_struct__Wrapper__;
begin
__rw := __module_struct__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantTomodule_struct(const V : OleVariant) : module_struct;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := module_struct((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;

type __request_rec__Wrapper__ = class(__request_rec__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __request_rec__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function Convertrequest_recToVariant(var R : request_rec) : OleVariant;
var
__rw : __request_rec__Wrapper__;
begin
__rw := __request_rec__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantTorequest_rec(const V : OleVariant) : request_rec;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := request_rec((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
procedure __RegisterProps;
begin
end;

function __DC__GetApacheApp__apache_module(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __module_struct__Wrapper;
begin
__wrapper := __module_struct__Wrapper.Create;
__wrapper.fR := ApacheApp.apache_module;
result := IUnknown(__wrapper) as IDispatch;
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('apache_module',__DC__GetApacheApp__apache_module,nil));
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
TApacheApplication,
TApacheFactory
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
RegRegisterMethod(TApacheApplication,'ProcessRequest',TypeInfo(_T2),[
TypeInfo(IDispatch),TypeInfo(ap_int)],Addr(__TApacheApplication__ProcessRequest__Wrapper));

//RegRegisterMethod(TApacheFactory,'NewRequest',TypeInfo(_T3),[TypeInfo(IDispatch),TypeInfo(TApacheRequest)], pointer(0));
RegRegisterMethod(TApacheFactory,'NewRequest',TypeInfo(_T3),[TypeInfo(IDispatch),TypeInfo(TApacheRequest)],  getVMTProcAddr('TApacheFactory','NewRequest',0));


//RegRegisterMethod(TApacheFactory,'NewResponse',TypeInfo(_T4),[TypeInfo(TApacheRequest),TypeInfo(TApacheResponse)], pointer(4));
RegRegisterMethod(TApacheFactory,'NewResponse',TypeInfo(_T4),[TypeInfo(TApacheRequest),TypeInfo(TApacheResponse)],  getVMTProcAddr('TApacheFactory','NewResponse',4));


RegisterProc(TApacheFactory,'Create',mtConstructor,TypeInfo(_T5),NoParams,Addr(TApacheFactory.Create),cRegister);

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
{RegisterProc(nil,'apache_handlers',mtProc,TypeInfo(_T0),[
TypeInfoPointer,TypeInfo(Integer)],Addr(apache_handlers),cCdecl)}

{RegisterProc(nil,'set_module',mtProc,TypeInfo(_T1),[
TypeInfoPointer],Addr(set_module),cRegister)}

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