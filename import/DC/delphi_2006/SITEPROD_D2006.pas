{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit SITEPROD_D2006;
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
  HTTPApp,
  HTTPProd,
  PagItems,
  MidProd,
  CompProd,
  WebComp,
  SysUtils,
  DSProd,
  SiteComp,
  Contnrs,
  WebForm,
  SiteProd;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
{_T0 = function (p0 : TComponent;
p1 : TClass): Boolean of object;}

_T1 = procedure  of object;

_T2 = function : string of object;

_T3 = function (p0 : TStrings): string of object;

_T4 = function : TSitePageElements of object;

_T5 = _T2;

_T6 = _T2;

_T7 = procedure (p0 : TStrings) of object;

_T8 = _T7;

_T9 = procedure (const p0 : TFileName) of object;

function __DC__GetTBaseAdapterPageProducer__Styles(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TBaseAdapterPageProducer(Instance).Styles);
end;

procedure __DC__SetTBaseAdapterPageProducer__Styles(Instance : TObject; Params : PVariantArgList);
begin
TBaseAdapterPageProducer(Instance).Styles:=TStrings(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTBaseAdapterPageProducer__StylesFile(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TBaseAdapterPageProducer(Instance).StylesFile;
end;

procedure __DC__SetTBaseAdapterPageProducer__StylesFile(Instance : TObject; Params : PVariantArgList);
begin
TBaseAdapterPageProducer(Instance).StylesFile:=OleVariant(Params^[0]);
end;

function __DC__GetTCustomAdapterPageProducer__HTMLDoc(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TCustomAdapterPageProducer(Instance).HTMLDoc);
end;

procedure __DC__SetTCustomAdapterPageProducer__HTMLDoc(Instance : TObject; Params : PVariantArgList);
begin
TCustomAdapterPageProducer(Instance).HTMLDoc:=TStrings(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTCustomAdapterPageProducer__HTMLFile(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCustomAdapterPageProducer(Instance).HTMLFile;
end;

procedure __DC__SetTCustomAdapterPageProducer__HTMLFile(Instance : TObject; Params : PVariantArgList);
begin
TCustomAdapterPageProducer(Instance).HTMLFile:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TBaseAdapterPageProducer,'Styles',__DC__GetTBaseAdapterPageProducer__Styles,__DC__SetTBaseAdapterPageProducer__Styles);
RegisterProperty(TBaseAdapterPageProducer,'StylesFile',__DC__GetTBaseAdapterPageProducer__StylesFile,__DC__SetTBaseAdapterPageProducer__StylesFile);
RegisterProperty(TCustomAdapterPageProducer,'HTMLDoc',__DC__GetTCustomAdapterPageProducer__HTMLDoc,__DC__SetTCustomAdapterPageProducer__HTMLDoc);
RegisterProperty(TCustomAdapterPageProducer,'HTMLFile',__DC__GetTCustomAdapterPageProducer__HTMLFile,__DC__SetTCustomAdapterPageProducer__HTMLFile);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..3] of TClass = (
TAdapterPageProducer,
TBaseAdapterPageProducer,
TCustomAdapterPageProducer,
TSitePageElements
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
//RegRegisterMethod(TBaseAdapterPageProducer,'GeneratePageElements',TypeInfo(_T1),NoParams, pointer(100));
RegRegisterMethod(TBaseAdapterPageProducer,'GeneratePageElements',TypeInfo(_T1),NoParams,  getVMTProcAddr('TBaseAdapterPageProducer','GeneratePageElements',100));


//RegRegisterMethod(TBaseAdapterPageProducer,'DeclareStyles',TypeInfo(_T2),[TypeInfo(string)], pointer(104));
RegRegisterMethod(TBaseAdapterPageProducer,'DeclareStyles',TypeInfo(_T2),[TypeInfo(string)],  getVMTProcAddr('TBaseAdapterPageProducer','DeclareStyles',104));


//RegRegisterMethod(TBaseAdapterPageProducer,'DeclareWarnings',TypeInfo(_T3),[TypeInfo(TStrings),TypeInfo(string)], pointer(108));
RegRegisterMethod(TBaseAdapterPageProducer,'DeclareWarnings',TypeInfo(_T3),[TypeInfo(TStrings),TypeInfo(string)],  getVMTProcAddr('TBaseAdapterPageProducer','DeclareWarnings',108));


//RegRegisterMethod(TBaseAdapterPageProducer,'CreatePageElements',TypeInfo(_T4),[TypeInfo(TSitePageElements)], pointer(112));
RegRegisterMethod(TBaseAdapterPageProducer,'CreatePageElements',TypeInfo(_T4),[TypeInfo(TSitePageElements)],  getVMTProcAddr('TBaseAdapterPageProducer','CreatePageElements',112));


//RegRegisterMethod(TBaseAdapterPageProducer,'GetDefaultTemplate',TypeInfo(_T5),[TypeInfo(string)], pointer(116));
RegRegisterMethod(TBaseAdapterPageProducer,'GetDefaultTemplate',TypeInfo(_T5),[TypeInfo(string)],  getVMTProcAddr('TBaseAdapterPageProducer','GetDefaultTemplate',116));


RegisterProc(TBaseAdapterPageProducer,'GetRequiredTags',mtClassMethod,TypeInfo(_T6),[TypeInfo(string)],Addr(TBaseAdapterPageProducer.GetRequiredTags),cRegister);

RegisterProc(TBaseAdapterPageProducer,'GetScriptEngines',mtClassMethod,TypeInfo(_T7),[
TypeInfo(TStrings)],Addr(TBaseAdapterPageProducer.GetScriptEngines),cRegister);

RegRegisterMethod(TBaseAdapterPageProducer,'SetStyles',TypeInfo(_T8),[
TypeInfo(TStrings)],Addr(TBaseAdapterPageProducer.SetStyles));

RegRegisterMethod(TBaseAdapterPageProducer,'SetStylesFile',TypeInfo(_T9),[
TypeInfo(TFileName)],Addr(TBaseAdapterPageProducer.SetStylesFile));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
{RegRegisterMethod(TBaseAdapterPageProducer,'ImplCanAddClass',TypeInfo(_T0),[
TypeInfo(TComponent),
TypeInfo(TClass),TypeInfo(Boolean)], pointer(96))}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
