unit uFuncionarios;

interface
uses uPai, uCargos, uCidades, SysUtils, DateUtils;

type
  Funcionarios = class(Pai)
  Private
  Protected
    funcionario : string[50];
    endereco : string[50];
    complemento : string[20];
    bairro : string[40];
    dataNasc : TDateTime;
    CNH : string[10];
    dataValCNH : TDateTime;
    umCargo : Cargos;
    umaCidade : Cidades;
  Public
    Constructor CrieObj;
    Constructor CrieInit(pCodigo : Integer; pDataCad,pDataUltAlt, pDataNasc, pDataValCNH : TDateTime; pFuncionario, pEndereco, pComplemento, pBairro, pCNH : String; pCidade : Cidades; pCargo : Cargos);
    Procedure SetFuncionario (pFuncionario : string);
    Procedure SetEndereco (pEndereco : string);
    procedure setComplemento (pComplemento : string);
    procedure setBairro (pBairro : string);
    procedure setCNH (pCNH : string);
    procedure setDataNasc (pDataNasc : TDateTime);
    procedure setDataValCNH (pDataValCNH : TDateTime);
    Procedure setaCidade (pCidade : Cidades);
    procedure setoCargo (pCargo : Cargos);
    Function GetFuncionario : String;
    function getEndereco : string;
    Function GetComplemento : String;
    Function GetBairro : String;
    Function GetCNH : String;
    Function GetDataNasc : TDateTime;
    function GetDataValCNH : TDateTime;
    Function getaCidade : Cidades;
    Function getoCargo: Cargos;
    Function Clone : Funcionarios;
    Destructor Destrua_se;
  End;


implementation

{ Funcionarios }

function Funcionarios.Clone: Funcionarios;
begin
  result := funcionarios.CrieInit(Codigo, DataCad, DataUltAlt, dataNasc, dataValCNH, Funcionario, Endereco, Complemento, Bairro, CNH, umaCidade, umCargo);
end;

constructor Funcionarios.CrieInit(pCodigo: Integer; pDataCad, pDataUltAlt,
  pdataNasc, pdataValCNH: TDateTime; pFuncionario, pEndereco, pComplemento,
  pBairro, pCNH: String; pCidade: Cidades; pCargo: Cargos);
begin
  codigo := pCodigo;
  DataCad := pDataCad;
  DataUltAlt := pDataUltAlt;
  funcionario := pFuncionario;
  endereco := pEndereco;
  complemento := pComplemento;
  bairro := pBairro;
  dataNasc := pDataNasc;
  CNH := pCNH;
  dataValCNH := pDataValCNH;
  umaCidade := pCidade;
  umCargo := pCargo;
end;

constructor Funcionarios.CrieObj;
begin
  funcionario := '';
  endereco := '';
  complemento := '';
  bairro := '';
  dataNasc := date;
  CNH := '';
  dataValCNH := date;
  umaCidade := Cidades.CrieObj;
  umCargo := Cargos.CrieObj;
end;

destructor Funcionarios.Destrua_se;
begin
  umaCidade.Destrua_se;
  umCargo.Destrua_se;
end;

function Funcionarios.getaCidade: Cidades;
begin
  result := umaCidade;
end;

function Funcionarios.GetBairro: String;
begin
  result := bairro;
end;

function Funcionarios.GetCNH: String;
begin
  result := CNH;
end;

function Funcionarios.GetComplemento: String;
begin
  result := complemento;
end;

function Funcionarios.GetDataNasc: TDateTime;
begin
   result := dataNasc;
end;

function Funcionarios.GetDataValCNH: TDateTime;
begin
  result := dataValCNH;
end;

function Funcionarios.getEndereco: string;
begin
  result := endereco;
end;

function Funcionarios.GetFuncionario: String;
begin
  result := funcionario;
end;

function Funcionarios.getoCargo: Cargos;
begin
  result := umCargo;
end;

procedure Funcionarios.setaCidade(pCidade: Cidades);
begin
  umaCidade := pCidade;
end;

procedure Funcionarios.setBairro(pBairro: string);
begin
  bairro := pBairro;
end;

procedure Funcionarios.setCNH(pCNH: string);
begin
  CNH := pCNH;
end;

procedure Funcionarios.setComplemento(pComplemento: string);
begin
  complemento := pComplemento;
end;

procedure Funcionarios.setDataNasc(pDataNasc: TDateTime);
begin
  dataNasc := pDataNasc;
end;

procedure Funcionarios.setDataValCNH(pDataValCNH: TDateTime);
begin
  dataValCNH := pDataValCNH;
end;

procedure Funcionarios.SetEndereco(pEndereco: string);
begin
  endereco := pEndereco;
end;

procedure Funcionarios.SetFuncionario(pFuncionario: string);
begin
   funcionario := pFuncionario;
end;

procedure Funcionarios.setoCargo(pCargo: Cargos);
begin
   umCargo := pCargo;
end;

end.
