unit uPaises;

interface
uses uPai;
type
  Paises = Class(Pai)
  Private
  Protected
    Pais : String[55];
    Sigla : String[5];
    DDI : String[5];
  Public
    Constructor CrieObj;
    Constructor CrieInit(pCodigo : Integer; pDataCad,pDataUltAlt : TDateTime; pPais, pSigla, pDDI : String);
    Procedure SetPais(pPais : String);
    Procedure SetSigla(pSigla : String);
    Procedure SetDDI(pDDI : String);
    Function GetPais : String;
    Function GetSigla : String;
    Function GetDDI : String;
    Function Clone : Paises;
    Destructor Destrua_se;
  End;

implementation

{ Paises }

function Paises.Clone: Paises;
begin
  Result := Paises.CrieInit(Codigo, DataCad, DataUltAlt, Pais, Sigla, DDI);
end;

constructor Paises.CrieInit(pCodigo : Integer; pDataCad,pDataUltAlt : TDateTime; pPais, pSigla, pDDI : String);
begin
  Codigo := pCodigo;
  DataCad := pDataCad;
  DataUltAlt := pDataUltAlt;
  Pais := pPais;
  Sigla := pSigla;
  DDI := pDDI;
end;

constructor Paises.CrieObj;
begin
  Pais := '';
  Sigla := '';
  DDI := '';
end;

destructor Paises.Destrua_se;
begin

end;

function Paises.GetDDI: String;
begin
  Result := DDI;
end;

function Paises.GetPais: String;
begin
  Result := Pais;
end;

function Paises.GetSigla: String;
begin
  Result := Sigla;
end;

procedure Paises.SetDDI(pDDI: String);
begin
  DDI := pDDI;
end;

procedure Paises.SetPais(pPais: String);
begin
  Pais := pPais;
end;

procedure Paises.SetSigla(pSigla: String);
begin
  Sigla := pSigla;
end;

end.
