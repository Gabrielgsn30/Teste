object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  object Label1: TLabel
    Left = 56
    Top = 51
    Width = 50
    Height = 13
    Caption = 'USU'#193'RIO:'
  end
  object Label2: TLabel
    Left = 56
    Top = 91
    Width = 37
    Height = 13
    Caption = 'SENHA:'
  end
  object Label3: TLabel
    Left = 112
    Top = 29
    Width = 122
    Height = 13
    Caption = 'CONTROLE DE LOCA'#199#195'O'
  end
  object Label4: TLabel
    Left = 112
    Top = 115
    Width = 122
    Height = 13
    Caption = 'Usuario ou senha invalido'
    Visible = False
  end
  object Button1: TButton
    Left = 128
    Top = 152
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 112
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 112
    Top = 88
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=MSSQL_Demo'
      'Database=Teste'
      'Password=Teste#123'
      'Server=cdi_info_005\sql2016')
    Connected = True
    Left = 256
    Top = 128
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 264
    Top = 72
    object FDQuery1ID: TStringField
      FieldName = 'ID'
      Size = 3
    end
    object FDQuery1Senha: TStringField
      FieldName = 'Senha'
      Size = 5
    end
  end
end
