unit OPPNewObject_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TOPPNewObject_Form = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    ENaim: TEdit;
    ERus_Naim: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Is_Task: TCheckBox;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OPPNewObject_Form: TOPPNewObject_Form;

implementation

{$R *.dfm}

procedure TOPPNewObject_Form.Button2Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
