object Principal: TPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 429
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 16
    object Cadastros: TMenuItem
      Caption = 'Cadastros'
      object Cargos: TMenuItem
        Caption = 'Cargos'
        OnClick = CargosClick
      end
      object Funcionarios2: TMenuItem
        Caption = 'Funcionarios'
        OnClick = Funcionarios2Click
      end
      object Funcionarios3: TMenuItem
        Caption = '-'
      end
      object Pais1: TMenuItem
        Caption = 'Pais'
        OnClick = Pais1Click
      end
      object Estado1: TMenuItem
        Caption = 'Estado'
        OnClick = Estado1Click
      end
      object Cidade1: TMenuItem
        Caption = 'Cidade'
        OnClick = Cidade1Click
      end
    end
    object Sair: TMenuItem
      Caption = 'Sair'
      OnClick = SairClick
    end
  end
end
