{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDDNSRESOLVER_D2006;
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
  IdGlobal,
  IdUDPClient,
  IdDNSResolver;
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

_T2 = procedure (p0 : String) of object;

_T3 = procedure (p0 : TResultRecord) of object;

_T4 = function (p0 : String;
var p1 : Integer): TResultRecord of object;

_T5 = _T0;

_T6 = procedure (p0 : String;
p1 : Integer) of object;

function __DC__GetTDNSHeader__ID(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDNSHeader(Instance).ID;
end;

procedure __DC__SetTDNSHeader__ID(Instance : TObject; Params : PVariantArgList);
begin
TDNSHeader(Instance).ID:=OleVariant(Params^[0]);
end;

function __DC__GetTDNSHeader__Qr(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDNSHeader(Instance).Qr;
end;

procedure __DC__SetTDNSHeader__Qr(Instance : TObject; Params : PVariantArgList);
begin
TDNSHeader(Instance).Qr:=OleVariant(Params^[0]);
end;

function __DC__GetTDNSHeader__OpCode(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDNSHeader(Instance).OpCode;
end;

procedure __DC__SetTDNSHeader__OpCode(Instance : TObject; Params : PVariantArgList);
begin
TDNSHeader(Instance).OpCode:=OleVariant(Params^[0]);
end;

function __DC__GetTDNSHeader__AA(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDNSHeader(Instance).AA;
end;

procedure __DC__SetTDNSHeader__AA(Instance : TObject; Params : PVariantArgList);
begin
TDNSHeader(Instance).AA:=OleVariant(Params^[0]);
end;

function __DC__GetTDNSHeader__TC(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDNSHeader(Instance).TC;
end;

procedure __DC__SetTDNSHeader__TC(Instance : TObject; Params : PVariantArgList);
begin
TDNSHeader(Instance).TC:=OleVariant(Params^[0]);
end;

function __DC__GetTDNSHeader__RD(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDNSHeader(Instance).RD;
end;

procedure __DC__SetTDNSHeader__RD(Instance : TObject; Params : PVariantArgList);
begin
TDNSHeader(Instance).RD:=OleVariant(Params^[0]);
end;

function __DC__GetTDNSHeader__RA(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDNSHeader(Instance).RA;
end;

procedure __DC__SetTDNSHeader__RA(Instance : TObject; Params : PVariantArgList);
begin
TDNSHeader(Instance).RA:=OleVariant(Params^[0]);
end;

function __DC__GetTDNSHeader__RCode(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDNSHeader(Instance).RCode;
end;

procedure __DC__SetTDNSHeader__RCode(Instance : TObject; Params : PVariantArgList);
begin
TDNSHeader(Instance).RCode:=OleVariant(Params^[0]);
end;

function __DC__GetTDNSHeader__BitCode(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDNSHeader(Instance).BitCode;
end;

function __DC__GetTDNSHeader__QDCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDNSHeader(Instance).QDCount;
end;

procedure __DC__SetTDNSHeader__QDCount(Instance : TObject; Params : PVariantArgList);
begin
TDNSHeader(Instance).QDCount:=OleVariant(Params^[0]);
end;

function __DC__GetTDNSHeader__ANCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDNSHeader(Instance).ANCount;
end;

procedure __DC__SetTDNSHeader__ANCount(Instance : TObject; Params : PVariantArgList);
begin
TDNSHeader(Instance).ANCount:=OleVariant(Params^[0]);
end;

function __DC__GetTDNSHeader__NSCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDNSHeader(Instance).NSCount;
end;

procedure __DC__SetTDNSHeader__NSCount(Instance : TObject; Params : PVariantArgList);
begin
TDNSHeader(Instance).NSCount:=OleVariant(Params^[0]);
end;

function __DC__GetTDNSHeader__ARCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDNSHeader(Instance).ARCount;
end;

procedure __DC__SetTDNSHeader__ARCount(Instance : TObject; Params : PVariantArgList);
begin
TDNSHeader(Instance).ARCount:=OleVariant(Params^[0]);
end;

function __DC__GetTHINFORecord__CPU(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := THINFORecord(Instance).CPU;
end;

function __DC__GetTHINFORecord__OS(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := THINFORecord(Instance).OS;
end;

function __DC__GetTIdDNSResolver__QueryResult(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdDNSResolver(Instance).QueryResult);
end;

function __DC__GetTMINFORecord__ResponsiblePersonMailbox(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TMINFORecord(Instance).ResponsiblePersonMailbox;
end;

function __DC__GetTMINFORecord__ErrorMailbox(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TMINFORecord(Instance).ErrorMailbox;
end;

function __DC__GetTMXRecord__ExchangeServer(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TMXRecord(Instance).ExchangeServer;
end;

function __DC__GetTMXRecord__Preference(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TMXRecord(Instance).Preference;
end;

function __DC__GetTNAMERecord__HostName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TNAMERecord(Instance).HostName;
end;

function __DC__GetTQueryResult__QueryClass(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TQueryResult(Instance).QueryClass;
end;

function __DC__GetTQueryResult__QueryType(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TQueryResult(Instance).QueryType;
end;

function __DC__GetTQueryResult__DomainName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TQueryResult(Instance).DomainName;
end;

function __DC__GetTQueryResult__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TQueryResult(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTQueryResult__Items(Instance : TObject; Params : PVariantArgList);
begin
TQueryResult(Instance).Items[OleVariant(Params^[1])]:=TResultRecord(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTRDATARecord__IPAddress(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TRDATARecord(Instance).IPAddress;
end;

function __DC__GetTResultRecord__RecType(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TResultRecord(Instance).RecType;
end;

function __DC__GetTResultRecord__RecClass(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TResultRecord(Instance).RecClass;
end;

function __DC__GetTResultRecord__Name(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TResultRecord(Instance).Name;
end;

function __DC__GetTResultRecord__TTL(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TResultRecord(Instance).TTL;
end;

function __DC__GetTResultRecord__RDataLength(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TResultRecord(Instance).RDataLength;
end;

function __DC__GetTResultRecord__RData(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TResultRecord(Instance).RData;
end;

function __DC__GetTSOARecord__Primary(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TSOARecord(Instance).Primary;
end;

function __DC__GetTSOARecord__ResponsiblePerson(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TSOARecord(Instance).ResponsiblePerson;
end;

function __DC__GetTSOARecord__Serial(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TSOARecord(Instance).Serial;
end;

function __DC__GetTSOARecord__Refresh(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TSOARecord(Instance).Refresh;
end;

function __DC__GetTSOARecord__Retry(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TSOARecord(Instance).Retry;
end;

function __DC__GetTSOARecord__Expire(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TSOARecord(Instance).Expire;
end;

function __DC__GetTSOARecord__MinimumTTL(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TSOARecord(Instance).MinimumTTL;
end;

function __DC__GetTTextRecord__Text(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TTextRecord(Instance).Text);
end;

function __DC__GetTWKSRecord__Address(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWKSRecord(Instance).Address;
end;

function __DC__GetTWKSRecord__Protocol(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWKSRecord(Instance).Protocol;
end;

function __DC__GetTWKSRecord__BitMap(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWKSRecord(Instance).BitMap[OleVariant(Params^[0])];
end;

function __DC__GetTWKSRecord__ByteCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TWKSRecord(Instance).ByteCount;
end;

procedure __RegisterProps;
begin
RegisterProperty(TDNSHeader,'ID',__DC__GetTDNSHeader__ID,__DC__SetTDNSHeader__ID);
RegisterProperty(TDNSHeader,'Qr',__DC__GetTDNSHeader__Qr,__DC__SetTDNSHeader__Qr);
RegisterProperty(TDNSHeader,'OpCode',__DC__GetTDNSHeader__OpCode,__DC__SetTDNSHeader__OpCode);
RegisterProperty(TDNSHeader,'AA',__DC__GetTDNSHeader__AA,__DC__SetTDNSHeader__AA);
RegisterProperty(TDNSHeader,'TC',__DC__GetTDNSHeader__TC,__DC__SetTDNSHeader__TC);
RegisterProperty(TDNSHeader,'RD',__DC__GetTDNSHeader__RD,__DC__SetTDNSHeader__RD);
RegisterProperty(TDNSHeader,'RA',__DC__GetTDNSHeader__RA,__DC__SetTDNSHeader__RA);
RegisterProperty(TDNSHeader,'RCode',__DC__GetTDNSHeader__RCode,__DC__SetTDNSHeader__RCode);
RegisterProperty(TDNSHeader,'BitCode',__DC__GetTDNSHeader__BitCode,nil);
RegisterProperty(TDNSHeader,'QDCount',__DC__GetTDNSHeader__QDCount,__DC__SetTDNSHeader__QDCount);
RegisterProperty(TDNSHeader,'ANCount',__DC__GetTDNSHeader__ANCount,__DC__SetTDNSHeader__ANCount);
RegisterProperty(TDNSHeader,'NSCount',__DC__GetTDNSHeader__NSCount,__DC__SetTDNSHeader__NSCount);
RegisterProperty(TDNSHeader,'ARCount',__DC__GetTDNSHeader__ARCount,__DC__SetTDNSHeader__ARCount);
RegisterProperty(THINFORecord,'CPU',__DC__GetTHINFORecord__CPU,nil);
RegisterProperty(THINFORecord,'OS',__DC__GetTHINFORecord__OS,nil);
RegisterProperty(TIdDNSResolver,'QueryResult',__DC__GetTIdDNSResolver__QueryResult,nil);
RegisterProperty(TMINFORecord,'ResponsiblePersonMailbox',__DC__GetTMINFORecord__ResponsiblePersonMailbox,nil);
RegisterProperty(TMINFORecord,'ErrorMailbox',__DC__GetTMINFORecord__ErrorMailbox,nil);
RegisterProperty(TMXRecord,'ExchangeServer',__DC__GetTMXRecord__ExchangeServer,nil);
RegisterProperty(TMXRecord,'Preference',__DC__GetTMXRecord__Preference,nil);
RegisterProperty(TNAMERecord,'HostName',__DC__GetTNAMERecord__HostName,nil);
RegisterProperty(TQueryResult,'QueryClass',__DC__GetTQueryResult__QueryClass,nil);
RegisterProperty(TQueryResult,'QueryType',__DC__GetTQueryResult__QueryType,nil);
RegisterProperty(TQueryResult,'DomainName',__DC__GetTQueryResult__DomainName,nil);
RegisterIndexedProperty(TQueryResult,'Items',1,True,__DC__GetTQueryResult__Items,__DC__SetTQueryResult__Items);
RegisterProperty(TRDATARecord,'IPAddress',__DC__GetTRDATARecord__IPAddress,nil);
RegisterProperty(TResultRecord,'RecType',__DC__GetTResultRecord__RecType,nil);
RegisterProperty(TResultRecord,'RecClass',__DC__GetTResultRecord__RecClass,nil);
RegisterProperty(TResultRecord,'Name',__DC__GetTResultRecord__Name,nil);
RegisterProperty(TResultRecord,'TTL',__DC__GetTResultRecord__TTL,nil);
RegisterProperty(TResultRecord,'RDataLength',__DC__GetTResultRecord__RDataLength,nil);
RegisterProperty(TResultRecord,'RData',__DC__GetTResultRecord__RData,nil);
RegisterProperty(TSOARecord,'Primary',__DC__GetTSOARecord__Primary,nil);
RegisterProperty(TSOARecord,'ResponsiblePerson',__DC__GetTSOARecord__ResponsiblePerson,nil);
RegisterProperty(TSOARecord,'Serial',__DC__GetTSOARecord__Serial,nil);
RegisterProperty(TSOARecord,'Refresh',__DC__GetTSOARecord__Refresh,nil);
RegisterProperty(TSOARecord,'Retry',__DC__GetTSOARecord__Retry,nil);
RegisterProperty(TSOARecord,'Expire',__DC__GetTSOARecord__Expire,nil);
RegisterProperty(TSOARecord,'MinimumTTL',__DC__GetTSOARecord__MinimumTTL,nil);
RegisterProperty(TTextRecord,'Text',__DC__GetTTextRecord__Text,nil);
RegisterProperty(TWKSRecord,'Address',__DC__GetTWKSRecord__Address,nil);
RegisterProperty(TWKSRecord,'Protocol',__DC__GetTWKSRecord__Protocol,nil);
RegisterIndexedProperty(TWKSRecord,'BitMap',1,False,__DC__GetTWKSRecord__BitMap,nil);
RegisterProperty(TWKSRecord,'ByteCount',__DC__GetTWKSRecord__ByteCount,nil);
end;

const __ConstNames0 : array[0..16] of string = (
'qtA'
,'qtNS'
,'qtMD'
,'qtMF'
,'qtName'
,'qtSOA'
,'qtMB'
,'qtMG'
,'qtMR'
,'qtNull'
,'qtWKS'
,'qtPTR'
,'qtHINFO'
,'qtMINFO'
,'qtMX'
,'qtTXT'
,'qtSTAR'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,qtA));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,qtNS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,qtMD));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,qtMF));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,qtName));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,qtSOA));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,qtMB));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,qtMG));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,qtMR));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,qtNull));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,qtWKS));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,qtPTR));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,qtHINFO));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,qtMINFO));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,qtMX));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,qtTXT));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,qtSTAR));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..15] of TClass = (
TARecord,
TCNRecord,
TDNSHeader,
THINFORecord,
TIdDNSResolver,
TMINFORecord,
TMXRecord,
TNAMERecord,
TNSRecord,
TPTRRecord,
TQueryResult,
TRDATARecord,
TResultRecord,
TSOARecord,
TTextRecord,
TWKSRecord
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
RegisterProc(TDNSHeader,'Create',mtConstructor,TypeInfo(_T0),NoParams,Addr(TDNSHeader.Create),cRegister);

RegRegisterMethod(TDNSHeader,'ClearByteCode',TypeInfo(_T1),NoParams,Addr(TDNSHeader.ClearByteCode));

RegRegisterMethod(TIdDNSResolver,'Resolve',TypeInfo(_T2),[
TypeInfo(String)],Addr(TIdDNSResolver.Resolve));

RegisterProc(TQueryResult,'Create',mtConstructor,TypeInfo(_T3),[
TypeInfo(TResultRecord)],Addr(TQueryResult.Create),cRegister);

RegRegisterMethod(TQueryResult,'Add',TypeInfo(_T4),[
TypeInfo(String),
TypeInfo(Integer),TypeInfo(TResultRecord)],Addr(TQueryResult.Add));

RegRegisterMethod(TQueryResult,'Clear',TypeInfo(_T5),NoParams,Addr(TQueryResult.Clear));

//RegRegisterMethod(TResultRecord,'Parse',TypeInfo(_T6),[TypeInfo(String),TypeInfo(Integer)], pointer(32));
RegRegisterMethod(TResultRecord,'Parse',TypeInfo(_T6),[TypeInfo(String),TypeInfo(Integer)],  getVMTProcAddr('TResultRecord','Parse',32));


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
