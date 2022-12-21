unit uConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TConsulta = class(TFrmPai)
    edtChave: TEdit;
    btnPesquisar: TButton;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnSair: TButton;
    DBGrid1: TDBGrid;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure ConhecaObj(pObj:TObject;pCtrl:TObject);  Override;
    Procedure Incluir;                                 Virtual;
    Procedure Alterar;                                 Virtual;
    Procedure Excluir;                                 Virtual;
    Procedure Pesquisar;                               Virtual;
    Procedure Sair;                                    Virtual;
    Procedure SetCadastro(pObj : TObject);             Virtual; Abstract;
  end;

var
  Consulta: TConsulta;

implementation

{$R *.dfm}

procedure TConsulta.Alterar;
begin

end;

procedure TConsulta.btnAlterarClick(Sender: TObject);
begin
  inherited;
    Alterar;
end;

procedure TConsulta.btnExcluirClick(Sender: TObject);
begin
  inherited;
    Excluir;
end;

procedure TConsulta.btnIncluirClick(Sender: TObject);
begin
  inherited;
    Incluir;
end;

procedure TConsulta.btnPesquisarClick(Sender: TObject);
begin
  inherited;
    Pesquisar;
end;

procedure TConsulta.btnSairClick(Sender: TObject);
begin
  inherited;
    Sair;
end;

procedure TConsulta.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;

end;

procedure TConsulta.Excluir;
begin

end;

procedure TConsulta.Incluir;
begin

end;

procedure TConsulta.Pesquisar;
begin

end;

procedure TConsulta.Sair;
begin
    Close;
end;

end.
