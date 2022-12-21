unit uCadastroEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, uConsultaPaises, uEstados;

type
  TCadastroEstados = class(TCadastro)
    edtEstado: TEdit;
    edtUF: TEdit;
    edtPais: TEdit;
    edtCodPais: TEdit;
    lblUF: TLabel;
    lblCodPais: TLabel;
    lblPais: TLabel;
    lblEstado: TLabel;
    btnPesquisar: TButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);

  private
    umEstado : Estados;
    umaConsultaPaises : TConsultaPaises;
  public
    Procedure ConhecaObj(pObj:TObject;pCtrl:TObject);  Override;
    Procedure LimpaEdit;                               Override;
    Procedure CarregaEdit;                             Override;
    Procedure BloqueiaEdit;                            Override;
    Procedure DesbloqueiaEdit;                         Override;
    Procedure Salvar;                                  Override;
    Procedure Sair;                                    Override;
    procedure SetConsultaPaises(pObj: TObject);
  end;

var
  CadastroEstados: TCadastroEstados;

implementation

{$R *.dfm}


{ TCadastro1 }

procedure TCadastroEstados.BloqueiaEdit;
begin
  inherited;
  edtEstado.Enabled := false;
  edtUF.Enabled := false;
  edtCodPais.Enabled := false;
  edtPais.Enabled := false;
end;

procedure TCadastroEstados.btnPesquisarClick(Sender: TObject);
var aux : string;
begin
  inherited;
  umaConsultaPaises.ConhecaObj(umEstado.GetOPais,nil);
  aux := umaConsultaPaises.btnSair.Caption;
  umaConsultaPaises.btnSair.Caption := 'Selecionar';
  umaConsultaPaises.ShowModal;
  umaConsultaPaises.btnSair.Caption := aux;
end;

procedure TCadastroEstados.btnSalvarClick(Sender: TObject);
var aux :string;
begin
  inherited;
  umaConsultaPaises.ConhecaObj(umEstado.GetOPais,nil);
  aux := umaConsultaPaises.btnSair.Caption;
  umaConsultaPaises.btnSair.Caption := 'Selecionar';
  umaConsultaPaises.ShowModal;
  umaConsultaPaises.btnSair.Caption := aux;
end;

procedure TCadastroEstados.CarregaEdit;
begin
  inherited;
  edtEstado.Text := umEstado.GetEstado;
  edtUF.Text := umEstado.GetUF;
  edtCodPais.Text := inttostr(umEstado.getoPais.GetCodigo);
  edtPais.Text := umEstado.getoPais.GetPais;
end;

procedure TCadastroEstados.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umEstado := Estados(pObj);
end;

procedure TCadastroEstados.DesbloqueiaEdit;
begin
  inherited;
  edtEstado.Enabled := true;
  edtUF.Enabled := true;
  edtCodPais.Enabled := true;
  edtPais.Enabled := true;
end;

procedure TCadastroEstados.LimpaEdit;
begin
  inherited;
  edtEstado.Clear;
  edtUF.Clear;
  edtCodPAis.Clear;
  edtPais.Clear;
end;
procedure TCadastroEstados.Sair;
begin
  inherited;
    Close;
end;

procedure TCadastroEstados.Salvar;
begin
  inherited;

end;

procedure TCadastroEstados.SetConsultaPaises(pObj: TObject);
begin

end;

end.
