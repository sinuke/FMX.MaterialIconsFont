program prjMaterialIconsFont;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMain in 'uMain.pas' {fmMain},
  FMX.MaterialIconsFont in 'FMX.MaterialIconsFont.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
