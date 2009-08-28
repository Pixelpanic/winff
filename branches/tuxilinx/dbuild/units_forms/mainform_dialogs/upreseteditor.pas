{
   This unit is part of the WinFF project
   Copyright (c) 2006 - 2009 Matthew Weatherford
   http://www.winff.org
   Licensed under the GNU GPL v3

   Preset Editor, edit WinFF presets
}


unit upreseteditor;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Buttons, StdCtrls, ComCtrls;

type

  { TPresetEditorDialog }

  TPresetEditorDialog = class(TForm)
     btnSave: TBitBtn;
     btnCancel: TBitBtn;
     btnExport: TBitBtn;
     btnImport: TBitBtn;
     btnAddUpdate: TButton;
     btnDelete: TButton;
     edtOutputExtension: TEdit;
     edtPresetLabel: TEdit;
     edtPresetCategory: TEdit;
     edtPresetCommandLine: TEdit;
     edtPresetName: TEdit;
     grpbxPresetEditor: TGroupBox;
     lblText2: TLabel;
     lblText1: TLabel;
     lblText3: TLabel;
     lblText4: TLabel;
     lblText0: TLabel;
     pnlMiddleSpacer: TPanel;
     pnlBottom: TPanel;
     pnlTopToolbar: TPanel;
     trvAvailablePresets: TTreeView;
     procedure btnCancelClick(Sender: TObject);
     procedure btnExportClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  PresetEditorDialog: TPresetEditorDialog;

implementation

uses
   uexportpreset;

{ TPresetEditorDialog }

procedure TPresetEditorDialog.btnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TPresetEditorDialog.btnExportClick(Sender: TObject);
begin
   ExportPresetDialog.ShowModal;
end;

initialization
  {$I upreseteditor.lrs}

end.
