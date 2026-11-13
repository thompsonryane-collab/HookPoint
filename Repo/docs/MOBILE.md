# Mobile install

## Option A — GitHub Pages (recommended)
1. Push the repo and enable Pages (Settings → Pages → Source: GitHub Actions).
2. On the phone, open `https://<you>.github.io/hookpoint/` in **Safari** (iOS) or **Chrome** (Android).
3. Share → **Add to Home Screen**. Accept the name HOOKPOINT.
4. Open it from the home screen. It runs standalone (no browser chrome), works offline after the first load, and keeps its data under that origin.

Updates: push a new `index.html` and bump `CACHE` in `sw.js`. The installed app picks up the new build on its next open with a connection.

## Option B — sideload the file (no hosting)
Send `index.html` to the phone (AirDrop, Files, email). Open it from the Files app in Safari.
Data persists per file location, so keep opening the same copy. Offline caching and the home-screen icon are not available this way; the app still works fully.

## Moving data between devices
Bar → **Backup** → Export produces a `.json` with pitches, contacts, responses, Dojo reps, Guide progress and settings (not the API key). Import it on the other device. The same file restores a wiped phone.

## iOS notes
- Present mode and swipe navigation are designed for touch; landscape gives the two-column panels.
- If storage ever looks empty after an iOS update, Import the latest backup from Files.
