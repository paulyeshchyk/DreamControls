{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit WSDLBIND_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  classes,
  dcscript,
  dcsystem,
  dcdreamlib,
  xmldom,
  XMLDoc,
  XMLIntf,
  XMLSchema,
  WSDLBind;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..15] of string = (
'SBinding'
,'SDefinitions'
,'SFault'
,'SImport'
,'SInput'
,'SLocation'
,'SMessage'
,'SNamespace'
,'SOperation'
,'SOutput'
,'SPart'
,'SPort'
,'SPortType'
,'SService'
,'SType'
,'STypes'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,SBinding));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,SDefinitions));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,SFault));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,SImport));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,SInput));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,SLocation));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,SMessage));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,SNamespace));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,SOperation));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,SOutput));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,SPart));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,SPort));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,SPortType));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,SService));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,SType));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,STypes));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..27] of TClass = (
TBinding,
TBindingOperation,
TBindingOperations,
TBindings,
TDefinition,
TDocumentation,
TDocumentationCollection,
TDocumented,
TFault,
TFaults,
TImport,
TImports,
TMessage,
TMessages,
TOperation,
TOperations,
TParam,
TPart,
TParts,
TPort,
TPorts,
TPortType,
TPortTypes,
TService,
TServices,
TTypes,
TWSDLDocument,
TXMLSchemaDefs
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

procedure _mreg_0;
begin
end;
initialization
_mreg_0;
{RegisterProc(nil,'GetDefinition',mtProc,TypeInfo(_T0),[
TypeInfo(TXMLDocument),TypeInfo(IDefinition)],Addr(GetDefinition),cRegister)}

{RegisterProc(nil,'LoadWSDLDoc',mtProc,TypeInfo(_T1),[
TypeInfo(WideString),TypeInfo(IWSDLDocument)],Addr(LoadWSDLDoc),cRegister)}

{RegisterProc(nil,'NewWSDLDoc',mtProc,TypeInfo(_T2),[TypeInfo(IWSDLDocument)],Addr(NewWSDLDoc),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
