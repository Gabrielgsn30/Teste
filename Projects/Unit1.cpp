//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{

 String SQL;

 SQL = "SELECT * FROM TABUSUARIOS WHERE ID = '" + Edit1->Text  + "'  and senha = '" + Edit2->Text + "'";
 FDQuery1->SQL->Text = SQL;
 FDQuery1->Open();

 if(FDQuery1ID->AsString == Edit1->Text and FDQuery1Senha->AsString == Edit2->Text )
  {

   Form2->Show();

  }

   else
	   {	Label4->Visible=true; }
}
//---------------------------------------------------------------------------
