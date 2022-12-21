inherited Consulta: TConsulta
  Caption = 'Consulta'
  ClientHeight = 431
  ClientWidth = 816
  ExplicitWidth = 832
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  object edtChave: TEdit
    Left = 24
    Top = 24
    Width = 273
    Height = 25
    TabOrder = 0
  end
  object btnPesquisar: TButton
    Left = 320
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = btnPesquisarClick
  end
  object btnIncluir: TButton
    Left = 424
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 2
    OnClick = btnIncluirClick
  end
  object btnAlterar: TButton
    Left = 520
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 3
    OnClick = btnAlterarClick
  end
  object btnExcluir: TButton
    Left = 616
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = btnExcluirClick
  end
  object btnSair: TButton
    Left = 712
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 5
    OnClick = btnSairClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 80
    Width = 763
    Height = 281
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
