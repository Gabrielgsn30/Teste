object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Consulta FIlmes/Diretores'
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
    Top = 8
    Width = 47
    Height = 13
    Caption = 'ID Diretor'
  end
  object Label2: TLabel
    Left = 8
    Top = 38
    Width = 43
    Height = 13
    Caption = 'ID FILME'
  end
  object Edit1: TEdit
    Left = 65
    Top = 8
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 65
    Top = 35
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 73
    Width = 320
    Height = 120
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Pesquisar: TButton
    Left = 248
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 3
    OnClick = PesquisarClick
  end
  object RadioButton1: TRadioButton
    Left = 136
    Top = 12
    Width = 113
    Height = 17
    Caption = 'Cadastro Diretor'
    TabOrder = 4
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 136
    Top = 35
    Width = 113
    Height = 17
    Caption = 'Cadastro Filmes'
    TabOrder = 5
    OnClick = RadioButton2Click
  end
  object FDQuery1: TFDQuery
    Connection = Form1.FDConnection1
    Left = 40
    Top = 120
    object FDQuery1ID: TIntegerField
      FieldName = 'ID'
    end
    object FDQuery1Descricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
    object FDQuery1fk_idDiretor: TIntegerField
      FieldName = 'fk_idDiretor'
    end
  end
  object DataSource1: TDataSource
    Left = 152
    Top = 88
  end
  object FDQuery2: TFDQuery
    Connection = Form1.FDConnection1
    Left = 280
    Top = 112
    object FDQuery2ID: TIntegerField
      FieldName = 'ID'
    end
    object FDQuery2Descricao: TStringField
      FieldName = 'Descricao'
    end
  end
end
