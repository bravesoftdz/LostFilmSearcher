//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
TStringList *TXT_Name = new TStringList;
TStringList *TXT_NameTwo = new TStringList;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Column_Optimized(void)
{
//������������ ��������
	for(int i = 0; i < 5 ; i++) //9 - ���������� �������� � �����, ������� ��� �������� �� ���� ����������/�������� �������� ����
		{
			if(i == 2) DBGrid1->Columns->Items[i]->Width = 200; //������ ��������
			else DBGrid1->Columns->Items[i]->Width = 30;  //��������� �� 100
		}
}
//---------------------------------------------------------------------------
int Slee_p(int interval)
	{
		for(DWORD tt=GetTickCount();GetTickCount()-tt<1;Sleep(interval))
			Application->ProcessMessages();
	}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
	int i,k=0;
	Memo2->Text="                                                   --- < �������� ������ > ---";
	ADOQuery1->First();
	ProgressBar1->Visible=true;
	ProgressBar1->Max=ADOQuery1->RecordCount;
		for(i=1;i<=ADOQuery1->RecordCount;i++)
			{
				TXT_Name->Text= IdHTTP1->Get(ADOQuery1->FieldByName("Host")->AsString);
				if ( TXT_Name->Text.Pos("<title> "+ADOQuery1->FieldByName("Name")->AsString) )
					{
						k++;
						Memo2->Lines->Add(ADOQuery1->FieldByName("Name")->AsString+" - GooD");
					}
				else
					Memo2->Lines->Add(ADOQuery1->FieldByName("Name")->AsString+" - BaD");
				ADOQuery1->Next();
				ProgressBar1->Position=i;
				Slee_p(0);
			}
			ProgressBar1->Visible=false;
	 Memo2->Lines->Add(" - ������� ������ ["+IntToStr(k)+" �� " +IntToStr(ADOQuery1->RecordCount)+"]");
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
	int i,k = 0;

	Memo2->Clear();
	ADOQuery1->First();
	ProgressBar1->Visible=true;
	ProgressBar1->Max=ADOQuery1->RecordCount;
		for(i=1;i<=ADOQuery1->RecordCount;i++)
			{
				TXT_Name->Text = IdHTTP1->Get(ADOQuery1->FieldByName("Host")->AsString);
				Edit1->Text = ADOQuery1->FieldByName("Last_seson")->AsString;
				Edit2->Text = StrToInt(ADOQuery1->FieldByName("Last_series")->AsString) + 1;
				if( (Edit1->Text=="") || (Edit1->Text=="0") || (Edit2->Text=="") || (Edit2->Text=="0") )
					{
						Edit1->Text=1;
						Edit2->Text=1;
					}
				AnsiString Name = ADOQuery1->FieldByName("Name")->AsString;

				if( !TXT_Name->Text.Pos(Edit1->Text + " ����� " + Edit2->Text + " �����"))
					{
						Edit1->Text = (StrToInt(Edit1->Text) +1);
						Edit2->Text = 1;
					}

				while ( TXT_Name->Text.Pos(Edit1->Text + " ����� " + Edit2->Text + " �����"))
					{
					TXT_NameTwo->Text=TXT_Name->Text.Delete(1,TXT_Name->Text.Pos(Edit1->Text + " ����� " + Edit2->Text + " �����"));
					TXT_NameTwo->Text = TXT_NameTwo->Text.Delete(1,TXT_NameTwo->Text.Pos("4b4b4b")+7);
					Memo2->Lines->Add( Name + " " + Edit1->Text + " ����� " + Edit2->Text + " �����" + " [" + TXT_NameTwo->Text.SubString( 1,TXT_NameTwo->Text.Pos("</span>") -2 ) + "]" );

					ADOQuery2->Append();  //���������� � �������
						ADOQuery2->FieldByName("Name")->AsString = Name;
						ADOQuery2->FieldByName("Last_seson")->AsString = Edit1->Text;
						ADOQuery2->FieldByName("Last_series")->AsString = Edit2->Text;
					ADOQuery2->Post();  //-----------------------

					k++;
					ADOQuery1->Edit();
						ADOQuery1->FieldByName("Last_seson")->AsString = Edit1->Text;
						ADOQuery1->FieldByName("Last_series")->AsString = Edit2->Text;
					ADOQuery1->Post();
					Edit2->Text=(StrToInt(Edit2->Text) +1);
					if( !TXT_Name->Text.Pos(Edit1->Text + " ����� " + Edit2->Text + " �����"))
						{
							Edit1->Text = (StrToInt(Edit1->Text) +1);
							Edit2->Text = 1;
						}
					}

				ADOQuery1->Next();
				ProgressBar1->Position=i;
				Slee_p(0);
			}
			ProgressBar1->Visible=false;
	if(k==0)	Memo2->Text="                            ------------------ ������ ������, �������� ------------------";
	if(k==1)	Memo2->Lines->Add("                            --------------- �����: ����� "+IntToStr(k)+"  ����� �����---------------");
	if( (k>=2) && (k<=4) )	Memo2->Lines->Add("                            --------------- �����: ����� "+IntToStr(k)+"  ����� �����---------------");
	if(k>2)	Memo2->Lines->Add("                            --------------- �����: ����� "+IntToStr(k)+"  ����� �����---------------");
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{
	int screenW=GetSystemMetrics(SM_CXSCREEN);
	this->Left=screenW-this->Width-10;
	this->Top=10;
	this->Height=321;
	 ADOQuery1->Active = true; //��������� ���� (� ����� ������� ���������� ������� � ��������� "SQL"
	 Column_Optimized(); //������������ ��������, � �� ���������� ��� �� ��������� �� ������ ������
}
//---------------------------------------------------------------------------




