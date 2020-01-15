object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Cadastro De Filmes'
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
    Top = 19
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 8
    Top = 99
    Width = 54
    Height = 13
    Caption = 'Nome Filme'
  end
  object Label3: TLabel
    Left = 208
    Top = 99
    Width = 59
    Height = 13
    Caption = 'ID DIRETOR'
  end
  object Label4: TLabel
    Left = 120
    Top = 64
    Width = 172
    Height = 13
    Caption = 'Nao encontrado cadastro do diretor'
    Visible = False
  end
  object Label5: TLabel
    Left = 120
    Top = 77
    Width = 124
    Height = 13
    Caption = 'Cadastro Nao Encontrado'
    Visible = False
  end
  object Label6: TLabel
    Left = 119
    Top = 133
    Width = 107
    Height = 13
    Caption = 'Alterado Com Sucesso'
    Visible = False
  end
  object Edit1: TEdit
    Left = 40
    Top = 8
    Width = 33
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 0
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 68
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 282
    Top = 96
    Width = 41
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 8
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 128
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object FDQuery1: TFDQuery
    Connection = Form1.FDConnection1
    Left = 136
    Top = 8
  end
  object FDQuery2: TFDQuery
    Connection = Form1.FDConnection1
    Left = 184
    Top = 8
    object FDQuery2ID: TIntegerField
      FieldName = 'ID'
    end
  end
  object FDQuery3: TFDQuery
    Connection = Form1.FDConnection1
    Left = 248
    Top = 8
    object FDQuery3ID: TIntegerField
      FieldName = 'ID'
    end
  end
  object FDQuery4: TFDQuery
    Connection = Form1.FDConnection1
    Left = 296
    Top = 24
    object FDQuery4ID: TIntegerField
      FieldName = 'ID'
    end
    object FDQuery4Descricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
    object FDQuery4fk_idDiretor: TIntegerField
      FieldName = 'fk_idDiretor'
    end
  end
end
