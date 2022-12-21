unit uPai;

interface
uses SysUtils, DateUtils;

type
  Pai = Class
  Private
  Protected
    Codigo : Integer;
    DataCad : TDateTime;
    DataUltAlt : TDateTime;
  Public
    Constructor CrieObj;
    Procedure SetCodigo(pCodigo : Integer);
    Procedure SetDataCad(pDataCad : TDateTime);
    Procedure SetDataUltAlt(pDataUltAlt : TDateTime);
    Function GetCodigo : Integer;
    Function GetDataCad : TDateTime;
    Function GetDataUltAlt : TDateTime;
    Destructor Destrua_se;
  End;
implementation

{ Pai }

constructor Pai.CrieObj;
begin
  Codigo := 0;
  DataCad := now;
  DataUltAlt := now;
end;

destructor Pai.Destrua_se;
begin

end;

function Pai.GetCodigo: Integer;
begin
  Result := Codigo;
end;

function Pai.GetDataCad: TDateTime;
begin
  Result := DataCad;
end;

function Pai.GetDataUltAlt: TDateTime;
begin
  Result := DataUltAlt;
end;

procedure Pai.SetCodigo(pCodigo: Integer);
begin
  Codigo := pCodigo;
end;

procedure Pai.SetDataCad(pDataCad: TDateTime);
begin
  DataCad := pDataCad;
end;

procedure Pai.SetDataUltAlt(pDataUltAlt: TDateTime);
begin
  DataUltAlt := pDataUltAlt;
end;

end.
