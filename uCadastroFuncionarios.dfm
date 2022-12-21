inherited CadastroFuncionarios: TCadastroFuncionarios
  Caption = 'CadastroFuncionarios'
  PixelsPerInch = 96
  TextHeight = 13
  object lblFuncionario: TLabel [3]
    Left = 8
    Top = 75
    Width = 59
    Height = 13
    Caption = 'Funcionario:'
  end
  object lblEndereco: TLabel [4]
    Left = 8
    Top = 147
    Width = 49
    Height = 13
    Caption = 'Endereco:'
  end
  object lblComplemento: TLabel [5]
    Left = 8
    Top = 195
    Width = 69
    Height = 13
    Caption = 'Complemento:'
  end
  object lblCargo: TLabel [6]
    Left = 184
    Top = 75
    Width = 33
    Height = 13
    Caption = 'Cargo:'
  end
  object lblCodCidade: TLabel [7]
    Left = 8
    Top = 267
    Width = 59
    Height = 13
    Caption = 'Cod Cidade:'
  end
  object lblBairro: TLabel [8]
    Left = 8
    Top = 227
    Width = 32
    Height = 13
    Caption = 'Bairro:'
  end
  object lblDataNasc: TLabel [9]
    Left = 8
    Top = 110
    Width = 66
    Height = 13
    Caption = 'Data de Nas: '
  end
  object lblCidade: TLabel [10]
    Left = 184
    Top = 35
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object lblValCNH: TLabel [11]
    Left = 184
    Top = 147
    Width = 42
    Height = 13
    Caption = 'Val CNH:'
  end
  object lblCNH: TLabel [12]
    Left = 184
    Top = 110
    Width = 25
    Height = 13
    Caption = 'CNH:'
  end
  inherited edtCodigo: TEdit
    Height = 21
    ExplicitHeight = 21
  end
  inherited edtDatCad: TEdit
    Height = 21
    ExplicitHeight = 21
  end
  inherited edtDatUltAlt: TEdit
    Height = 21
    ExplicitHeight = 21
  end
  object edtFuncionario: TEdit
    Left = 73
    Top = 72
    Width = 97
    Height = 21
    TabOrder = 5
  end
  object edtDataNasc: TEdit
    Left = 73
    Top = 107
    Width = 97
    Height = 21
    TabOrder = 6
  end
  object edtEndereco: TEdit
    Left = 63
    Top = 144
    Width = 97
    Height = 21
    TabOrder = 7
  end
  object edtComplemento: TEdit
    Left = 83
    Top = 192
    Width = 97
    Height = 21
    TabOrder = 8
  end
  object edtValCNH: TEdit
    Left = 239
    Top = 144
    Width = 97
    Height = 21
    TabOrder = 9
  end
  object edtCNH: TEdit
    Left = 239
    Top = 107
    Width = 97
    Height = 21
    TabOrder = 10
  end
  object edtCodCidade: TEdit
    Left = 73
    Top = 264
    Width = 97
    Height = 21
    TabOrder = 11
  end
  object edtBairro: TEdit
    Left = 56
    Top = 224
    Width = 97
    Height = 21
    TabOrder = 12
  end
  object edtCidade: TEdit
    Left = 239
    Top = 32
    Width = 97
    Height = 21
    TabOrder = 13
  end
  object edtCargo: TEdit
    Left = 239
    Top = 72
    Width = 97
    Height = 21
    TabOrder = 14
  end
  object btnPesquisaCidades: TButton
    Left = 364
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 15
    OnClick = btnPesquisaCidadesClick
  end
  object btnPesquisaCargo: TButton
    Left = 364
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 16
    OnClick = btnPesquisaCargoClick
  end
end
