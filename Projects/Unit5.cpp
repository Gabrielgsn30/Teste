//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit5.h"
#include "Unit1.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm5 *Form5;
//---------------------------------------------------------------------------
__fastcall TForm5::TForm5(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm5::RadioButton1Click(TObject *Sender)
{

		Edit2->Enabled=False;
}
//---------------------------------------------------------------------------


void __fastcall TForm5::RadioButton2Click(TObject *Sender)
{
    Edit2->Enabled=False;
}
//---------------------------------------------------------------------------

void __fastcall TForm5::PesquisarClick(TObject *Sender)
{
if(RadioButton1->Checked==True and RadioButton2->Checked==False)
{
	if(Edit1->Text=="")
	{
		String SQL;
		SQL="select * from TabDiretor";
		FDQuery2->SQL->Text=SQL;
		FDQuery2->Open();
		DataSource1->DataSet=FDQuery2;
		DBGrid1->DataSource=DataSource1;
	}
	else
	{

		String SQL;
		SQL="select * from TabDiretor where ID = '" + Edit1->Text + "'";
		FDQuery2->SQL->Text=SQL;
		FDQuery2->Open();
		DataSource1->DataSet=FDQuery2;
		DBGrid1->DataSource=DataSource1;

	}


}

else if
(RadioButton2->Checked==True and RadioButton1->Checked==False)
{
	if(Edit2->Text=="")
	{
		String SQL;
		SQL="select * from TabFilmes";
		FDQuery1->SQL->Text=SQL;
		FDQuery1->Open();
		DataSource1->DataSet=FDQuery1;
		DBGrid1->DataSource=DataSource1;
	}
	else
	{

		String SQL;
		SQL="select * from TabFilmes where ID = '" + Edit1->Text + "'";
		FDQuery1->SQL->Text=SQL;
		FDQuery1->Open();
		DataSource1->DataSet=FDQuery1;
		DBGrid1->DataSource=DataSource1;

	}



  }
}
