object DM: TDM
  OldCreateOrder = False
  Height = 609
  Width = 776
  object banco: TIBDatabase
    Connected = True
    DatabaseName = 'C:\elp4\BANCO.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 24
    Top = 24
  end
  object trans: TIBTransaction
    Active = True
    DefaultDatabase = banco
    Left = 136
    Top = 24
  end
  object DSetPaises: TIBDataSet
    Database = banco
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PAISES'
      'where'
      '  CODPAIS = :OLD_CODPAIS')
    InsertSQL.Strings = (
      'insert into PAISES'
      '  (PAIS, SIGLA, DDI, DATCAD, DATULTALT)'
      'values'
      '  (:PAIS, :SIGLA, :DDI, :DATCAD, :DATULTALT)')
    RefreshSQL.Strings = (
      'Select '
      '  CODPAIS,'
      '  PAIS,'
      '  SIGLA,'
      '  DDI,'
      '  DATCAD,'
      '  DATULTALT'
      'from PAISES '
      'where'
      '  CODPAIS = :CODPAIS')
    SelectSQL.Strings = (
      'select * from PAISES')
    ModifySQL.Strings = (
      'update PAISES'
      'set'
      '  PAIS = :PAIS,'
      '  SIGLA = :SIGLA,'
      '  DDI = :DDI,'
      '  DATCAD = :DATCAD,'
      '  DATULTALT = :DATULTALT'
      'where'
      '  CODPAIS = :OLD_CODPAIS')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CODPAIS'
    GeneratorField.Generator = 'GEN_PAISES'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    Left = 24
    Top = 96
    object DSetPaisesCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
      Origin = 'PAISES.CODPAIS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSetPaisesPAIS: TIBStringField
      FieldName = 'PAIS'
      Origin = 'PAISES.PAIS'
      Required = True
      Size = 50
    end
    object DSetPaisesSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = 'PAISES.SIGLA'
      Size = 5
    end
    object DSetPaisesDDI: TIBStringField
      FieldName = 'DDI'
      Origin = 'PAISES.DDI'
      Size = 3
    end
    object DSetPaisesDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = 'PAISES.DATCAD'
      Required = True
    end
    object DSetPaisesDATULTALT: TDateField
      FieldName = 'DATULTALT'
      Origin = 'PAISES.DATULTALT'
      Required = True
    end
  end
  object DSPaises: TDataSource
    DataSet = DSetPaises
    Left = 128
    Top = 96
  end
  object DSetEstados: TIBDataSet
    Database = banco
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ESTADOS'
      'where'
      '  CODESTADO = :OLD_CODESTADO')
    InsertSQL.Strings = (
      'insert into ESTADOS'
      '  (ESTADO, UF, CODPAIS, DATCAD, DATULTALT)'
      'values'
      '  (:ESTADO, :UF, :CODPAIS, :DATCAD, :DATULTALT)')
    RefreshSQL.Strings = (
      'Select '
      '  CODESTADO,'
      '  ESTADO,'
      '  UF,'
      '  CODPAIS,'
      '  DATCAD,'
      '  DATULTALT'
      'from ESTADOS '
      'where'
      '  CODESTADO = :CODESTADO')
    SelectSQL.Strings = (
      'select * from ESTADOS')
    ModifySQL.Strings = (
      'update ESTADOS'
      'set'
      '  ESTADO = :ESTADO,'
      '  UF = :UF,'
      '  CODPAIS = :CODPAIS,'
      '  DATCAD = :DATCAD,'
      '  DATULTALT = :DATULTALT'
      'where'
      '  CODESTADO = :OLD_CODESTADO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CODESTADO'
    GeneratorField.Generator = 'GEN_ESTADOS'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    Left = 16
    Top = 168
    object DSetEstadosCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      Origin = 'ESTADOS.CODESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSetEstadosESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADOS.ESTADO'
      Required = True
      Size = 50
    end
    object DSetEstadosUF: TIBStringField
      FieldName = 'UF'
      Origin = 'ESTADOS.UF'
      Size = 3
    end
    object DSetEstadosCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
      Origin = 'ESTADOS.CODPAIS'
      Required = True
    end
    object DSetEstadosDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = 'ESTADOS.DATCAD'
      Required = True
    end
    object DSetEstadosDATULTALT: TDateField
      FieldName = 'DATULTALT'
      Origin = 'ESTADOS.DATULTALT'
      Required = True
    end
  end
  object DSetCidades: TIBDataSet
    Database = banco
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CIDADES'
      'where'
      '  CODCIDADE = :OLD_CODCIDADE')
    InsertSQL.Strings = (
      'insert into CIDADES'
      '  (CIDADE, DDD, CODESTADO, DATCAD, DATULTALT)'
      'values'
      '  (:CIDADE, :DDD, :CODESTADO, :DATCAD, :DATULTALT)')
    RefreshSQL.Strings = (
      'Select '
      '  CODCIDADE,'
      '  CIDADE,'
      '  DDD,'
      '  CODESTADO,'
      '  DATCAD,'
      '  DATULTALT'
      'from CIDADES '
      'where'
      '  CODCIDADE = :CODCIDADE')
    SelectSQL.Strings = (
      'select * from CIDADES')
    ModifySQL.Strings = (
      'update CIDADES'
      'set'
      '  CIDADE = :CIDADE,'
      '  DDD = :DDD,'
      '  CODESTADO = :CODESTADO,'
      '  DATCAD = :DATCAD,'
      '  DATULTALT = :DATULTALT'
      'where'
      '  CODCIDADE = :OLD_CODCIDADE')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CODCIDADE'
    GeneratorField.Generator = 'GEN_CIDADES'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    Left = 24
    Top = 224
    object DSetCidadesCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Origin = 'CIDADES.CODCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSetCidadesCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADES.CIDADE'
      Required = True
      Size = 50
    end
    object DSetCidadesDDD: TIBStringField
      FieldName = 'DDD'
      Origin = 'CIDADES.DDD'
      Size = 4
    end
    object DSetCidadesCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      Origin = 'CIDADES.CODESTADO'
      Required = True
    end
    object DSetCidadesDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = 'CIDADES.DATCAD'
      Required = True
    end
    object DSetCidadesDATULTALT: TDateField
      FieldName = 'DATULTALT'
      Origin = 'CIDADES.DATULTALT'
      Required = True
    end
  end
  object DSetCargos: TIBDataSet
    Database = banco
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CARGOS'
      'where'
      '  CODCARGO = :OLD_CODCARGO')
    InsertSQL.Strings = (
      'insert into CARGOS'
      '  (CARGO, CNH, DATCAD, DATULTALT)'
      'values'
      '  (:CARGO, :CNH, :DATCAD, :DATULTALT)')
    RefreshSQL.Strings = (
      'Select '
      '  CODCARGO,'
      '  CARGO,'
      '  CNH,'
      '  DATCAD,'
      '  DATULTALT'
      'from CARGOS '
      'where'
      '  CODCARGO = :CODCARGO')
    SelectSQL.Strings = (
      'select * from CARGOS')
    ModifySQL.Strings = (
      'update CARGOS'
      'set'
      '  CARGO = :CARGO,'
      '  CNH = :CNH,'
      '  DATCAD = :DATCAD,'
      '  DATULTALT = :DATULTALT'
      'where'
      '  CODCARGO = :OLD_CODCARGO')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CODCARGO'
    GeneratorField.Generator = 'GEN_CARGOS'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    Left = 32
    Top = 288
    object DSetCargosCODCARGO: TIntegerField
      FieldName = 'CODCARGO'
      Origin = 'CARGOS.CODCARGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSetCargosCARGO: TIBStringField
      FieldName = 'CARGO'
      Origin = 'CARGOS.CARGO'
      Required = True
      Size = 30
    end
    object DSetCargosCNH: TIBStringField
      FieldName = 'CNH'
      Origin = 'CARGOS.CNH'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DSetCargosDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = 'CARGOS.DATCAD'
      Required = True
    end
    object DSetCargosDATULTALT: TDateField
      FieldName = 'DATULTALT'
      Origin = 'CARGOS.DATULTALT'
      Required = True
    end
  end
  object DSetFuncionarios: TIBDataSet
    Database = banco
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FUNCIONARIOS'
      'where'
      '  CODFUNC = :OLD_CODFUNC')
    InsertSQL.Strings = (
      'insert into FUNCIONARIOS'
      
        '  (FUNCIONARIO, ENDERECO, COMPLEMENTO, BAIRRO, DATANASC, CODCIDA' +
        'DE, CODCARGO, '
      '   CNH, DATAVALCNH, DATCAD, DATULTALT)'
      'values'
      
        '  (:FUNCIONARIO, :ENDERECO, :COMPLEMENTO, :BAIRRO, :DATANASC, :C' +
        'ODCIDADE, '
      '   :CODCARGO, :CNH, :DATAVALCNH, :DATCAD, :DATULTALT)')
    RefreshSQL.Strings = (
      'Select '
      '  CODFUNC,'
      '  FUNCIONARIO,'
      '  ENDERECO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  DATANASC,'
      '  CODCIDADE,'
      '  CODCARGO,'
      '  CNH,'
      '  DATAVALCNH,'
      '  DATCAD,'
      '  DATULTALT'
      'from FUNCIONARIOS '
      'where'
      '  CODFUNC = :CODFUNC')
    SelectSQL.Strings = (
      'select * from FUNCIONARIOS')
    ModifySQL.Strings = (
      'update FUNCIONARIOS'
      'set'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  ENDERECO = :ENDERECO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  BAIRRO = :BAIRRO,'
      '  DATANASC = :DATANASC,'
      '  CODCIDADE = :CODCIDADE,'
      '  CODCARGO = :CODCARGO,'
      '  CNH = :CNH,'
      '  DATAVALCNH = :DATAVALCNH,'
      '  DATCAD = :DATCAD,'
      '  DATULTALT = :DATULTALT'
      'where'
      '  CODFUNC = :OLD_CODFUNC')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'CODFUNC'
    GeneratorField.Generator = 'GEN_FUNCIONARIOS'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    Left = 32
    Top = 344
    object DSetFuncionariosCODFUNC: TIntegerField
      FieldName = 'CODFUNC'
      Origin = 'FUNCIONARIOS.CODFUNC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSetFuncionariosFUNCIONARIO: TIBStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIOS.FUNCIONARIO'
      Required = True
      Size = 50
    end
    object DSetFuncionariosENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'FUNCIONARIOS.ENDERECO'
      Required = True
      Size = 50
    end
    object DSetFuncionariosCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'FUNCIONARIOS.COMPLEMENTO'
    end
    object DSetFuncionariosBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'FUNCIONARIOS.BAIRRO'
      Required = True
      Size = 40
    end
    object DSetFuncionariosDATANASC: TDateField
      FieldName = 'DATANASC'
      Origin = 'FUNCIONARIOS.DATANASC'
      Required = True
    end
    object DSetFuncionariosCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Origin = 'FUNCIONARIOS.CODCIDADE'
      Required = True
    end
    object DSetFuncionariosCODCARGO: TIntegerField
      FieldName = 'CODCARGO'
      Origin = 'FUNCIONARIOS.CODCARGO'
      Required = True
    end
    object DSetFuncionariosCNH: TIBStringField
      FieldName = 'CNH'
      Origin = 'FUNCIONARIOS.CNH'
      Size = 10
    end
    object DSetFuncionariosDATAVALCNH: TDateField
      FieldName = 'DATAVALCNH'
      Origin = 'FUNCIONARIOS.DATAVALCNH'
    end
    object DSetFuncionariosDATCAD: TDateField
      FieldName = 'DATCAD'
      Origin = 'FUNCIONARIOS.DATCAD'
      Required = True
    end
    object DSetFuncionariosDATULTALT: TDateField
      FieldName = 'DATULTALT'
      Origin = 'FUNCIONARIOS.DATULTALT'
      Required = True
    end
  end
  object DSEstados: TDataSource
    DataSet = DSetEstados
    Left = 112
    Top = 168
  end
  object DSCidades: TDataSource
    DataSet = DSetCidades
    Left = 112
    Top = 224
  end
  object DSCargos: TDataSource
    DataSet = DSetCargos
    Left = 136
    Top = 288
  end
  object DSFuncionarios: TDataSource
    DataSet = DSetFuncionarios
    Left = 144
    Top = 352
  end
end
