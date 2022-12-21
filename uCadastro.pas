unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPai, Vcl.StdCtrls;

type
  TCadastro = class(TFrmPai)
    btnSalvar: TButton;
    btnSair: TButton;
    edtCodigo: TEdit;
    edtDatCad: TEdit;
    lblDatUltAlt: TLabel;
    lblDatCad: TLabel;
    lblCodigo: TLabel;
    edtDatUltAlt: TEdit;
    procedure btnSairClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure ConhecaObj(pObj:TObject;pCtrl:TObject);  Override;
    Procedure LimpaEdit;                               Virtual;
    Procedure CarregaEdit;                             Virtual;
    Procedure BloqueiaEdit;                            Virtual;
    Procedure DesbloqueiaEdit;                         Virtual;
    Procedure Salvar;                                  Virtual;
    Procedure Sair;                                    Virtual;
  end;

var
  Cadastro: TCadastro;

implementation

{$R *.dfm}

{ TCadastro }

procedure TCadastro.BloqueiaEdit;
begin

end;

procedure TCadastro.btnSairClick(Sender: TObject);
begin
  inherited;
    Sair;
end;

procedure TCadastro.btnSalvarClick(Sender: TObject);
begin
  inherited;
    Salvar;
end;

procedure TCadastro.CarregaEdit;
begin

end;

procedure TCadastro.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;

end;

procedure TCadastro.DesbloqueiaEdit;
begin

end;

procedure TCadastro.LimpaEdit;
begin

end;

procedure TCadastro.Sair;
begin
  Close;
end;

procedure TCadastro.Salvar;
begin

end;

end.
