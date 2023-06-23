program dreamImportFix_XE;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {fmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
