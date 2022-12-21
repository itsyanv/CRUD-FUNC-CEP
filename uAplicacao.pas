unit uAplicacao;

interface
uses uPrincipal, uInterface, uPaises, uEstados, uCidades, uCargos, uFuncionarios;
type
  Aplicacao = Class
  Private
  Protected
    umFrmPrincipal : TPrincipal;
    umaInterface : Interfaces;
    umPais : Paises;
    umEstado : Estados;
    umaCidade : Cidades;
    umCargo : Cargos;
    umFuncionario : funcionarios;
  Public
    Constructor CrieObj;
    Procedure Execute_se;
    Destructor Destrua_se;
  End;

implementation

{ Aplicacao }

constructor Aplicacao.CrieObj;
begin
  umFrmPrincipal := TPrincipal.Create(nil);
  umaInterface := Interfaces.CrieObj;
  umPais := Paises.CrieObj;
  umEstado := Estados.CrieObj;
  umaCidade := Cidades.CrieObj;
  umCargo := Cargos.CrieObj;
  umFuncionario := funcionarios.CrieObj;
end;

destructor Aplicacao.Destrua_se;
begin
  umFrmPrincipal.FreeInstance;
  umaInterface.Destrua_se;
  umPais.Destrua_se;
  umEstado.Destrua_se;
  umaCidade.Destrua_se;
  umCargo.Destrua_se;
  umFuncionario.Destrua_se;
end;

procedure Aplicacao.Execute_se;
begin
  umFrmPrincipal.ConhecaObj(umPais, umEstado, umaCidade, umCargo, umFuncionario, umaInterface);
  umFrmPrincipal.ShowModal;
end;

end.
