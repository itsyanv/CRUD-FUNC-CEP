unit uConsultaPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls,uCadastroPaises,uPaises,uDM;

type
  TConsultaPaises = class(TConsulta)
  private
    umPais : Paises;
    umCadastroPaises : TCadastroPaises;
    aDM : TDM;
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
  ConsultaPaises: TConsultaPaises;

implementation

{$R *.dfm}

{ TConsulta1 }

procedure TConsultaPaises.Alterar;
begin
  inherited;
  umCadastroPaises.conhecaObj(umPais, nil);
  umCadastroPaises.CarregaEdit;
  umCadastroPaises.ShowModal;
end;

procedure TConsultaPaises.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umPais := paises(pObj);
end;

procedure TConsultaPaises.Excluir;
begin
  inherited;
  umCadastroPaises.conhecaObj(umPais, nil);
  umCadastroPaises.CarregaEdit;
  umCadastroPaises.BloqueiaEdit;
  umCadastroPaises.ShowModal;
  umCadastroPaises.DesbloqueiaEdit;
end;

procedure TConsultaPaises.Incluir;
begin
  inherited;
  umCadastroPaises.conhecaObj(umPais, nil);
  umCadastroPaises.LimpaEdit;
  umCadastroPaises.ShowModal;
end;

procedure TConsultaPaises.Pesquisar;
begin
  inherited;

end;

procedure TConsultaPaises.Sair;
begin
  inherited;
  close;
end;

procedure TConsultaPaises.SetCadastro(pObj: TObject);
begin
  inherited;
  umCadastroPaises := TCadastroPaises(pObj);
end;
end.
