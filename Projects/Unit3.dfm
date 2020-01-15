object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'CADASTRO DE DIRETOR'
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
    Left = 8
    Top = 27
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 8
    Top = 115
    Width = 82
    Height = 13
    Caption = 'Descri'#231#227'o Diretor'
  end
  object Label3: TLabel
    Left = 112
    Top = 69
    Width = 91
    Height = 13
    Caption = 'ID Nao encontrada'
    Visible = False
  end
  object Label4: TLabel
    Left = 128
    Top = 88
    Width = 107
    Height = 13
    Caption = 'Deletado com Sucesso'
    Visible = False
  end
  object Edit1: TEdit
    Left = 49
    Top = 24
    Width = 41
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 0
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 96
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 128
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 4
    OnClick = Button3Click
  end
  object FDQuery1: TFDQuery
    Connection = Form1.FDConnection1
    Left = 176
    Top = 16
  end
  object FDQuery2: TFDQuery
    Connection = Form1.FDConnection1
    Left = 224
    Top = 16
    object FDQuery2ID: TIntegerField
      FieldName = 'ID'
    end
  end
  object FDQuery3: TFDQuery
    Connection = Form1.FDConnection1
    Left = 280
    Top = 24
    object FDQuery3ID: TIntegerField
      FieldName = 'ID'
    end
    object FDQuery3Descricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
  end
  object FDQuery4: TFDQuery
    Connection = Form1.FDConnection1
    Left = 280
    Top = 72
  end
end
