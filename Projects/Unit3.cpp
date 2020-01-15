//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit3.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
	: TForm(Owner)
{
 if(Edit1->Text != "")
 {
	Button2->Enabled = True;
 }
 else
  {
	   Button2->Enabled = False;
  }

}
//---------------------------------------------------------------------------
void __fastcall TForm3::Button1Click(TObject *Sender)
{
if(Edit1->Text=="")
   {
 String SQL;
 SQL = "insert  INTO [dbo].[TabDiretor] VALUES ('" + Edit2->Text + "')";
 FDQuery1->SQL->Text = SQL;
 FDQuery1->ExecSQL();

SQL="select max(ID) As ID from TabDiretor";
FDQuery2->SQL->Text=SQL;
FDQuery2->Open();
Edit1->Text = FDQuery2ID->AsString;
	   Button1->Enabled = False;
  }

  else

  {

 String SQL;
	SQL = "update  [dbo].[TabDiretor] set descricao ='"  +Edit2->Text +"' where id =" + Edit1->Text +"";
 FDQuery1->SQL->Text = SQL;
 FDQuery1->ExecSQL();

   }
}
//---------------------------------------------------------------------------




void __fastcall TForm3::Button3Click(TObject *Sender)
{

		Edit1->Enabled = True;
		Edit1->ReadOnly = False;

}
//---------------------------------------------------------------------------

void __fastcall TForm3::Edit1Change(TObject *Sender)
{
	  Button2->Enabled=True;
}
//---------------------------------------------------------------------------

void __fastcall TForm3::Edit1KeyPress(TObject *Sender, System::WideChar &Key)
{
String SQL;
SQL="select * from TabDiretor where ID = '" + Edit1->Text + "'";
FDQuery3->SQL->Text=SQL;
FDQuery3->Open();
Edit2->Text = FDQuery3Descricao->AsString;
if(Edit2->Text ==" ")
{
		Label3->Visible=True;

}

else

{
	Button3->Enabled=False;
	Button1->Enabled=True;
	Button2->Enabled=True;

}

}
//---------------------------------------------------------------------------

void __fastcall TForm3::Button2Click(TObject *Sender)
{
String SQL;
SQL="delete from TabFilmes where ID = '" + Edit1->Text + "'";
FDQuery4->SQL->Text=SQL;
	Label4->Visible=True;
	Button2->Enabled=False;
	Button3->Enabled=True;
	Button1->Enabled=True;
	Edit1->Text="";
	Edit2->Text="";

}
//---------------------------------------------------------------------------