void __fastcall TForm1::Button3Click(TObject *Sender)
{
	ShellExecute(Handle, L"open", ADOQuery1->FieldByName("Host")->AsString.c_str(),0, 0, SW_SHOWNORMAL);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
{
	while (GroupBox2->Height>0)
		{
			GroupBox2->Height-=15;
			Slee_p(1);
		}
	GroupBox2->Visible=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::DBGrid1DblClick(TObject *Sender)
{
	Edit3->Text=ADOQuery1->FieldByName("Name")->AsString;
	Edit4->Text=ADOQuery1->FieldByName("Host")->AsString;
	SpinEdit1->Text=ADOQuery1->FieldByName("Last_seson")->AsString;
	SpinEdit2->Text=ADOQuery1->FieldByName("Last_series")->AsString;

	if(GroupBox2->Visible==false)
		{
			GroupBox2->Height=0;
			GroupBox2->Visible=true;
			while (GroupBox2->Height<135)
				{
					if(GroupBox2->Height==130)
						GroupBox2->Height=135;
					else
						GroupBox2->Height+=15;
					Slee_p(1);
				}
		}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button7Click(TObject *Sender)
{
	Button4Click(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button6Click(TObject *Sender)
{
	if(GroupBox2->Visible==true)
		DBGrid1DblClick(Sender);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::DBGrid1CellClick(TColumn *Column)
{
	if(GroupBox2->Visible==true)
		DBGrid1DblClick(0);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button5Click(TObject *Sender)
{
	ADOQuery1->Edit();
		ADOQuery1->FieldByName("Name")->AsString=Edit3->Text;
		ADOQuery1->FieldByName("Host")->AsString=Edit4->Text;
		ADOQuery1->FieldByName("Last_seson")->AsString=SpinEdit1->Text;
		ADOQuery1->FieldByName("Last_series")->AsString=SpinEdit2->Text;
	ADOQuery1->Post();
	Button4Click(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button8Click(TObject *Sender)
{
	ADOQuery1->Prior();
	if(GroupBox2->Visible==true)
		DBGrid1DblClick(0);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button9Click(TObject *Sender)
{
	ADOQuery1->Next();
	if(GroupBox2->Visible==true)
		DBGrid1DblClick(0);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button10Click(TObject *Sender)
{
	if(this->Height==321)
		{
			this->Constraints->MaxHeight=453;
			this->Constraints->MinHeight=453;
			GroupBox3->Visible=true;
			if(ADOQuery2->RecordCount>0)
				Button11->Visible=true;
		}
	else
		{
			this->Constraints->MaxHeight=321;
			this->Constraints->MinHeight=321;
			GroupBox3->Visible=false;
			Button11->Visible=false;
		}
	ADOQuery2->Last();

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button11Click(TObject *Sender)
{
	ADOQuery1->First();
	if(ADOQuery2->RecordCount>0)
		while(ADOQuery2->RecordCount>0)
			{
				ADOQuery2->Delete();
			}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::DBGrid2TitleClick(TColumn *Column)
{
	if((ADOQuery2->Sort.Pos(Column->FieldName) > 0) && (ADOQuery2->Sort.Pos("ASC") > 0))
		ADOQuery2->Sort = Column->FieldName + " DESC";
	else ADOQuery2->Sort = Column->FieldName + " ASC";
}
//---------------------------------------------------------------------------

