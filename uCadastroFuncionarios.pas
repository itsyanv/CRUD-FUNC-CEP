unit uCadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls,uConsultaCidades,uConsultaCargos,uCargos,uCidades,uFuncionarios;

type
  TCadastroFuncionarios = class(TCadastro)
    lblFuncionario: TLabel;
    lblEndereco: TLabel;
    lblComplemento: TLabel;
    lblCargo: TLabel;
    lblCodCidade: TLabel;
    lblBairro: TLabel;
    lblDataNasc: TLabel;
    lblCidade: TLabel;
    edtFuncionario: TEdit;
    edtDataNasc: TEdit;
    edtEndereco: TEdit;
    edtComplemento: TEdit;
    edtValCNH: TEdit;
    edtCNH: TEdit;
    edtCodCidade: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtCargo: TEdit;
    lblValCNH: TLabel;
    lblCNH: TLabel;
    btnPesquisaCidades: TButton;
    btnPesquisaCargo: TButton;
    procedure btnPesquisaCidadesClick(Sender: TObject);
    procedure btnPesquisaCargoClick(Sender: TObject);
  private
    umFuncionario : Funcionarios;
    umaConsultaCargos : TConsultaCargos;
    umaConsultaCidades : TConsultaCidades;
    umaCidade : Cidades;
    umCargo : Cargos;
  public
    Procedure ConhecaObj(pObj:TObject;pCtrl:TObject);  Override;
    Procedure LimpaEdit;                               Override;
    Procedure CarregaEdit;                             Override;
    Procedure BloqueiaEdit;                            Override;
    Procedure DesbloqueiaEdit;                         Override;
    Procedure Salvar;                                  Override;
    Procedure Sair;                                    Override;
    procedure setConsultaCidades(pObj: TObject);
    procedure setConsultaCargos(pObj : TObject);
  end;

var
  CadastroFuncionarios: TCadastroFuncionarios;

implementation

{$R *.dfm}

{ TCadastro1 }

procedure TCadastroFuncionarios.BloqueiaEdit;
begin
  inherited;
  edtFuncionario.Enabled := false;
  edtDataNasc.Enabled    := false;
  edtEndereco.Enabled    := false;
  edtComplemento.Enabled := false;
  edtBairro.Enabled      := false;
  edtCodCidade.Enabled   := false;
  edtCidade.Enabled      := false;
  edtCargo.Enabled       := false;
  edtCNH.Enabled         := false;
  edtValCNH.Enabled      := false;
end;



procedure TCadastroFuncionarios.CarregaEdit;
begin
  inherited;
  edtFuncionario.Text := umFuncionario.GetFuncionario;
  edtDataNasc.Text := datetimetostr(umFuncionario.GetDataNasc);
  edtEndereco.Text := umFuncionario.getEndereco;
  edtComplemento.Text := umFuncionario.GetComplemento;
  edtBairro.Text := umFuncionario.GetBairro;
  edtCodCidade.Text := inttostr(umFuncionario.getaCidade.GetCodigo);
  edtCidade.Text := umFuncionario.getaCidade.GetCidade;
  edtCargo.Text := umFuncionario.getoCargo.GetCargo;
  edtCNH.Text := umFuncionario.GetCNH;
  edtValCNH.Text := datetimetostr(umFuncionario.GetDataValCNH);
end;

procedure TCadastroFuncionarios.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umFuncionario := Funcionarios(pObj);
end;

procedure TCadastroFuncionarios.DesbloqueiaEdit;
begin
  inherited;
  edtFuncionario.Enabled := true;
  edtDataNasc.Enabled    := true;
  edtEndereco.Enabled    := true;
  edtComplemento.Enabled := true;
  edtBairro.Enabled      := true;
  edtCodCidade.Enabled   := true;
  edtCidade.Enabled      := true;
  edtCargo.Enabled       := true;
  edtCNH.Enabled         := true;
  edtValCNH.Enabled      := true;
end;

procedure TCadastroFuncionarios.LimpaEdit;
begin
  inherited;
  edtFuncionario.Clear;
  edtDataNasc.Clear;
  edtEndereco.Clear;
  edtComplemento.Clear;
  edtBairro.Clear;
  edtCodCidade.Clear;
  edtCidade.Clear;
  edtCargo.Clear;
  edtCNH.Clear;
  edtValCNH.Clear;
end;




procedure TCadastroFuncionarios.btnPesquisaCargoClick(Sender: TObject);
var aux : string;
begin
  inherited;
  umaConsultaCargos.ConhecaObj(umFuncionario.getoCargo,nil);
  aux := umaConsultaCargos.btnSair.Caption;
  umaConsultaCargos.btnSair.Caption := 'Selecionar';
  umaConsultaCargos.ShowModal;
  umaConsultaCargos.btnSair.Caption := aux;
end;

procedure TCadastroFuncionarios.btnPesquisaCidadesClick(Sender: TObject);
var aux : string;
begin
  inherited;
  umaConsultaCidades.ConhecaObj(umFuncionario.getaCidade,nil);
  aux := umaConsultaCidades.btnSair.Caption;
  umaConsultaCidades.btnSair.Caption := 'Selecionar';
  umaConsultaCidades.ShowModal;
  umaConsultaCidades.btnSair.Caption := aux;
end;

procedure TCadastroFuncionarios.Sair;
begin
  inherited;

end;

procedure TCadastroFuncionarios.Salvar;
begin
  inherited;

end;

procedure TCadastroFuncionarios.setConsultaCargos(pObj: TObject);
begin

end;

procedure TCadastroFuncionarios.setConsultaCidades(pObj: TObject);
begin

end;

end.
