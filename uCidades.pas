unit uCidades;

interface
uses uPai, uPaises, uEstados;
type
  Cidades = class(Pai)
  Private
  Protected
    cidade: string[55];
    DDD : String[5];
    umEstado : Estados;
  Public
    Constructor CrieObj;
    Constructor CrieInit(pCodigo : Integer; pDataCad,pDataUltAlt: TDateTime; pCidade, pDDD : String);
    Procedure SetCidade(pCidade : String);
    Procedure SetDDD(pDDD : String);
    Procedure setoEstado ( pEstado : Estados );
    Function GetCidade : String;
    Function GetDDD : String;
    Function getoEstado : Estados;
    Function Clone : Cidades;
    Destructor Destrua_se;
  End;

implementation



{ Cidades }

function Cidades.Clone: Cidades;
begin
  result := cidades.CrieInit(Codigo, DataCad, DataUltAlt, Cidade, DDD);
end;

constructor Cidades.CrieInit(pCodigo : Integer; pDataCad,pDataUltAlt: TDateTime; pCidade, pDDD : String);
begin
  codigo := pCodigo;
  DataCad := pDataCad;
  DataUltAlt := pDataUltAlt;
  Cidade := pCidade;
  DDD := pDDD;
end;

constructor Cidades.CrieObj;
begin
  Cidade := '';
  DDD := '';
  umEstado := estados.CrieObj;
end;

destructor Cidades.Destrua_se;
begin
  umEstado.Destrua_se;
end;

function Cidades.GetCidade: String;
begin
  result := cidade;
end;

function Cidades.GetDDD: String;
begin
  result := DDD;
end;

function Cidades.getoEstado: Estados;
begin
  result := umEstado;
end;

procedure Cidades.SetCidade(pCidade: String);
begin
  cidade := pCidade;
end;

procedure Cidades.SetDDD(pDDD: String);
begin
  DDD := pDDD;
end;

procedure Cidades.setoEstado(pEstado: Estados);
begin
  umEstado := pEstado;
end;

end.
