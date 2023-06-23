{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IBXCONST_D2006;
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
  IBUtils,
  IBXConst;
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

const __ConstNames0 : array[0..133] of string = (
'IBX_Version'
,'SIBDatabaseEditor'
,'SIBTransactionEditor'
,'SDatabaseFilter'
,'SDisconnectDatabase'
,'SExecute'
,'SNoDataSet'
,'SSQLGenSelect'
,'SSQLNotGenerated'
,'SIBUpdateSQLEditor'
,'SIBDataSetEditor'
,'SSQLDataSetOpen'
,'SDefaultTransaction'
,'SUnknownError'
,'SIB60feature'
,'SNotSupported'
,'SNotPermitted'
,'SConnectionTimeout'
,'SCannotSetDatabase'
,'SCannotSetTransaction'
,'SOperationCancelled'
,'SDPBConstantNotSupported'
,'SDPBConstantUnknown'
,'SDatabaseClosed'
,'SDatabaseOpen'
,'SDatabaseNameMissing'
,'SNoDatabasesInTransaction'
,'SUpdateWrongDB'
,'SUpdateWrongTR'
,'SDatabaseNotAssigned'
,'SXSQLDAIndexOutOfRange'
,'SXSQLDANameDoesNotExist'
,'SEOF'
,'SBOF'
,'SDatasetOpen'
,'SDatasetClosed'
,'SUnknownSQLDataType'
,'SColumnIsNotNullable'
,'SBlobCannotBeRead'
,'SBlobCannotBeWritten'
,'SEmptyQuery'
,'SCannotOpenNonSQLSelect'
,'SNoFieldAccess'
,'SFieldReadOnly'
,'SFieldNotFound'
,'SNotEditing'
,'SCannotInsert'
,'SCannotPost'
,'SCannotUpdate'
,'SCannotDelete'
,'SCannotRefresh'
,'SBufferNotSet'
,'SCircularReference'
,'SSQLParseError'
,'SUserAbort'
,'SDataSetUniDirectional'
,'SCannotCreateSharedResource'
,'SWindowsAPIError'
,'SColumnListsDontMatch'
,'SColumnTypesDontMatch'
,'SCantEndSharedTransaction'
,'SFieldUnsupportedType'
,'SCircularDataLink'
,'SEmptySQLStatement'
,'SIsASelectStatement'
,'SRequiredParamNotSet'
,'SNoStoredProcName'
,'SIsAExecuteProcedure'
,'SUpdateFailed'
,'SNotCachedUpdates'
,'SNotLiveRequest'
,'SNoProvider'
,'SNoRecordsAffected'
,'SNoTableName'
,'SCannotCreatePrimaryIndex'
,'SCannotDropSystemIndex'
,'SInvalidCancellation'
,'SMaximumEvents'
,'SNoEventsRegistered'
,'SSQLDialectInvalid'
,'SSPBConstantNotSupported'
,'SSPBConstantUnknown'
,'SServiceActive'
,'SServiceInActive'
,'SServerNameMissing'
,'SQueryParamsError'
,'SStartParamsError'
,'SOutputParsingError'
,'SUseSpecificProcedures'
,'SSQLMonitorAlreadyPresent'
,'SCantPrintValue'
,'SEOFReached'
,'SEOFInComment'
,'SEOFInString'
,'SParamNameExpected'
,'SSuccess'
,'SDelphiException'
,'SNoOptionsSet'
,'SNoDestinationDirectory'
,'SNosourceDirectory'
,'SNoUninstallFile'
,'SOptionNeedsClient'
,'SOptionNeedsServer'
,'SInvalidOnErrorResult'
,'SInvalidOnStatusResult'
,'SEditSQL'
,'SDPBConstantUnknownEx'
,'SUnknownPlan'
,'SFieldSizeMismatch'
,'SEventAlreadyRegistered'
,'SIBServiceEditor'
,'SIBSuccessConnect'
,'SNoTimers'
,'SIB65feature'
,'SLoginPromptFailure'
,'SIBMemoryError'
,'SIBBrokerOpen'
,'SIBBrokerVersion'
,'SIBBrokerDatabase'
,'SIBBrokerUser'
,'SIBBrokerMinConnections'
,'SIBBrokerMaxConnections'
,'SIBBrokerGiveOut'
,'SIBBrokerUnavailable'
,'SIBBrokerExhausted'
,'SIBBrokerNilError'
,'SIBBrokerRelease'
,'SIBDatabaseINISection'
,'SIBDatabaseINISectionEmpty'
,'SIB70feature'
,'SIB71feature'
,'SIB75feature'
,'SIB751feature'
,'SNoVersionInfo'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,IBX_Version));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,SIBDatabaseEditor));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,SIBTransactionEditor));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,SDatabaseFilter));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,SDisconnectDatabase));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,SExecute));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,SNoDataSet));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,SSQLGenSelect));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,SSQLNotGenerated));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,SIBUpdateSQLEditor));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,SIBDataSetEditor));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,SSQLDataSetOpen));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,SDefaultTransaction));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,SUnknownError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,SIB60feature));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,SNotSupported));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,SNotPermitted));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,SConnectionTimeout));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,SCannotSetDatabase));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,SCannotSetTransaction));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,SOperationCancelled));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,SDPBConstantNotSupported));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,SDPBConstantUnknown));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,SDatabaseClosed));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,SDatabaseOpen));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,SDatabaseNameMissing));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,SNoDatabasesInTransaction));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[27] ,SUpdateWrongDB));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[28] ,SUpdateWrongTR));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[29] ,SDatabaseNotAssigned));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[30] ,SXSQLDAIndexOutOfRange));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[31] ,SXSQLDANameDoesNotExist));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[32] ,SEOF));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[33] ,SBOF));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[34] ,SDatasetOpen));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[35] ,SDatasetClosed));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[36] ,SUnknownSQLDataType));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[37] ,SColumnIsNotNullable));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[38] ,SBlobCannotBeRead));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[39] ,SBlobCannotBeWritten));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[40] ,SEmptyQuery));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[41] ,SCannotOpenNonSQLSelect));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[42] ,SNoFieldAccess));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[43] ,SFieldReadOnly));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[44] ,SFieldNotFound));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[45] ,SNotEditing));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[46] ,SCannotInsert));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[47] ,SCannotPost));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[48] ,SCannotUpdate));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[49] ,SCannotDelete));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[50] ,SCannotRefresh));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[51] ,SBufferNotSet));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[52] ,SCircularReference));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[53] ,SSQLParseError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[54] ,SUserAbort));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[55] ,SDataSetUniDirectional));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[56] ,SCannotCreateSharedResource));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[57] ,SWindowsAPIError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[58] ,SColumnListsDontMatch));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[59] ,SColumnTypesDontMatch));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[60] ,SCantEndSharedTransaction));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[61] ,SFieldUnsupportedType));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[62] ,SCircularDataLink));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[63] ,SEmptySQLStatement));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[64] ,SIsASelectStatement));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[65] ,SRequiredParamNotSet));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[66] ,SNoStoredProcName));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[67] ,SIsAExecuteProcedure));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[68] ,SUpdateFailed));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[69] ,SNotCachedUpdates));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[70] ,SNotLiveRequest));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[71] ,SNoProvider));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[72] ,SNoRecordsAffected));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[73] ,SNoTableName));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[74] ,SCannotCreatePrimaryIndex));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[75] ,SCannotDropSystemIndex));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[76] ,SInvalidCancellation));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[77] ,SMaximumEvents));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[78] ,SNoEventsRegistered));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[79] ,SSQLDialectInvalid));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[80] ,SSPBConstantNotSupported));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[81] ,SSPBConstantUnknown));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[82] ,SServiceActive));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[83] ,SServiceInActive));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[84] ,SServerNameMissing));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[85] ,SQueryParamsError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[86] ,SStartParamsError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[87] ,SOutputParsingError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[88] ,SUseSpecificProcedures));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[89] ,SSQLMonitorAlreadyPresent));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[90] ,SCantPrintValue));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[91] ,SEOFReached));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[92] ,SEOFInComment));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[93] ,SEOFInString));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[94] ,SParamNameExpected));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[95] ,SSuccess));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[96] ,SDelphiException));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[97] ,SNoOptionsSet));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[98] ,SNoDestinationDirectory));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[99] ,SNosourceDirectory));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[100] ,SNoUninstallFile));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[101] ,SOptionNeedsClient));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[102] ,SOptionNeedsServer));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[103] ,SInvalidOnErrorResult));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[104] ,SInvalidOnStatusResult));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[105] ,SEditSQL));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[106] ,SDPBConstantUnknownEx));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[107] ,SUnknownPlan));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[108] ,SFieldSizeMismatch));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[109] ,SEventAlreadyRegistered));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[110] ,SIBServiceEditor));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[111] ,SIBSuccessConnect));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[112] ,SNoTimers));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[113] ,SIB65feature));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[114] ,SLoginPromptFailure));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[115] ,SIBMemoryError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[116] ,SIBBrokerOpen));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[117] ,SIBBrokerVersion));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[118] ,SIBBrokerDatabase));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[119] ,SIBBrokerUser));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[120] ,SIBBrokerMinConnections));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[121] ,SIBBrokerMaxConnections));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[122] ,SIBBrokerGiveOut));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[123] ,SIBBrokerUnavailable));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[124] ,SIBBrokerExhausted));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[125] ,SIBBrokerNilError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[126] ,SIBBrokerRelease));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[127] ,SIBDatabaseINISection));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[128] ,SIBDatabaseINISectionEmpty));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[129] ,SIB70feature));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[130] ,SIB71feature));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[131] ,SIB75feature));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[132] ,SIB751feature));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[133] ,SNoVersionInfo));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

procedure __RegisterClasses;
begin
end;

procedure __UnRegisterClasses;
begin
end;

procedure _mreg_0;
begin
end;
initialization
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
