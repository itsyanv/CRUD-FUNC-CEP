inherited Cadastro: TCadastro
  Caption = 'Cadastro'
  ClientHeight = 465
  ClientWidth = 833
  ExplicitWidth = 849
  ExplicitHeight = 504
  PixelsPerInch = 96
  TextHeight = 13
  object lblDatUltAlt: TLabel
    Left = 215
    Top = 420
    Width = 121
    Height = 13
    Caption = 'Data da ultima altera'#231#227'o:'
  end
  object lblDatCad: TLabel
    Left = 8
    Top = 420
    Width = 74
    Height = 13
    Caption = 'Data Cadastro:'
  end
  object lblCodigo: TLabel
    Left = 8
    Top = 35
    Width = 37
    Height = 13
    Caption = 'Codigo:'
  end
  object btnSalvar: TButton
    Left = 648
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = btnSalvarClick
  end
  object btnSair: TButton
    Left = 744
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = btnSairClick
  end
  object edtCodigo: TEdit
    Left = 56
    Top = 32
    Width = 97
    Height = 25
    TabOrder = 2
  end
  object edtDatCad: TEdit
    Left = 88
    Top = 417
    Width = 97
    Height = 25
    TabOrder = 3
  end
  object edtDatUltAlt: TEdit
    Left = 342
    Top = 417
    Width = 97
    Height = 25
    TabOrder = 4
  end
end
