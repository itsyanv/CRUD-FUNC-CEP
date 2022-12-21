inherited CadastroEstados: TCadastroEstados
  Caption = 'CadastroEstados'
  PixelsPerInch = 96
  TextHeight = 13
  object lblUF: TLabel [3]
    Left = 8
    Top = 112
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object lblCodPais: TLabel [4]
    Left = 8
    Top = 155
    Width = 45
    Height = 13
    Caption = 'Cod Pais:'
  end
  object lblPais: TLabel [5]
    Left = 8
    Top = 195
    Width = 23
    Height = 13
    Caption = 'Pais:'
  end
  object lblEstado: TLabel [6]
    Left = 8
    Top = 72
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
  object edtEstado: TEdit
    Left = 56
    Top = 69
    Width = 97
    Height = 21
    TabOrder = 5
  end
  object edtUF: TEdit
    Left = 56
    Top = 109
    Width = 97
    Height = 21
    TabOrder = 6
  end
  object edtPais: TEdit
    Left = 56
    Top = 192
    Width = 97
    Height = 21
    TabOrder = 7
  end
  object edtCodPais: TEdit
    Left = 56
    Top = 152
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
