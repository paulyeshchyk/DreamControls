{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDSMTP_D2006;
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
  Classes,
  IdAssignedNumbers,
  IdEMailAddress,
  IdGlobal,
  IdHeaderList,
  IdMessage,
  IdMessageClient,
  IdSMTP;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : TAuthenticationType): Boolean of object;

_T1 = function : Boolean of object;

_T2 = procedure (const p0 : String;
const p1 : String;
const p2 : String;
const p3 : String;
const p4 : String) of object;

_T3 = procedure (p0 : TIdMessage) of object;

_T4 = procedure (p0 : String;
p1 : TStrings) of object;

_T5 = function (p0 : String): String of object;

function __DC__GetTIdSMTP__AuthSchemesSupported(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdSMTP(Instance).AuthSchemesSupported);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdSMTP,'AuthSchemesSupported',__DC__GetTIdSMTP__AuthSchemesSupported,nil);
end;

const __ConstNames0 : array[0..1] of string = (
'atNone'
,'atLogin'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,atNone));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,atLogin));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..0] of TClass = (
TIdSMTP
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
//RegRegisterMethod(TIdSMTP,'IsAuthProtocolAvailable',TypeInfo(_T0),[TypeInfo(TAuthenticationType),TypeInfo(Boolean)], pointer(180));
RegRegisterMethod(TIdSMTP,'IsAuthProtocolAvailable',TypeInfo(_T0),[TypeInfo(TAuthenticationType),TypeInfo(Boolean)],  getVMTProcAddr('TIdSMTP','IsAuthProtocolAvailable',180));


//RegRegisterMethod(TIdSMTP,'Authenticate',TypeInfo(_T1),[TypeInfo(Boolean)], pointer(184));
RegRegisterMethod(TIdSMTP,'Authenticate',TypeInfo(_T1),[TypeInfo(Boolean)],  getVMTProcAddr('TIdSMTP','Authenticate',184));


RegisterProc(TIdSMTP,'QuickSend',mtClassMethod,TypeInfo(_T2),[
TypeInfo(String),
TypeInfo(String),
TypeInfo(String),
TypeInfo(String),
TypeInfo(String)],Addr(TIdSMTP.QuickSend),cRegister);

//RegRegisterMethod(TIdSMTP,'Send',TypeInfo(_T3),[TypeInfo(TIdMessage)], pointer(188));
RegRegisterMethod(TIdSMTP,'Send',TypeInfo(_T3),[TypeInfo(TIdMessage)],  getVMTProcAddr('TIdSMTP','Send',188));


//RegRegisterMethod(TIdSMTP,'Expand',TypeInfo(_T4),[TypeInfo(String),TypeInfo(TStrings)], pointer(192));
RegRegisterMethod(TIdSMTP,'Expand',TypeInfo(_T4),[TypeInfo(String),TypeInfo(TStrings)],  getVMTProcAddr('TIdSMTP','Expand',192));


//RegRegisterMethod(TIdSMTP,'Verify',TypeInfo(_T5),[TypeInfo(String),TypeInfo(String)], pointer(196));
RegRegisterMethod(TIdSMTP,'Verify',TypeInfo(_T5),[TypeInfo(String),TypeInfo(String)],  getVMTProcAddr('TIdSMTP','Verify',196));


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
