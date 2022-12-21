inherited CadastroPaises: TCadastroPaises
  Caption = 'CadastroPaises'
  PixelsPerInch = 96
  TextHeight = 13
  object lblDDI: TLabel [3]
    Left = 8
    Top = 155
    Width = 22
    Height = 13
    Caption = 'DDI:'
  end
  object lblSigla: TLabel [4]
    Left = 8
    Top = 123
    Width = 26
    Height = 13
    Caption = 'Sigla:'
  end
  object lblPais: TLabel [5]
    Left = 8
    Top = 83
    Width = 23
    Height = 13
    Caption = 'Pais:'
  end
  inherited edtCodigo: TEdit
    Left = 51
    Height = 21
    ExplicitLeft = 51
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
  object edtPais: TEdit
    Left = 51
    Top = 80
    Width = 97
    Height = 21
    TabOrder = 5
  end
  object edtSigla: TEdit
    Left = 51
    Top = 120
    Width = 97
    Height = 21
    TabOrder = 6
  end
  object edtDDI: TEdit
    Left = 51
    Top = 152
    Width = 97
    Height = 21
    TabOrder = 7
  end
end
