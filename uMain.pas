unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfmMain = class(TForm)
    Rectangle1: TRectangle;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.fmx}

uses FMX.MaterialIconsFont;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  MaterialIconsFontAssign(SpeedButton1);
  MaterialIconsFontAssign(SpeedButton2);
  MaterialIconsFontAssign(SpeedButton3);
  MaterialIconsFontAssign(Label1);
  SpeedButton1.Text := mi_arrow_back;
  SpeedButton2.Text := mi_menu;
  SpeedButton3.Text := mi_more_vert;
  Label1.Text := mi_grain + ' ' + mi_contacts + ' ' + mi_pause + ' ' + mi_chat + ' ' + mi_radio + ' ' + mi_snooze + ' ' +
                 mi_view_day + ' ' + mi_pets + ' ' + mi_thumb_up + ' ' + mi_video_call;
  {$IFDEF  MACOS}
  SpeedButton1.TextSettings.FontColor := TAlphaColorRec.Lightcoral;
  SpeedButton2.TextSettings.FontColor := TAlphaColorRec.Lightcoral;
  SpeedButton3.TextSettings.FontColor := TAlphaColorRec.Lightcoral;
  Rectangle1.Fill.Kind := TBrushKind.None;
  {$ENDIF}
end;

end.
