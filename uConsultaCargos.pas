unit uConsultaCargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls,uCargos,uCadastroCargos;

type
  TConsultaCargos = class(TConsulta)
  private
    umCadastroCargos : TCadastroCargos;
    umCargo : Cargos;
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
  ConsultaCargo: TConsultaCargos;

implementation

{$R *.dfm}

{ TConsultaCargo }

procedure TConsultaCargos.Alterar;
begin
  inherited;
  umCadastroCargos.conhecaObj(umCargo, nil);
  umCadastroCargos.CarregaEdit;
  umCadastroCargos.ShowModal;
end;


procedure TConsultaCargos.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umCargo := Cargos(pObj);
end;

procedure TConsultaCargos.Excluir;
begin
  inherited;
  umCadastroCargos.conhecaObj(umCargo, nil);
  umCadastroCargos.CarregaEdit;
  umCadastroCargos.BloqueiaEdit;
  umCadastroCargos.ShowModal;
  umCadastroCargos.DesbloqueiaEdit;
end;

procedure TConsultaCargos.Incluir;
begin
  inherited;
  umCadastroCargos.conhecaObj(umCargo, nil);
  umCadastroCargos.LimpaEdit;
  umCadastroCargos.ShowModal;
end;

procedure TConsultaCargos.Pesquisar;
begin
  inherited;

end;

procedure TConsultaCargos.Sair;
begin
  inherited;
  close;
end;

procedure TConsultaCargos.SetCadastro(pObj: TObject);
begin
  inherited;
  umCadastroCargos := TCadastroCargos(pObj);
end;

end.
