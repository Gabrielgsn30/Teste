object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'MENU'
  ClientHeight = 201
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 104
    Top = 120
    Width = 97
    Height = 25
    Caption = 'Consulta Filmes'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 73
    Width = 97
    Height = 25
    Caption = 'Cadastro Filme'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 104
    Top = 24
    Width = 97
    Height = 25
    Caption = 'Cadastro diretor'
    TabOrder = 2
    OnClick = Button3Click
  end
end
