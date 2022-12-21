unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBDatabase;

type
  TDM = class(TDataModule)
    banco: TIBDatabase;
    trans: TIBTransaction;
    DSetPaises: TIBDataSet;
    DSetPaisesCODPAIS: TIntegerField;
    DSetPaisesPAIS: TIBStringField;
    DSetPaisesSIGLA: TIBStringField;
    DSetPaisesDDI: TIBStringField;
    DSetPaisesDATCAD: TDateField;
    DSetPaisesDATULTALT: TDateField;
    DSPaises: TDataSource;
    DSetEstados: TIBDataSet;
    DSetCidades: TIBDataSet;
    DSetCargos: TIBDataSet;
    DSetFuncionarios: TIBDataSet;
    DSEstados: TDataSource;
    DSCidades: TDataSource;
    DSCargos: TDataSource;
    DSFuncionarios: TDataSource;
    DSetEstadosCODESTADO: TIntegerField;
    DSetEstadosESTADO: TIBStringField;
    DSetEstadosUF: TIBStringField;
    DSetEstadosCODPAIS: TIntegerField;
    DSetEstadosDATCAD: TDateField;
    DSetEstadosDATULTALT: TDateField;
    DSetCidadesCODCIDADE: TIntegerField;
    DSetCidadesCIDADE: TIBStringField;
    DSetCidadesDDD: TIBStringField;
    DSetCidadesCODESTADO: TIntegerField;
    DSetCidadesDATCAD: TDateField;
    DSetCidadesDATULTALT: TDateField;
    DSetCargosCODCARGO: TIntegerField;
    DSetCargosCARGO: TIBStringField;
    DSetCargosCNH: TIBStringField;
    DSetCargosDATCAD: TDateField;
    DSetCargosDATULTALT: TDateField;
    DSetFuncionariosCODFUNC: TIntegerField;
    DSetFuncionariosFUNCIONARIO: TIBStringField;
    DSetFuncionariosENDERECO: TIBStringField;
    DSetFuncionariosCOMPLEMENTO: TIBStringField;
    DSetFuncionariosBAIRRO: TIBStringField;
    DSetFuncionariosDATANASC: TDateField;
    DSetFuncionariosCODCIDADE: TIntegerField;
    DSetFuncionariosCODCARGO: TIntegerField;
    DSetFuncionariosCNH: TIBStringField;
    DSetFuncionariosDATAVALCNH: TDateField;
    DSetFuncionariosDATCAD: TDateField;
    DSetFuncionariosDATULTALT: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
