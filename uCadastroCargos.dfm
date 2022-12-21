inherited CadastroCargos: TCadastroCargos
  Caption = 'CadastroCargos'
  PixelsPerInch = 96
  TextHeight = 13
  object lblCargo: TLabel [3]
    Left = 8
    Top = 72
    Width = 33
    Height = 13
    Caption = 'Cargo:'
  end
  object lblCNH: TLabel [4]
    Left = 8
    Top = 115
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
  object edtCargo: TEdit
    Left = 56
    Top = 69
    Width = 97
    Height = 21
    TabOrder = 5
  end
  object edtCNH: TEdit
    Left = 56
    Top = 112
    Width = 97
    Height = 21
    TabOrder = 6
  end
end
