# AutoHotkey Remaps

An AutoHotkey v2 script that remaps the Copilot key to Right Ctrl and adds line-navigation shortcuts.

## Requirements
- Windows
- [AutoHotkey v2](https://www.autohotkey.com/)

## Usage
Double-click `Remap.ahk` to run it. To start it with Windows, put a shortcut to it in your Startup folder (`Win+R`, then `shell:startup`).

## What it does

| Shortcut | Action |
|---|---|
| Copilot key | Acts as Right Ctrl |
| Ctrl+Alt+Left / Right | Jump to the start / end of the line |
| Shift+Ctrl+Alt+Left / Right | Select to the start / end of the line |
| Ctrl+Alt+Backspace | Delete from the cursor to the start of the line |
| Ctrl+Alt+Delete | Delete from the cursor to the end of the line |

On Windows, AltGr sends Ctrl+Alt, so these shortcuts work with the AltGr key too.
