# Windows desktop

## Launch
`windows/HOOKPOINT-Windows.bat` opens `index.html` in Microsoft Edge (or Google Chrome) **app mode**: its own window and taskbar entry, no tabs or address bar, and a dedicated storage profile at `%LocalAppData%\HOOKPOINT\profile`.

```
HOOKPOINT-Windows.bat            laptop window (1366×800)
HOOKPOINT-Windows.bat desktop    1920×1200
HOOKPOINT-Windows.bat studio     2560×1440
```
Right-click the .bat → Send to → Desktop (create shortcut) for a desktop icon. To pin a specific size, edit the shortcut's Target to add `desktop` or `studio`.

## Screen views (inside the app)
The monitor icon in the bar (and top-right of Home) opens the view menu:

| View | Canvas | Layout |
|---|---|---|
| Fit to window | — | phone / tablet / any window |
| Laptop | 1366×768 | 8 tiles across, two-column forms, six Projector stats |
| Desktop | 1920×1200 | 10 tiles across, two-column deals, Stack frames and plan sections side by side, fixed Guide chapter panel |
| Studio | 2560×1440 | 12 tiles across, larger type for a wall or room screen |
| Present mode | — | the ten-slide sequence |

A fixed-size view renders on a canvas of exactly those pixels. In a smaller window the canvas scales to fit (dark surround) so you can preview the room's screen from a laptop; in a window that size or larger it runs 1:1. The choice persists.

## Data
The desktop profile is separate from the phone's. Export from one, Import on the other (Backup icon). Git-ignored `backups/` is a convenient place to keep the files.
