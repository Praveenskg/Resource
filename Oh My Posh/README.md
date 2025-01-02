
# Oh My Posh 

A Customized  terminal 


## Installation

Install With  Winget 

```bash
 winget install JanDeDobbeleer.OhMyPosh -s winget
```
    


Install a font 
```bash
  oh-my-posh font install
```

Configure your terminal/editor to use the installed font

Create Powershell Profile

```bash
 notepad $PROFILE
```
```bash
New-Item -Path $PROFILE -Type File -Force
```
Install terminal-icon

```bash
 Install-Module -Name Terminal-Icons -Repository PSGallery
```
     
Add the following snippet as the last line to your PowerShell profile script:

```bash
oh-my-posh init pwsh --config "C:\Users\Praveen Singh\Documents\PowerShell\paradox.omp.json" | Invoke-Expression
Import-Module -Name Terminal-Icons
```

Create  a  file named ``` paradox.omp.json``` 

paste the below code 

```json
{
  "$schema": "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json",
  "blocks": [
    {
      "alignment": "left",
      "segments": [
        {
          "background": "#ffe9aa",
          "foreground": "#100e23",
          "powerline_symbol": "\ue0b0",
          "style": "powerline",
          "template": " \uf0e7 ",
          "type": "root"
        },
        {
          "background": "#ffffff",
          "foreground": "#100e23",
          "powerline_symbol": "\ue0b0",
          "style": "powerline",
          "template": " {{ .UserName }} ",
          "type": "session"
        },
        {
          "background": "#91ddff",
          "foreground": "#100e23",
          "powerline_symbol": "\ue0b0",
          "properties": {
            "folder_icon": "\ue62a",
            "folder_separator_icon": " \ue0b1 ",
            "home_icon": "\ue70f",
            "style": "full"
          },
          "style": "powerline",
          "template": " {{ .Path }} ",
          "type": "path"
        },
        {
          "background": "#95ffa4",
          "foreground": "#193549",
          "powerline_symbol": "\ue0b0",
          "style": "powerline",
          "template": " \uf09b {{ .HEAD }} ",
          "type": "git"
        },
        {
          "background": "#906cff",
          "foreground": "#100e23",
          "powerline_symbol": "\ue0b0",
          "style": "powerline",
          "template": " \ue235 {{ if .Error }}{{ .Error }}{{ else }}{{ if .Venv }}{{ .Venv }} {{ end }}{{ .Full }}{{ end }} ",
          "type": "python"
        },
        {
          "background": "#ff8080",
          "foreground": "#ffffff",
          "powerline_symbol": "\ue0b0",
          "style": "powerline",
          "template": " \ue20f ",
          "type": "status"
        }
      ],
      "type": "prompt"
    }
  ],
  "version": 2
}
```


