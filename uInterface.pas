unit uInterface;

interface
uses uConsultaPaises, uConsultaEstados ,uConsultaCidades,
     uCadastroPaises, uCadastroEstados, uCadastroCidades,
     uConsultaCargos, uConsultaFuncionarios,
     uCadastroCargos, uCadastroFuncionarios,
     uDM;
type
  Interfaces = Class
  Private
  Protected
    umaConsultaPaises : TConsultaPaises;
    umaConsultaEstados : TConsultaEstados;
    umaConsultaCidades : TConsultaCidades;
    umaConsultaCargos : TConsultaCargos;
    umaConsultaFuncionarios : TConsultaFuncionarios;

    umCadastroPaises : TCadastroPaises;
    umCadastroEstados : TCadastroEstados;
    umCadastroCidades : TCadastroCidades;
    umCadastroCargos : TCadastroCargos;
    umCadastroFuncionarios : TCadastroFuncionarios;

    aDM : TDM;
  Public
    Constructor CrieObj;
    Procedure PDPaises(pObj,pCtrl : TObject);
    Procedure PDEstados(pObj,pCtrl : TObject);
    Procedure PDCidades(pObj,pCtrl : TObject);
    procedure PDCargos(pObj, pCtrl : TObject);
    procedure PDFuncionarios (pObj, pCtrl : TObject);
    Destructor Destrua_se;
  End;

implementation

{ Interfaces }

constructor Interfaces.CrieObj;
begin
  umaConsultaPaises := TConsultaPaises.Create(nil);
  umaConsultaEstados := TConsultaEstados.Create(nil);
  umaConsultaCidades := TConsultaCidades.Create(nil);
  umaConsultaCargos := TConsultaCargos.Create(nil);
  umaConsultaFuncionarios := TConsultaFuncionarios.Create(nil);

  umCadastroPaises := TCadastroPaises.Create(nil);
  umCadastroEstados := TCadastroEstados.Create(nil);
  umCadastroCidades := TCadastroCidades.Create(nil);
  umCadastroCargos := TCadastroCargos.Create(nil);
  umCadastroFuncionarios := TCadastroFuncionarios.Create(nil);

  aDM := TDM.Create(nil);

  umaConsultaPaises.SetCadastro(umCadastroPaises);
  umaConsultaEstados.SetCadastro(umCadastroEstados);
  umaConsultaCidades.SetCadastro(umCadastroCidades);
  umaConsultaCargos.SetCadastro(umCadastroCargos);
  umaConsultaFuncionarios.SetCadastro(umCadastroFuncionarios);

  umCadastroEstados.SetConsultaPaises(umaConsultaPaises);
  umCadastroCidades.SetConsultaEstados(umaConsultaEstados);
  umCadastroFuncionarios.setConsultaCidades(umaConsultaCidades);
  umCadastroFuncionarios.setConsultaCargos(umaConsultaCargos);


end;

destructor Interfaces.Destrua_se;
begin
  umaConsultaPaises.FreeInstance;
  umaConsultaEstados.FreeInstance;
  umaConsultaCidades.FreeInstance;
  umaConsultaCargos.FreeInstance;
  umaConsultaFuncionarios.FreeInstance;

  umCadastroPaises.FreeInstance;
  umCadastroEstados.FreeInstance;
  umCadastroCidades.FreeInstance;
  umCadastroCargos.FreeInstance;
  umCadastroFuncionarios.FreeInstance;
end;

procedure Interfaces.PDCargos(pObj, pCtrl: TObject);
begin
  umaConsultaCargos.DBGrid1.DataSource := aDM.DSCargos;
  umaConsultaCargos.conhecaObj(pObj, pCtrl);
  umaConsultaCargos.ShowModal;
  end;

procedure Interfaces.PDCidades(pObj,pCtrl : TObject);
begin
  umaConsultaCidades.DBGrid1.DataSource := aDM.DSCidades;
  umaConsultaCidades.ConhecaObj(pObj,pCtrl);
  umaConsultaCidades.ShowModal;
end;

procedure Interfaces.PDEstados(pObj,pCtrl : TObject);
begin
  umaConsultaEstados.DBGrid1.DataSource := aDM.DSEstados;
  umaConsultaEstados.ConhecaObj(pObj,pCtrl);
  umaConsultaEstados.ShowModal;
end;

procedure Interfaces.PDFuncionarios(pObj, pCtrl: TObject);
begin
  umaConsultaFuncionarios.DBGrid1.DataSource := aDM.DSFuncionarios;
  umaConsultaFuncionarios.conhecaObj(pObj, pCtrl);
  umaConsultaFuncionarios.ShowModal;
end;

procedure Interfaces.PDPaises(pObj,pCtrl : TObject);
begin
  umaConsultaPaises.DBGrid1.DataSource := aDM.DSPaises;
  umaConsultaPaises.ConhecaObj(pObj,pCtrl);
  umaConsultaPaises.ShowModal;

end;

end.
