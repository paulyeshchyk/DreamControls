unit OPPIDEApplication_Unit;

interface

uses
  SysUtils, Classes, dcsystem, dcapp;

type
  TOPPIDEApplication = class(TIDEApplication)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Ascon OPP', [TOPPIDEApplication]);
end;

end.
