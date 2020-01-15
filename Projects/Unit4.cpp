//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit4.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm4 *Form4;
//---------------------------------------------------------------------------
__fastcall TForm4::TForm4(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm4::Button1Click(TObject *Sender)
{
String SQL;
SQL="select * from tabDiretor where ID="+Edit3->Text+"";
FDQuery3->SQL->Text=SQL;
FDQuery3->Open();
if (FDQuery3->IsEmpty())
	   {
		  Label4->Visible=True;
	   }
 else if(Edit1->Text==""){


  SQL = "insert  INTO [dbo].[TabFilmes] (Descricao,fk_idDiretor) VALUES ('" + Edit2->Text + "',"+ Edit3->Text+")";
 FDQuery1->SQL->Text = SQL;
 FDQuery1->ExecSQL();

SQL="select max(ID) As ID from TabFilmes";
FDQuery2->SQL->Text=SQL;
FDQuery2->Open();
Edit1->Text = FDQuery2ID->AsString;
	  Button1->Enabled = False;
}


SQL = "update  [dbo].[TabFilmes] set fk_idDiretor =" +Edit3->Text+","" descricao ='"  +Edit2->Text +"' where id =" + Edit1->Text +"";
 FDQuery4->SQL->Text = SQL;
 FDQuery4->ExecSQL();
  Label6->Visible=True;
   }


//---------------------------------------------------------------------------


void __fastcall TForm4::Button3Click(TObject *Sender)
{
		Edit1->Enabled = True;
		Edit1->ReadOnly = False;
}
//---------------------------------------------------------------------------

void __fastcall TForm4::Edit1Change(TObject *Sender)
{
		  Button2->Enabled=True;
}
//---------------------------------------------------------------------------

void __fastcall TForm4::Edit1KeyPress(TObject *Sender, System::WideChar &Key)
{

String SQL;
SQL="select * from TabFilmes where ID = '" + Edit1->Text + "'";
FDQuery4->SQL->Text=SQL;
FDQuery4->Open();
Edit2->Text = FDQuery4Descricao->AsString;
Edit3->Text = FDQuery4fk_idDiretor->AsString;
if(Edit2->Text ==" ")
{
		Label5->Visible=True;

}

else

{
	Button3->Enabled=False;
	Button1->Enabled=True;
	Button2->Enabled=True;

}

}
//---------------------------------------------------------------------------


void __fastcall TForm4::Button2Click(TObject *Sender)
{
	String SQL;
    SQL="delete from TabFilmes where ID = '" + Edit1->Text + "'";
	FDQuery1->SQL->Text=SQL;
	Label4->Visible=True;
	Button2->Enabled=False;
	Button3->Enabled=True;
	Button1->Enabled=True;
	Edit1->Text="";
	Edit2->Text="";
	Edit3->Text="";
}
//---------------------------------------------------------------------------

