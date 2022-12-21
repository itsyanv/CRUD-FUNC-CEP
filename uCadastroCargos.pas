unit uCadastroCargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, uCargos;

type
  TCadastroCargos = class(TCadastro)
    edtCargo: TEdit;
    edtCNH: TEdit;
    lblCargo: TLabel;
    lblCNH: TLabel;
  private
    umCargo : Cargos;
  public
    Procedure ConhecaObj(pObj:TObject;pCtrl:TObject);  Override;
    Procedure LimpaEdit;                               Override;
    Procedure CarregaEdit;                             Override;
    Procedure BloqueiaEdit;                            Override;
    Procedure DesbloqueiaEdit;                         Override;
    Procedure Salvar;                                  Override;
    Procedure Sair;                                    Override;
  end;

var
  CadastroCargos: TCadastroCargos;

implementation

{$R *.dfm}

{ TCadastro1 }

procedure TCadastroCargos.BloqueiaEdit;
begin
  inherited;
  edtCNH.Enabled := false;
  edtCargo.Enabled := false;

end;

procedure TCadastroCargos.CarregaEdit;
begin
  inherited;
  edtCodigo.Text := inttostr(umCargo.GetCodigo);
  edtCargo.Text := umCargo.GetCargo;
  edtCNH.Text := umCargo.GetCNH;
end;

procedure TCadastroCargos.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umCargo := cargos(pObj);
end;

procedure TCadastroCargos.DesbloqueiaEdit;
begin
  inherited;
  edtCargo.Enabled := true;
  edtCNH.Enabled := true;

end;

procedure TCadastroCargos.LimpaEdit;
begin
  inherited;
  edtCargo.Clear;
  edtCNH.Clear;
end;

procedure TCadastroCargos.Sair;
begin
  inherited;

end;

procedure TCadastroCargos.Salvar;
begin
  inherited;

end;

end.
