unit OPP.Guide.Scripter.DC;

interface

uses
  OPP.Guide.Scripter,
  System.Classes, WinAPI.ActiveX;

type

  TOPPGuideScripterDC = class(TInterfacedObject, IOPPGuideScripter)
  private
    procedure scripterror(Sender: TObject; const ExcepInfo: TExcepInfo; CharNo, LineNo: integer; var Handled: boolean);
  public
    function RunScript(AStrings: TStrings): Variant; overload;
    function RunScript(AScriptText: String): Variant; overload;
    function RunScript(AStream: TMemoryStream): Variant; overload;
  end;

implementation

uses

  System.SysUtils,
  OPP.Help.Log,
  OPP.Guide.Scripter.DC.Init;

{ TOPPGuideScripter }

function TOPPGuideScripterDC.RunScript(AScriptText: String): Variant;
//var
//  fDCScripter: TDCScripter;
begin
//  fDCScripter := TDCScripter.Create(nil);
//  try
//    fDCScripter.Language := 'DelphiScript';
//    fDCScripter.UseModule := true;
//    fDCScripter.UseExceptions := true;
//    fDCScripter.FilerID := 'DB';
//    fDCScripter.Project := THandle(fDCScripter);
//    fDCScripter.Script.Text := AScriptText;
//    fDCScripter.OnError := scripterror;
//    result := fDCScripter.DispatchMethod('Execute', [998]);
//  finally
//    fDCScripter.Free;
//  end;

end;

function TOPPGuideScripterDC.RunScript(AStrings: TStrings): Variant;
begin

end;

procedure TOPPGuideScripterDC.scripterror(Sender: TObject; const ExcepInfo: TExcepInfo; CharNo, LineNo: integer; var Handled: boolean);
begin

  Handled := true;
end;

function TOPPGuideScripterDC.RunScript(AStream: TMemoryStream): Variant;
//var
//  fDCScripter: TDCScripter;
begin
//  fDCScripter := TDCScripter.Create(nil);
//  try
//    fDCScripter.Language := 'DelphiScript';
//    fDCScripter.UseModule := true;
//    fDCScripter.UseExceptions := true;
//    fDCScripter.Project := THandle(fDCScripter);
//
//    AStream.Position := 0;
//    fDCScripter.Script.LoadFromStream(AStream);
//    try
//      result := fDCScripter.CallNoParamsMethod('Execute');
//    except
//      on E: Exception do
//      begin
//        eventLogger.Error(E, 'scripter')
//      end;
//    end;
//  finally
//    fDCScripter.Free;
//  end;
end;

end.
