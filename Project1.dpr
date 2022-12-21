program Project1;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Principal},
  uFrmPai in 'uFrmPai.pas' {FrmPai},
  uConsulta in 'uConsulta.pas' {Consulta},
  uCadastro in 'uCadastro.pas' {Cadastro},
  uPai in 'uPai.pas',
  uPaises in 'uPaises.pas',
  uEstados in 'uEstados.pas',
  uCidades in 'uCidades.pas',
  uCargos in 'uCargos.pas',
  uFuncionarios in 'uFuncionarios.pas',
  uCadastroPaises in 'uCadastroPaises.pas' {CadastroPaises},
  uCadastroEstados in 'uCadastroEstados.pas' {CadastroEstados},
  uCadastroCidades in 'uCadastroCidades.pas' {CadastroCidades},
  uCadastroFuncionarios in 'uCadastroFuncionarios.pas' {CadastroFuncionarios},
  uCadastroCargos in 'uCadastroCargos.pas' {CadastroCargos},
  uConsultaPaises in 'uConsultaPaises.pas' {ConsultaPaises},
  uConsultaFuncionarios in 'uConsultaFuncionarios.pas' {ConsultaFuncionarios},
  uConsultaEstados in 'uConsultaEstados.pas' {ConsultaEstados},
  uConsultaCidades in 'uConsultaCidades.pas' {ConsultaCidades},
  uConsultaCargos in 'uConsultaCargos.pas' {ConsultaCargo},
  uInterface in 'uInterface.pas',
  uAplicacao in 'uAplicacao.pas',
  uDM in 'uDM.pas' {DM: TDataModule};

{$R *.res}
var
  umaAplicacao : Aplicacao;
begin
 { Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);    }
  Application.CreateForm(TFrmPai, FrmPai);
  Application.CreateForm(TConsulta, Consulta);
  Application.CreateForm(TCadastro, Cadastro);
  Application.CreateForm(TCadastroPaises, CadastroPaises);
  Application.CreateForm(TCadastroEstados, CadastroEstados);
  Application.CreateForm(TCadastroCidades, CadastroCidades);
  Application.CreateForm(TCadastroFuncionarios, CadastroFuncionarios);
  Application.CreateForm(TCadastroCargos, CadastroCargos);
  Application.CreateForm(TConsultaPaises, ConsultaPaises);
  Application.CreateForm(TConsultaFuncionarios, ConsultaFuncionarios);
  Application.CreateForm(TConsultaEstados, ConsultaEstados);
  Application.CreateForm(TConsultaCidades, ConsultaCidades);
  Application.CreateForm(TConsultaCargos, ConsultaCargo);
  Application.CreateForm(TDM, DM);
  //Application.Run;
  umaAplicacao := aplicacao.CrieObj;
  umaAplicacao.Execute_se;
  umaAplicacao.Destrua_se;
end.
