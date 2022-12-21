unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,uInterface, uPaises, uEstados, uCidades,
  uCargos, uFuncionarios;

type
  TPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros: TMenuItem;
    Sair: TMenuItem;
    Cargos: TMenuItem;
    Funcionarios2: TMenuItem;
    Funcionarios3: TMenuItem;
    Pais1: TMenuItem;
    Estado1: TMenuItem;
    Cidade1: TMenuItem;
    procedure CargosClick(Sender: TObject);
    procedure Funcionarios2Click(Sender: TObject);
    procedure Pais1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure SairClick(Sender: TObject);
  private
    umaInterface : Interfaces;
    umPais : Paises;
    umEstado : Estados;
    umaCidade : Cidades;
    umFuncionario : Funcionarios;
    umCargo : Cargos;
  public
    Procedure ConhecaObj(pPais : Paises; pEstado: Estados; pCidade: Cidades;
    pCargo : Cargos; pFuncionario : funcionarios; pInter : Interfaces);
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

{ TPrincipal }

procedure TPrincipal.Cidade1Click(Sender: TObject);
begin
  umaInterface.PDCidades(umaCidade,nil);
end;

procedure TPrincipal.ConhecaObj(pPais: Paises; pEstado: Estados;
  pCidade: Cidades; pCargo: Cargos; pFuncionario: funcionarios;
  pInter: Interfaces);
begin
  umaInterface := pInter;
  umPais := pPais;
  umEstado := pEstado;
  umaCidade := pCidade;
  umFuncionario := pFuncionario;
  umCargo := pCargo;
end;

procedure TPrincipal.Estado1Click(Sender: TObject);
begin
  umaInterface.PDEstados(umEstado,nil);
end;

procedure TPrincipal.Funcionarios2Click(Sender: TObject);
begin
  umaInterface.PDFuncionarios(umFuncionario,nil);
end;

procedure TPrincipal.Pais1Click(Sender: TObject);
begin
  umaInterface.PDPaises(umPais,nil);
end;

procedure TPrincipal.SairClick(Sender: TObject);
begin
  Close;
end;

procedure TPrincipal.CargosClick(Sender: TObject);
begin
  umaInterface.PDCargos(umCargo,nil);
end;

end.
