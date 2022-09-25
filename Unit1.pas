unit Unit1;
{
Delphi Code Stuff :
Move TLabel to the border of Parent component.
}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
//Move Label to border of Panel1 (work with Left and Top)
//and BoundsRect of Parent
Label1.Left := Panel1.BoundsRect.Right;
Label1.Top  := Panel1.BoundsRect.Top+((Panel1.BoundsRect.Bottom - Panel1.BoundsRect.Top) - Label1.Height) div  2;

Label2.Left := Panel1.BoundsRect.Left - Label2.Width;
Label2.Top := Panel1.Top+((Panel1.BoundsRect.Bottom - Panel1.BoundsRect.Top)-Label2.Height) div 2;

Label3.Left := Panel1.Left+((Panel1.BoundsRect.Right - Panel1.BoundsRect.Left)-Label3.Width) div 2;
Label3.Top := Panel1.Top - Label3.Height;

Label4.Left := Panel1.Left+((Panel1.BoundsRect.Right - Panel1.BoundsRect.Left)-Label4.Width) div 2;
Label4.Top := Panel1.BoundsRect.Bottom;

Label5.Left := Panel1.BoundsRect.Left;
Label5.Top := Panel1.Top - Label5.Height;

Label6.Left := Panel1.BoundsRect.Left - Label6.Width;
Label6.Top := Panel1.BoundsRect.Top;

Label7.Left := Panel1.BoundsRect.Right - Label7.Width;
Label7.Top := Panel1.Top - Label7.Height;

Label8.Left := Panel1.BoundsRect.Right;
Label8.Top := Panel1.Top;


Label9.Left := Panel1.BoundsRect.Right;
Label9.Top := Panel1.BoundsRect.Bottom - Label9.Height;

Label10.Left := Panel1.BoundsRect.Right - Label10.Width;
Label10.Top := Panel1.BoundsRect.Bottom;


Label11.Left := Panel1.Left - Label11.Width;
Label11.Top := Panel1.BoundsRect.Bottom - Label11.Height;

Label12.Left := Panel1.Left;
Label12.Top  := Panel1.BoundsRect.Bottom;
end;

end.
