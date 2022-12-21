inherited CadastroCidades: TCadastroCidades
  Caption = 'CadastroCidades'
  PixelsPerInch = 96
  TextHeight = 13
  object lblCidades: TLabel [3]
    Left = 8
    Top = 73
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object lblDDD: TLabel [4]
    Left = 8
    Top = 113
    Width = 25
    Height = 13
    Caption = 'DDD:'
  end
  object lblCodEstado: TLabel [5]
    Left = 8
    Top = 155
    Width = 59
    Height = 13
    Caption = 'Cod Estado:'
  end
  object lblEstado: TLabel [6]
    Left = 8
    Top = 195
    Width = 37
    Height = 13
    Caption = 'Estado:'
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
  object edtCidade: TEdit
    Left = 56
    Top = 70
    Width = 97
    Height = 21
    TabOrder = 5
  end
  object edtDDD: TEdit
    Left = 56
    Top = 110
    Width = 97
    Height = 21
    TabOrder = 6
  end
  object edtCodEstado: TEdit
    Left = 73
    Top = 152
    Width = 97
    Height = 21
    TabOrder = 7
  end
  object edtEstado: TEdit
    Left = 56
    Top = 192
    Width = 97
    Height = 21
    TabOrder = 8
  end
  object btnPesquisar: TButton
    Left = 192
    Top = 190
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 9
    OnClick = btnPesquisarClick
  end
end
