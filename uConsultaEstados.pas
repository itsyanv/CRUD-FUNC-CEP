unit uConsultaEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls,uCadastroEstados,uEstados;

type
  TConsultaEstados = class(TConsulta)
  private
    umEstado : Estados;
    umCadastroEstados : TCadastroEstados;
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
  ConsultaEstados: TConsultaEstados;

implementation

{$R *.dfm}

{ TConsultaEstados }

procedure TConsultaEstados.Alterar;
begin
  inherited;
  umCadastroEstados.conhecaObj(umEstado, nil);
  umCadastroEstados.CarregaEdit;
  umCadastroEstados.ShowModal;
end;

procedure TConsultaEstados.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umEstado := Estados(pObj);
end;

procedure TConsultaEstados.Excluir;
begin
  inherited;
  umCadastroEstados.conhecaObj(umEstado, nil);
  umCadastroEstados.CarregaEdit;
  umCadastroEstados.BloqueiaEdit;
  umCadastroEstados.ShowModal;
  umCadastroEstados.DesbloqueiaEdit;
end;

procedure TConsultaEstados.Incluir;
begin
  inherited;
  umCadastroEstados.conhecaObj(umEstado, nil);
  umCadastroEstados.LimpaEdit;
  umCadastroEstados.ShowModal;
end;

procedure TConsultaEstados.Pesquisar;
begin
  inherited;

end;

procedure TConsultaEstados.Sair;
begin
  inherited;
  close;
end;

procedure TConsultaEstados.SetCadastro(pObj: TObject);
begin
  inherited;
  umCadastroEstados := TCadastroEstados(pObj);
end;

end.
