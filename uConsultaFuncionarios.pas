unit uConsultaFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls,uCadastroFuncionarios,uFuncionarios;

type
  TConsultaFuncionarios = class(TConsulta)
  private
    umCadastroFuncionarios : TCadastroFuncionarios;
    umFuncionario : Funcionarios;
  public
    Procedure ConhecaObj(pObj:TObject;pCtrl:TObject);  Override;
    Procedure Incluir;                                 Override;
    Procedure Alterar;                                 Override;
    Procedure Excluir;                                 Override;
    Procedure Pesquisar;                               Override;
    Procedure Sair;                                    Override;
    Procedure SetCadastro(pObj : TObject);             Override;
  end;

var
  ConsultaFuncionarios: TConsultaFuncionarios;

implementation

{$R *.dfm}

{ TConsultaFuncionarios }

procedure TConsultaFuncionarios.Alterar;
begin
  inherited;
  umCadastroFuncionarios.conhecaObj(umFuncionario, nil);
  umCadastroFuncionarios.CarregaEdit;
  umCadastroFuncionarios.ShowModal;
end;

procedure TConsultaFuncionarios.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umFuncionario := Funcionarios(pObj);
end;

procedure TConsultaFuncionarios.Excluir;
begin
  inherited;
  umCadastroFuncionarios.conhecaObj(umFuncionario, nil);
  umCadastroFuncionarios.CarregaEdit;
  umCadastroFuncionarios.BloqueiaEdit;
  umCadastroFuncionarios.ShowModal;
  umCadastroFuncionarios.DesbloqueiaEdit;
end;

procedure TConsultaFuncionarios.Incluir;
begin
  inherited;
  umCadastroFuncionarios.conhecaObj(umFuncionario, nil);
  umCadastroFuncionarios.LimpaEdit;
  umCadastroFuncionarios.ShowModal;
end;

procedure TConsultaFuncionarios.Pesquisar;
begin
  inherited;

end;

procedure TConsultaFuncionarios.Sair;
begin
  inherited;

end;

procedure TConsultaFuncionarios.SetCadastro(pObj: TObject);
begin
  inherited;
  umCadastroFuncionarios := TCadastroFuncionarios(pObj);
end;

end.
