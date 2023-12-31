{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit DIROUTLN_D2006;
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
  Forms,
  Controls,
  Outline,
  SysUtils,
  Graphics,
  Grids,
  StdCtrls,
  Menus,
  DirOutln;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : Char;
p1 : Char): Boolean of object;

_T1 = procedure (p0 : Longint) of object;

_T2 = procedure  of object;

_T3 = _T1;

_T4 = _T2;

_T5 = function (const p0 : string): string of object;

function __DC__GetTDirectoryOutline__Drive(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDirectoryOutline(Instance).Drive;
end;

procedure __DC__SetTDirectoryOutline__Drive(Instance : TObject; Params : PVariantArgList);
begin
TDirectoryOutline(Instance).Drive:=VarToChar(OleVariant(Params^[0]));
end;

function __DC__GetTDirectoryOutline__Directory(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDirectoryOutline(Instance).Directory;
end;

procedure __DC__SetTDirectoryOutline__Directory(Instance : TObject; Params : PVariantArgList);
begin
TDirectoryOutline(Instance).Directory:=OleVariant(Params^[0]);
end;

function __DC__GetTDirectoryOutline__Lines(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDirectoryOutline(Instance).Lines);
end;

procedure __DC__SetTDirectoryOutline__Lines(Instance : TObject; Params : PVariantArgList);
begin
TDirectoryOutline(Instance).Lines:=TStrings(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TDirectoryOutline,'Drive',__DC__GetTDirectoryOutline__Drive,__DC__SetTDirectoryOutline__Drive);
RegisterProperty(TDirectoryOutline,'Directory',__DC__GetTDirectoryOutline__Directory,__DC__SetTDirectoryOutline__Directory);
RegisterProperty(TDirectoryOutline,'Lines',__DC__GetTDirectoryOutline__Lines,__DC__SetTDirectoryOutline__Lines);
end;

const __ConstNames0 : array[0..2] of string = (
'tcLowerCase'
,'tcUpperCase'
,'tcAsIs'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,tcLowerCase));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,tcUpperCase));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,tcAsIs));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..0] of TClass = (
TDirectoryOutline
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
const MethodNames : array[0..0] of string = (
'SameLetter'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(Char),
TypeInfo(Char),TypeInfo(Boolean)],Addr(SameLetter),cRegister);

//RegRegisterMethod(TDirectoryOutline,'BuildOneLevel',TypeInfo(_T1),[TypeInfo(Longint)], pointer(248));
RegRegisterMethod(TDirectoryOutline,'BuildOneLevel',TypeInfo(_T1),[TypeInfo(Longint)],  getVMTProcAddr('TDirectoryOutline','BuildOneLevel',248));


//RegRegisterMethod(TDirectoryOutline,'BuildTree',TypeInfo(_T2),NoParams, pointer(252));
RegRegisterMethod(TDirectoryOutline,'BuildTree',TypeInfo(_T2),NoParams,  getVMTProcAddr('TDirectoryOutline','BuildTree',252));


//RegRegisterMethod(TDirectoryOutline,'BuildSubTree',TypeInfo(_T3),[TypeInfo(Longint)], pointer(256));
RegRegisterMethod(TDirectoryOutline,'BuildSubTree',TypeInfo(_T3),[TypeInfo(Longint)],  getVMTProcAddr('TDirectoryOutline','BuildSubTree',256));


//RegRegisterMethod(TDirectoryOutline,'Change',TypeInfo(_T4),NoParams, pointer(260));
RegRegisterMethod(TDirectoryOutline,'Change',TypeInfo(_T4),NoParams,  getVMTProcAddr('TDirectoryOutline','Change',260));


RegRegisterMethod(TDirectoryOutline,'ForceCase',TypeInfo(_T5),[
TypeInfo(string),TypeInfo(string)],Addr(TDirectoryOutline.ForceCase));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
