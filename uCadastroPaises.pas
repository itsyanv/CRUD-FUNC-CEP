unit uCadastroPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, uPaises;

type
  TCadastroPaises = class(TCadastro)
    lblDDI: TLabel;
    lblSigla: TLabel;
    lblPais: TLabel;
    edtPais: TEdit;
    edtSigla: TEdit;
    edtDDI: TEdit;
  private
    umPais : Paises;
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
  CadastroPaises: TCadastroPaises;

implementation

{$R *.dfm}

{ TCadastroPaises }

procedure TCadastroPaises.BloqueiaEdit;
begin
  inherited;

end;

procedure TCadastroPaises.CarregaEdit;
begin
  inherited;
  edtCodigo.Text := inttostr(umPais.GetCodigo);
  edtPais.Text := umPais.GetPais;
  edtSigla.Text := umPais.GetSigla;
  edtDDI.Text := umPais.GetDDI;
  edtDatCad.Text := dateTimetostr(umPais.GetDataCad);
  edtDatUltAlt.Text := dateTimetostr(umPais.GetDataUltAlt);
end;

procedure TCadastroPaises.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umPais := paises(pObj);
end;

procedure TCadastroPaises.DesbloqueiaEdit;
begin
  inherited;
  edtPais.Enabled := true;
  edtSigla.Enabled := true;
  edtDDI.Enabled := true;
end;

procedure TCadastroPaises.LimpaEdit;
begin
  inherited;
  edtPais.Clear;
  edtSigla.Clear;
  edtDDI.Clear;
  edtDatCad.Clear;
  edtDatUltAlt.Clear;
end;

procedure TCadastroPaises.Sair;
begin
  inherited;
    Close;
end;

procedure TCadastroPaises.Salvar;
begin
  inherited;

end;

end.
