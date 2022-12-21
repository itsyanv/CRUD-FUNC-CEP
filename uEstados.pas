unit uEstados;

interface
uses uPai, uPaises;
type
  Estados = class(Pai)
  Private
  Protected
    estado : string[55];
    UF : String[5];
    umPais : Paises;
  Public
    Constructor CrieObj;
    Constructor CrieInit(pCodigo : Integer; pDataCad,pDataUltAlt : TDateTime; pEstado, pUF : String; pPais : Paises);
    Procedure SetEstado(pEstado : String);
    Procedure SetUF(pUF : String);
    Procedure setoPais (pPais : Paises);
    Function GetEstado : String;
    Function GetUF : String;
    Function getoPais : Paises;
    Function Clone : Estados;
    Destructor Destrua_se;
  End;

implementation

{ Estados }

function Estados.Clone: Estados;
begin
   result := estados.CrieInit(Codigo, DataCad, DataUltAlt, Estado, UF, umPais);
end;

constructor Estados.CrieInit(pCodigo : Integer; pDataCad,pDataUltAlt : TDateTime; pEstado, pUF : String; pPais : Paises);
begin
  codigo := pCodigo;
  DataCad := pDataCad;
  DataUltAlt := pDataUltAlt;
  Estado := pEstado;
  UF := pUF;
  umPais := pPais;
end;

constructor Estados.CrieObj;
begin
  Estado := '';
  UF := '';
  umPais := Paises.CrieObj;
end;

destructor Estados.Destrua_se;
begin
  umPais.Destrua_se;
end;

function Estados.GetUF: String;
begin
  result := UF;
end;

function Estados.GetEstado: String;
begin
   result := estado;
end;

function Estados.getoPais: Paises;
begin
   result := umPais;
end;

procedure Estados.SetUF(pUF: String);
begin
   UF := pUF;
end;

procedure Estados.SetEstado(pEstado: String);
begin
  estado := pEstado;
end;

procedure Estados.setoPais(pPais: Paises);
begin
  umPais := pPais;
end;

end.
