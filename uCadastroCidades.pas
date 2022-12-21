unit uCadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls,uCidades,uConsultaEstados;

type
  TCadastroCidades = class(TCadastro)
    lblCidades: TLabel;
    lblDDD: TLabel;
    lblCodEstado: TLabel;
    lblEstado: TLabel;
    edtCidade: TEdit;
    edtDDD: TEdit;
    edtCodEstado: TEdit;
    edtEstado: TEdit;
    btnPesquisar: TButton;
    procedure btnPesquisarClick(Sender: TObject);
  private
    umaCidade : Cidades;
    umaConsultaEstados : TConsultaEstados;
  public
    Procedure ConhecaObj(pObj:TObject;pCtrl:TObject);  Override;
    Procedure LimpaEdit;                               Override;
    Procedure CarregaEdit;                             Override;
    Procedure BloqueiaEdit;                            Override;
    Procedure DesbloqueiaEdit;                         Override;
    Procedure Salvar;                                  Override;
    Procedure Sair;                                    Override;
    procedure SetConsultaEstados(pObj: TObject);
  end;

var
  CadastroCidades: TCadastroCidades;

implementation

{$R *.dfm}

{ TCadastroCidades }

procedure TCadastroCidades.BloqueiaEdit;
begin
  inherited;
  edtCidade.Enabled := false;
  edtDDD.Enabled := false;
  edtCodEstado.Enabled := false;
  edtEstado.Enabled := false;
end;



procedure TCadastroCidades.btnPesquisarClick(Sender: TObject);
var aux : string;
begin
  inherited;
  umaConsultaEstados.ConhecaObj(umaCidade.GetoEstado,nil);
  aux := umaConsultaEstados.btnSair.Caption;
  umaConsultaEstados.btnSair.Caption := 'Selecionar';
  umaConsultaEstados.ShowModal;
  umaConsultaEstados.btnSair.Caption := aux;
end;

procedure TCadastroCidades.CarregaEdit;
begin
  inherited;
  edtCidade.Text := umaCidade.GetCidade;
  edtDDD.Text := umaCidade.GetDDD;
  edtCodEstado.Text := inttostr(umaCidade.getoEstado.GetCodigo);
  edtEstado.Text := umaCidade.getoEstado.GetEstado;

end;

procedure TCadastroCidades.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umaCidade := Cidades(pObj);
end;

procedure TCadastroCidades.DesbloqueiaEdit;
begin
  inherited;
  edtCidade.Enabled := true;
  edtDDD.Enabled := true;
  edtCodEstado.Enabled := true;
  edtEstado.Enabled := true;
end;

procedure TCadastroCidades.LimpaEdit;
begin
  inherited;
   edtCidade.Clear;
   edtDDD.Clear;
   edtCodEstado.Clear;
   edtEstado.Clear;
end;

procedure TCadastroCidades.Sair;
begin
  inherited;

end;

procedure TCadastroCidades.Salvar;
begin
  inherited;

end;

procedure TCadastroCidades.SetConsultaEstados(pObj: TObject);
begin

end;

end.
