[Setup]
AppName=SlippiKiller
AppVersion=1.0
DefaultDirName={localappdata}\SlippiKiller
DisableProgramGroupPage=yes
OutputBaseFilename=SlippiKillerInstaller
Compression=lzma
SolidCompression=yes

[Files]
Source: "dist\slippikiller.exe"; DestDir: "{app}"; Flags: ignoreversion

[Run]
Filename: "{app}\slippikiller.exe"; Description: "Start background app"; Flags: shellexec runhidden nowait

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; \
  ValueType: string; ValueName: "SlippiKiller"; ValueData: """{app}\slippi_killer.exe"""; Flags: uninsdeletevalue
