{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit APACHETWOHTTP_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  Windows,
  Winsock,
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  Classes,
  HTTPD2,
  HTTPApp,
  ApacheTwoHTTP;
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
type __request_rec__Wrapper = class(TDCRecordWrapper)
private
fR : request_rec;
public
function GetRecordPtr : pointer; override;
published
procedure setassbackwards(const val : Integer);
function getassbackwards : Integer;
property assbackwards : Integer read getassbackwards write setassbackwards;
procedure setproxyreq(const val : Integer);
function getproxyreq : Integer;
property proxyreq : Integer read getproxyreq write setproxyreq;
procedure setheader_only(const val : Integer);
function getheader_only : Integer;
property header_only : Integer read getheader_only write setheader_only;
procedure setproto_num(const val : Integer);
function getproto_num : Integer;
property proto_num : Integer read getproto_num write setproto_num;
procedure setstatus(const val : Integer);
function getstatus : Integer;
property status : Integer read getstatus write setstatus;
procedure setmethod_number(const val : Integer);
function getmethod_number : Integer;
property method_number : Integer read getmethod_number write setmethod_number;
procedure setchunked(const val : Integer);
function getchunked : Integer;
property chunked : Integer read getchunked write setchunked;
procedure setread_body(const val : Integer);
function getread_body : Integer;
property read_body : Integer read getread_body write setread_body;
procedure setread_chunked(const val : Integer);
function getread_chunked : Integer;
property read_chunked : Integer read getread_chunked write setread_chunked;
procedure setexpecting_100(const val : Cardinal);
function getexpecting_100 : Cardinal;
property expecting_100 : Cardinal read getexpecting_100 write setexpecting_100;
procedure setno_cache(const val : Integer);
function getno_cache : Integer;
property no_cache : Integer read getno_cache write setno_cache;
procedure setno_local_copy(const val : Integer);
function getno_local_copy : Integer;
property no_local_copy : Integer read getno_local_copy write setno_local_copy;
procedure setused_path_info(const val : Integer);
function getused_path_info : Integer;
property used_path_info : Integer read getused_path_info write setused_path_info;
procedure seteos_sent(const val : Integer);
function geteos_sent : Integer;
property eos_sent : Integer read geteos_sent write seteos_sent;
end;
type
_T0 = procedure (const p0 : IDispatch) of object;

_T1 = procedure  of object;

_T2 = procedure (p0 : TWebRequest) of object;

function __request_rec__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __request_rec__Wrapper.setassbackwards(const val : Integer);
begin
request_rec(GetRecordPtr^).assbackwards := val;
end;
function __request_rec__Wrapper.getassbackwards : Integer;
begin
result := request_rec(GetRecordPtr^).assbackwards;
end;
procedure __request_rec__Wrapper.setproxyreq(const val : Integer);
begin
request_rec(GetRecordPtr^).proxyreq := val;
end;
function __request_rec__Wrapper.getproxyreq : Integer;
begin
result := request_rec(GetRecordPtr^).proxyreq;
end;
procedure __request_rec__Wrapper.setheader_only(const val : Integer);
begin
request_rec(GetRecordPtr^).header_only := val;
end;
function __request_rec__Wrapper.getheader_only : Integer;
begin
result := request_rec(GetRecordPtr^).header_only;
end;
procedure __request_rec__Wrapper.setproto_num(const val : Integer);
begin
request_rec(GetRecordPtr^).proto_num := val;
end;
function __request_rec__Wrapper.getproto_num : Integer;
begin
result := request_rec(GetRecordPtr^).proto_num;
end;
procedure __request_rec__Wrapper.setstatus(const val : Integer);
begin
request_rec(GetRecordPtr^).status := val;
end;
function __request_rec__Wrapper.getstatus : Integer;
begin
result := request_rec(GetRecordPtr^).status;
end;
procedure __request_rec__Wrapper.setmethod_number(const val : Integer);
begin
request_rec(GetRecordPtr^).method_number := val;
end;
function __request_rec__Wrapper.getmethod_number : Integer;
begin
result := request_rec(GetRecordPtr^).method_number;
end;
procedure __request_rec__Wrapper.setchunked(const val : Integer);
begin
request_rec(GetRecordPtr^).chunked := val;
end;
function __request_rec__Wrapper.getchunked : Integer;
begin
result := request_rec(GetRecordPtr^).chunked;
end;
procedure __request_rec__Wrapper.setread_body(const val : Integer);
begin
request_rec(GetRecordPtr^).read_body := val;
end;
function __request_rec__Wrapper.getread_body : Integer;
begin
result := request_rec(GetRecordPtr^).read_body;
end;
procedure __request_rec__Wrapper.setread_chunked(const val : Integer);
begin
request_rec(GetRecordPtr^).read_chunked := val;
end;
function __request_rec__Wrapper.getread_chunked : Integer;
begin
result := request_rec(GetRecordPtr^).read_chunked;
end;
procedure __request_rec__Wrapper.setexpecting_100(const val : Cardinal);
begin
request_rec(GetRecordPtr^).expecting_100 := val;
end;
function __request_rec__Wrapper.getexpecting_100 : Cardinal;
begin
result := request_rec(GetRecordPtr^).expecting_100;
end;
procedure __request_rec__Wrapper.setno_cache(const val : Integer);
begin
request_rec(GetRecordPtr^).no_cache := val;
end;
function __request_rec__Wrapper.getno_cache : Integer;
begin
result := request_rec(GetRecordPtr^).no_cache;
end;
procedure __request_rec__Wrapper.setno_local_copy(const val : Integer);
begin
request_rec(GetRecordPtr^).no_local_copy := val;
end;
function __request_rec__Wrapper.getno_local_copy : Integer;
begin
result := request_rec(GetRecordPtr^).no_local_copy;
end;
procedure __request_rec__Wrapper.setused_path_info(const val : Integer);
begin
request_rec(GetRecordPtr^).used_path_info := val;
end;
function __request_rec__Wrapper.getused_path_info : Integer;
begin
result := request_rec(GetRecordPtr^).used_path_info;
end;
procedure __request_rec__Wrapper.seteos_sent(const val : Integer);
begin
request_rec(GetRecordPtr^).eos_sent := val;
end;
function __request_rec__Wrapper.geteos_sent : Integer;
begin
result := request_rec(GetRecordPtr^).eos_sent;
end;
procedure __TApacheTwoRequest__Create__Wrapper(__Instance : TApacheTwoRequest;
const p0 : IDispatch);
var
__p0 : ^request_rec;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
TApacheTwoRequest(__Instance).Create(__p0^);
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
function __DC__GetTApacheTwoResponse__ReturnCode(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TApacheTwoResponse(Instance).ReturnCode;
end;

procedure __DC__SetTApacheTwoResponse__ReturnCode(Instance : TObject; Params : PVariantArgList);
begin
TApacheTwoResponse(Instance).ReturnCode:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TApacheTwoResponse,'ReturnCode',__DC__GetTApacheTwoResponse__ReturnCode,__DC__SetTApacheTwoResponse__ReturnCode);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..1] of TClass = (
TApacheTwoRequest,
TApacheTwoResponse
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
RegisterProc(TApacheTwoRequest,'Create',mtConstructor,TypeInfo(_T0),[
TypeInfo(IDispatch)],Addr(__TApacheTwoRequest__Create__Wrapper),cRegister);

//RegRegisterMethod(TApacheTwoResponse,'InitResponse',TypeInfo(_T1),NoParams, pointer(68));
RegRegisterMethod(TApacheTwoResponse,'InitResponse',TypeInfo(_T1),NoParams,  getVMTProcAddr('TApacheTwoResponse','InitResponse',68));


RegisterProc(TApacheTwoResponse,'Create',mtConstructor,TypeInfo(_T2),[
TypeInfo(TWebRequest)],Addr(TApacheTwoResponse.Create),cRegister);

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.