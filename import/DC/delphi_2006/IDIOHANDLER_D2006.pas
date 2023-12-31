{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDIOHANDLER_D2006;
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
  IdComponent,
  IdGlobal,
  IdIOHandler;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure  of object;

_T1 = _T0;

_T2 = procedure (const p0 : string;
const p1 : Integer;
const p2 : string;
const p3 : Integer;
const p4 : Integer;
const p5 : Integer;
const p6 : Integer) of object;

_T3 = function : Boolean of object;

_T4 = _T0;

_T5 = function (p0 : Integer): Boolean of object;

_T6 = function (var p0;
p1 : Integer): Integer of object;

_T7 = _T6;

procedure __TIdIOHandler__ConnectClient__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
6:
begin
TIdIOHandler(__Instance).ConnectClient(OleVariant(pargs^[5]),OleVariant(pargs^[4]),OleVariant(pargs^[3]),OleVariant(pargs^[2]),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
7:
begin
TIdIOHandler(__Instance).ConnectClient(OleVariant(pargs^[6]),OleVariant(pargs^[5]),OleVariant(pargs^[4]),OleVariant(pargs^[3]),OleVariant(pargs^[2]),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

function __TIdIOHandler__Readable__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
0:
begin
result := TIdIOHandler(__Instance).Readable;
end;
1:
begin
result := TIdIOHandler(__Instance).Readable(OleVariant(pargs^[0]));
end;
end
end;

function __DC__GetTIdIOHandler__Active(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdIOHandler(Instance).Active;
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdIOHandler,'Active',__DC__GetTIdIOHandler__Active,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TIdIOHandler
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
//RegRegisterMethod(TIdIOHandler,'AfterAccept',TypeInfo(_T0),NoParams, pointer(60));
RegRegisterMethod(TIdIOHandler,'AfterAccept',TypeInfo(_T0),NoParams,  getVMTProcAddr('TIdIOHandler','AfterAccept',60));


//RegRegisterMethod(TIdIOHandler,'Close',TypeInfo(_T1),NoParams, pointer(64));
RegRegisterMethod(TIdIOHandler,'Close',TypeInfo(_T1),NoParams,  getVMTProcAddr('TIdIOHandler','Close',64));


RegisterProc(TIdIOHandler,'ConnectClient',mtScriptMethod,TypeInfo(_T2),[
TypeInfo(string),
TypeInfo(Integer),
TypeInfo(string),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(Integer),
TypeInfo(Integer)],Addr(__TIdIOHandler__ConnectClient__Wrapper),cRegister);

//RegRegisterMethod(TIdIOHandler,'Connected',TypeInfo(_T3),[TypeInfo(Boolean)], pointer(72));
RegRegisterMethod(TIdIOHandler,'Connected',TypeInfo(_T3),[TypeInfo(Boolean)],  getVMTProcAddr('TIdIOHandler','Connected',72));


//RegRegisterMethod(TIdIOHandler,'Open',TypeInfo(_T4),NoParams, pointer(76));
RegRegisterMethod(TIdIOHandler,'Open',TypeInfo(_T4),NoParams,  getVMTProcAddr('TIdIOHandler','Open',76));


RegisterProc(TIdIOHandler,'Readable',mtScriptMethod,TypeInfo(_T5),[
TypeInfo(Integer),TypeInfo(Boolean)],Addr(__TIdIOHandler__Readable__Wrapper),cRegister);

//RegRegisterMethod(TIdIOHandler,'Recv',TypeInfo(_T6),[TypeInfoUntyped,TypeInfo(Integer),TypeInfo(Integer)], pointer(84));
RegRegisterMethod(TIdIOHandler,'Recv',TypeInfo(_T6),[TypeInfoUntyped,TypeInfo(Integer),TypeInfo(Integer)],  getVMTProcAddr('TIdIOHandler','Recv',84));


//RegRegisterMethod(TIdIOHandler,'Send',TypeInfo(_T7),[TypeInfoUntyped,TypeInfo(Integer),TypeInfo(Integer)], pointer(88));
RegRegisterMethod(TIdIOHandler,'Send',TypeInfo(_T7),[TypeInfoUntyped,TypeInfo(Integer),TypeInfo(Integer)],  getVMTProcAddr('TIdIOHandler','Send',88));


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
