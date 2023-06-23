{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit SITECONST_D2006;
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
  SiteConst;
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

const __ConstNames0 : array[0..87] of string = (
'sFieldRequiresAValue'
,'sFieldDoesNotAllowMultipleValues'
,'sFieldDoesNotAllowMultipleFiles'
,'sFieldRequiresAFile'
,'sFieldModificationNotPermitted'
,'sActionExecutionNotPermitted'
,'sFieldViewNotPermitted'
,'sAdapterModificationNotPermitted'
,'sFileUploadNotSupported'
,'sNoLoginPage'
,'sPageNotFound'
,'sPageContentNotProvided'
,'sImageNotProvided'
,'sUnknownAdapterMode'
,'sNilAdapterDataSet'
,'sAdapterRowNotFound'
,'sFieldChangedByAnotherUser'
,'sAdapterFieldNotFound'
,'sDataSetPropertyIsNil'
,'sDataSetUnknownKeyFields'
,'sDataSetNotActive'
,'sValueFieldIsBlank'
,'SNoXMLData'
,'SNoXMLDocument'
,'sAddAdapterData'
,'sAddAllAdapterData'
,'sAddAdapterDataDlgCaption'
,'sAddAdapterActions'
,'sAddAllAdapterActions'
,'sAddAdapterActionsDlgCaption'
,'sAdapterActionsPrefix'
,'sAddCommands'
,'sAddAllCommands'
,'sAddCommandsDlgCaption'
,'sAddColumns'
,'sAddAllColumns'
,'sAddColumnsDlgCaption'
,'sAddFieldItems'
,'sAddAllFieldItems'
,'sAddFieldItemsDlgCaption'
,'sAdapterPropertyIsNil'
,'sAdapterFieldNameIsBlank'
,'sCantFindAdapterField'
,'sAdapterActionNameIsBlank'
,'sCantFindAdapterAction'
,'sDisplayComponentPropertyIsNil'
,'sNoHandler'
,'sBlankPassword'
,'sBlankUserName'
,'sAdapterRequestNotHandled'
,'sDispatchBlankPageName'
,'sPageAccessDenied'
,'sPageDoesNotSupportRedirect'
,'sCantFindIncludePage'
,'sInclusionNotSupported'
,'sFileExpected'
,'sWebUserName'
,'sWebUserPassword'
,'sWebUserAccessRights'
,'sUserIDNotFound'
,'sMissingPassword'
,'sUnknownUserName'
,'sMissingUserName'
,'sCannotCreateScriptEngine'
,'sCannotInitializeScriptEngine'
,'sScriptEngineNotFound'
,'sObjectParameterExpected'
,'sUnexpectedParameterType'
,'sUnexpectedResultType'
,'sDuplicatePrototypeName'
,'sBooleanParameterExpected'
,'sDoubleParameterExpected'
,'sUnexpectedScriptError'
,'sScriptErrorTemplate'
,'sMaximumSessionsExceeded'
,'sVariableNotFound'
,'sComponentDoesNotSupportScripting'
,'sClassDoesNotSupportScripting'
,'sParameterExpected'
,'sStringParameterExpected'
,'sIncDblQuoteError'
,'sIncEqualsError'
,'sIncTypeError'
,'sUnknownImageType'
,'sComponentNotFound'
,'sCountFromComponentsNotSupported'
,'sInterfaceCompRefExpected'
,'sErrorsObjectNeedsIntf'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,sFieldRequiresAValue));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,sFieldDoesNotAllowMultipleValues));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,sFieldDoesNotAllowMultipleFiles));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,sFieldRequiresAFile));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,sFieldModificationNotPermitted));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,sActionExecutionNotPermitted));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,sFieldViewNotPermitted));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,sAdapterModificationNotPermitted));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,sFileUploadNotSupported));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,sNoLoginPage));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,sPageNotFound));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[11] ,sPageContentNotProvided));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[12] ,sImageNotProvided));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[13] ,sUnknownAdapterMode));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[14] ,sNilAdapterDataSet));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[15] ,sAdapterRowNotFound));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[16] ,sFieldChangedByAnotherUser));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[17] ,sAdapterFieldNotFound));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[18] ,sDataSetPropertyIsNil));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[19] ,sDataSetUnknownKeyFields));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[20] ,sDataSetNotActive));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[21] ,sValueFieldIsBlank));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[22] ,SNoXMLData));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[23] ,SNoXMLDocument));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[24] ,sAddAdapterData));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[25] ,sAddAllAdapterData));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[26] ,sAddAdapterDataDlgCaption));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[27] ,sAddAdapterActions));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[28] ,sAddAllAdapterActions));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[29] ,sAddAdapterActionsDlgCaption));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[30] ,sAdapterActionsPrefix));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[31] ,sAddCommands));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[32] ,sAddAllCommands));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[33] ,sAddCommandsDlgCaption));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[34] ,sAddColumns));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[35] ,sAddAllColumns));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[36] ,sAddColumnsDlgCaption));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[37] ,sAddFieldItems));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[38] ,sAddAllFieldItems));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[39] ,sAddFieldItemsDlgCaption));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[40] ,sAdapterPropertyIsNil));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[41] ,sAdapterFieldNameIsBlank));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[42] ,sCantFindAdapterField));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[43] ,sAdapterActionNameIsBlank));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[44] ,sCantFindAdapterAction));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[45] ,sDisplayComponentPropertyIsNil));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[46] ,sNoHandler));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[47] ,sBlankPassword));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[48] ,sBlankUserName));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[49] ,sAdapterRequestNotHandled));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[50] ,sDispatchBlankPageName));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[51] ,sPageAccessDenied));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[52] ,sPageDoesNotSupportRedirect));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[53] ,sCantFindIncludePage));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[54] ,sInclusionNotSupported));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[55] ,sFileExpected));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[56] ,sWebUserName));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[57] ,sWebUserPassword));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[58] ,sWebUserAccessRights));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[59] ,sUserIDNotFound));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[60] ,sMissingPassword));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[61] ,sUnknownUserName));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[62] ,sMissingUserName));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[63] ,sCannotCreateScriptEngine));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[64] ,sCannotInitializeScriptEngine));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[65] ,sScriptEngineNotFound));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[66] ,sObjectParameterExpected));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[67] ,sUnexpectedParameterType));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[68] ,sUnexpectedResultType));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[69] ,sDuplicatePrototypeName));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[70] ,sBooleanParameterExpected));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[71] ,sDoubleParameterExpected));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[72] ,sUnexpectedScriptError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[73] ,sScriptErrorTemplate));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[74] ,sMaximumSessionsExceeded));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[75] ,sVariableNotFound));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[76] ,sComponentDoesNotSupportScripting));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[77] ,sClassDoesNotSupportScripting));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[78] ,sParameterExpected));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[79] ,sStringParameterExpected));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[80] ,sIncDblQuoteError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[81] ,sIncEqualsError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[82] ,sIncTypeError));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[83] ,sUnknownImageType));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[84] ,sComponentNotFound));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[85] ,sCountFromComponentsNotSupported));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[86] ,sInterfaceCompRefExpected));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[87] ,sErrorsObjectNeedsIntf));
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
