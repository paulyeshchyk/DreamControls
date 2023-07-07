unit OPP.Guide.Scripter.DC;

interface

uses
  System.Classes,
  WinAPI.ActiveX,
  OPP.Guide.Scripter;

type

  TOPPGuideScripterDC = class(TInterfacedObject, IOPPGuideScripter)
  private
    procedure scripterror(Sender: TObject; const ExcepInfo: TExcepInfo; CharNo, LineNo: integer; var Handled: boolean);
  public
    function RunScript(AStrings: TStrings): Variant; overload;
    function RunScript(AScriptText: String): Variant; overload; deprecated;
    function RunScript(AStream: TMemoryStream): Variant; overload;
    function CompileScript(AStream: TMemoryStream): Variant;
  end;

implementation

uses

  OPP_Guide_API_Context,

  System.Variants,
  System.SysUtils,
  OPP.Help.Log,

  guideimp,
  impreg,
  dcgen, dcconfig, dcreg,
  dcscript, dcPascal;

{ TOPPGuideScripter }

function TOPPGuideScripterDC.RunScript(AScriptText: String): Variant;
var
  fDCScripter: TDCScripter;
  errLine, errChar: integer;
  fStream: TMemoryStream;
begin

  fStream := TMemoryStream.Create;
  try
    fStream.Write(PChar(AScriptText)^, Length(AScriptText));
    self.RunScript(fStream);
  finally
    fStream.Free;
  end;
end;

function TOPPGuideScripterDC.RunScript(AStrings: TStrings): Variant;
begin

end;

procedure TOPPGuideScripterDC.scripterror(Sender: TObject; const ExcepInfo: TExcepInfo; CharNo, LineNo: integer; var Handled: boolean);
begin
  Handled := true;
end;

function TOPPGuideScripterDC.CompileScript(AStream: TMemoryStream): Variant;
var
  fDCScripter: TDCScripter;
  errLine, errChar: integer;
  fContext: TOPPGuideAPIContext;
begin
  fDCScripter := TDCScripter.Create(nil);
  try
    fDCScripter.Language := 'DelphiScript';
    fDCScripter.UseModule := true;
    fDCScripter.UseExceptions := true;
    fDCScripter.Project := THandle(fDCScripter);

    AStream.Position := 0;
    fDCScripter.Script.LoadFromStream(AStream);
    try
      if fDCScripter.CheckSyntaxEx(errLine, errChar, false) then
      begin
        result := Null;
      end else begin
        result := Format('Syntax error at: line %d, char %d', [errLine, errChar]);
      end;
    except
      on E: Exception do
      begin
        result := E.message;
        eventLogger.Error(E, 'DC')
      end;
    end;
  finally
    fDCScripter.Free;
  end;
end;

function TOPPGuideScripterDC.RunScript(AStream: TMemoryStream): Variant;
var
  fDCScripter: TDCScripter;
  errLine, errChar: integer;
  fContext: TOPPGuideAPIContext;
begin
  fDCScripter := TDCScripter.Create(nil);
  try
    fDCScripter.Language := 'DelphiScript';
    fDCScripter.UseModule := true;
    fDCScripter.UseExceptions := true;
    fDCScripter.Project := THandle(fDCScripter);

    AStream.Position := 0;
    fDCScripter.Script.LoadFromStream(AStream);
    try
      if fDCScripter.CheckSyntaxEx(errLine, errChar, false) then
      begin
        result := fDCScripter.DispatchMethod('Execute', [0]);
        eventLogger.Flow(Format('Execution result', [result]), 'DC');
      end else begin
        result := Format('Syntax error at: line %d, char %d', [errLine, errChar]);
        eventLogger.Error(result, 'DC');
      end;
    except
      on E: Exception do
      begin
        result := E.message;
        eventLogger.Error(E, 'DC')
      end;
    end;
  finally
    fDCScripter.Free;
  end;
end;

end.
