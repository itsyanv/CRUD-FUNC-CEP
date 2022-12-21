unit uCargos;
interface
uses uPai;
type
  Cargos = class(Pai)
  Private
  Protected
    cargo : string[30];
    CNH : char;
  Public
    Constructor CrieObj;
    Constructor CrieInit(pCodigo : Integer; pDataCad,pDataUltAlt : TDateTime; pCargo : string; pCNH : char);
    Procedure setCargo(pCargo : String);
    Procedure SetCNH(pCNH : char);
    Function GetCargo : String;
    Function GetCNH : char;
    Function Clone : Cargos;
    Destructor Destrua_se;
  End;

implementation

{ Cargos }

function Cargos.Clone: Cargos;
begin
  result := cargos.CrieInit(Codigo, DataCad, DataUltAlt, Cargo, CNH);
end;

constructor Cargos.CrieInit(pCodigo: Integer; pDataCad, pDataUltAlt: TDateTime;
  pCargo: string; pCNH: char);
begin
  codigo := pCodigo;
  dataCad := pDataCad;
  dataUltAlt := pDataUltAlt;
  cargo := pCargo;
  CNH := pCNH;
end;

constructor Cargos.CrieObj;
begin
  cargo := '';
  CNH := ' ';
end;

destructor Cargos.Destrua_se;
begin

end;

function Cargos.GetCargo: String;
begin
   result := cargo;
end;

function Cargos.GetCNH: char;
begin
  result := CNH;
end;

procedure Cargos.setCargo(pCargo: String);
begin
  cargo := pCargo;
end;

procedure Cargos.SetCNH(pCNH: char);
begin
  CNH := pCNH;
end;

end.
