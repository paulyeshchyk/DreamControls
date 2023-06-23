{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDURI_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  activex,
  classes,
  dcscript,
  dcsystem,
  dcdreamlib,
  IdException,
  IdURI;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (const p0 : String) of object;

_T1 = function (const p0 : TIdURIOptionalFieldsSet): String of object;

_T2 = procedure (var p0 : String) of object;

_T3 = function (p0 : String): String of object;

_T4 = function (const p0 : String): String of object;

_T5 = _T4;

_T6 = _T4;

function __TIdURI__GetFullURI__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList) : OleVariant;
var
__s0 : TIdURIOptionalFieldsSet;
begin
if cArgs > 0 then
VarToSet(__s0,OleVariant(pargs^[0]),SizeOf(TIdURIOptionalFieldsSet));
case cArgs of
0:
begin
result := TIdURI(__Instance).GetFullURI;
end;
1:
begin
result := TIdURI(__Instance).GetFullURI(__s0);
end;
end
end;

function __DC__GetTIdURI__Bookmark(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdURI(Instance).Bookmark;
end;

procedure __DC__SetTIdURI__Bookmark(Instance : TObject; Params : PVariantArgList);
begin
TIdURI(Instance).Bookmark:=OleVariant(Params^[0]);
end;

function __DC__GetTIdURI__Document(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdURI(Instance).Document;
end;

procedure __DC__SetTIdURI__Document(Instance : TObject; Params : PVariantArgList);
begin
TIdURI(Instance).Document:=OleVariant(Params^[0]);
end;

function __DC__GetTIdURI__Host(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdURI(Instance).Host;
end;

procedure __DC__SetTIdURI__Host(Instance : TObject; Params : PVariantArgList);
begin
TIdURI(Instance).Host:=OleVariant(Params^[0]);
end;

function __DC__GetTIdURI__Password(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdURI(Instance).Password;
end;

procedure __DC__SetTIdURI__Password(Instance : TObject; Params : PVariantArgList);
begin
TIdURI(Instance).Password:=OleVariant(Params^[0]);
end;

function __DC__GetTIdURI__Path(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdURI(Instance).Path;
end;

procedure __DC__SetTIdURI__Path(Instance : TObject; Params : PVariantArgList);
begin
TIdURI(Instance).Path:=OleVariant(Params^[0]);
end;

function __DC__GetTIdURI__Params(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdURI(Instance).Params;
end;

procedure __DC__SetTIdURI__Params(Instance : TObject; Params : PVariantArgList);
begin
TIdURI(Instance).Params:=OleVariant(Params^[0]);
end;

function __DC__GetTIdURI__Port(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdURI(Instance).Port;
end;

procedure __DC__SetTIdURI__Port(Instance : TObject; Params : PVariantArgList);
begin
TIdURI(Instance).Port:=OleVariant(Params^[0]);
end;

function __DC__GetTIdURI__Protocol(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdURI(Instance).Protocol;
end;

procedure __DC__SetTIdURI__Protocol(Instance : TObject; Params : PVariantArgList);
begin
TIdURI(Instance).Protocol:=OleVariant(Params^[0]);
end;

function __DC__GetTIdURI__URI(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdURI(Instance).URI;
end;

procedure __DC__SetTIdURI__URI(Instance : TObject; Params : PVariantArgList);
begin
TIdURI(Instance).URI:=OleVariant(Params^[0]);
end;

function __DC__GetTIdURI__Username(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdURI(Instance).Username;
end;

procedure __DC__SetTIdURI__Username(Instance : TObject; Params : PVariantArgList);
begin
TIdURI(Instance).Username:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdURI,'Bookmark',__DC__GetTIdURI__Bookmark,__DC__SetTIdURI__Bookmark);
RegisterProperty(TIdURI,'Document',__DC__GetTIdURI__Document,__DC__SetTIdURI__Document);
RegisterProperty(TIdURI,'Host',__DC__GetTIdURI__Host,__DC__SetTIdURI__Host);
RegisterProperty(TIdURI,'Password',__DC__GetTIdURI__Password,__DC__SetTIdURI__Password);
RegisterProperty(TIdURI,'Path',__DC__GetTIdURI__Path,__DC__SetTIdURI__Path);
RegisterProperty(TIdURI,'Params',__DC__GetTIdURI__Params,__DC__SetTIdURI__Params);
RegisterProperty(TIdURI,'Port',__DC__GetTIdURI__Port,__DC__SetTIdURI__Port);
RegisterProperty(TIdURI,'Protocol',__DC__GetTIdURI__Protocol,__DC__SetTIdURI__Protocol);
RegisterProperty(TIdURI,'URI',__DC__GetTIdURI__URI,__DC__SetTIdURI__URI);
RegisterProperty(TIdURI,'Username',__DC__GetTIdURI__Username,__DC__SetTIdURI__Username);
end;

const __ConstNames0 : array[0..1] of string = (
'ofAuthInfo'
,'ofBookmark'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,ofAuthInfo));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,ofBookmark));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..1] of TClass = (
EIdURIException,
TIdURI
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
//RegisterProc(TIdURI,'Create',mtConstructor,TypeInfo(_T0),[TypeInfo(String)], pointer(0),cRegister);
RegisterProc(TIdURI,'Create',mtConstructor,TypeInfo(_T0),[TypeInfo(String)],  getVMTProcAddr('TIdURI','Create',0),cRegister);


RegisterProc(TIdURI,'GetFullURI',mtScriptMethod,TypeInfo(_T1),[
TypeInfo(TIdURIOptionalFieldsSet),TypeInfo(String)],Addr(__TIdURI__GetFullURI__Wrapper),cRegister);

RegisterProc(TIdURI,'NormalizePath',mtClassMethod,TypeInfo(_T2),[
TypeInfo(String)],Addr(TIdURI.NormalizePath),cRegister);

RegisterProc(TIdURI,'URLDecode',mtClassMethod,TypeInfo(_T3),[
TypeInfo(String),TypeInfo(String)],Addr(TIdURI.URLDecode),cRegister);

RegisterProc(TIdURI,'URLEncode',mtClassMethod,TypeInfo(_T4),[
TypeInfo(String),TypeInfo(String)],Addr(TIdURI.URLEncode),cRegister);

RegisterProc(TIdURI,'ParamsEncode',mtClassMethod,TypeInfo(_T5),[
TypeInfo(String),TypeInfo(String)],Addr(TIdURI.ParamsEncode),cRegister);

RegisterProc(TIdURI,'PathEncode',mtClassMethod,TypeInfo(_T6),[
TypeInfo(String),TypeInfo(String)],Addr(TIdURI.PathEncode),cRegister);

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