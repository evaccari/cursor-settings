# <samp><b>VS Code / Cursor Settings</b></samp>

Personalized configuration for VS Code / Cursor with theme, recommended extensions, and code snippets.

## Contents

- [`.vscode/settings.json`](./.vscode/settings.json) - Editor settings
- [`.vscode/extensions.json`](./.vscode/extensions.json) - Recommended extensions
- [`.vscode/global.code-snippets`](./.vscode/global.code-snippets) - Global code snippets

## Preview

<p align="center">
<img src="https://user-images.githubusercontent.com/11247099/110247185-ed26b380-7fa5-11eb-8fce-6c224bb6ef26.png">
<img src="https://user-images.githubusercontent.com/11247099/110247187-f1eb6780-7fa5-11eb-9258-620309e20961.png">
<sub><samp>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Theme | <a href="https://github.com/antfu/vscode-theme-vitesse">Vitesse Theme</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Font | <a href="https://input.djr.com/">Input Mono</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Icons | <a href="https://marketplace.visualstudio.com/items?itemName=Catppuccin.catppuccin-vsc-icons">Catppuccin Icons</a><br>
Product Icons | <a href="https://github.com/antfu/vscode-icons-carbon">Carbon</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</samp></sub>
</p>

## Installation

### Automatic Installation (Cursor)

The `install.ps1` PowerShell script automatically installs everything:

```powershell
.\install.ps1
```

The script will:
- Install all recommended extensions from `.vscode/extensions.json`
- Copy `settings.json` to `%APPDATA%\Cursor\User\settings.json`
- Copy `global.code-snippets` to `%APPDATA%\Cursor\User\snippets\global.code-snippets`

**Note**: The script requires PowerShell and the `cursor` CLI command to be available in your PATH.

## LICENSE

MIT
