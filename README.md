# HOOKPOINT — pitch engine

Pitch predictive intelligence built on the *Pitch it* method. One file runs everywhere:
the phone in your pocket, a Windows desktop, a 1920×1200 room screen, or a wall display.

- **Plan the room** — venue, decision maker, opposing frame, your frame, the people and how they decide.
- **Score the odds** — every point explained: frame match, status setup, the four-frame stack, neediness in the words, what the client has said. Target: 90% before anyone sits down.
- **Shape the deal** — Narrative, Stack (intrigue · prize · time · moral authority · the three-point close · the silence), Strategist (ask Claude for moves and apply the patch).
- **Learn from the room** — log what clients say; the engine reads the frame and the signal and rates your reply.
- **Read the product** — the Product analyzer takes an HTML, Excel, Word, PDF, PowerPoint or MP4 file and writes a first pitch assessment you can add to a new or existing pitch (needs Claude connected).
- **Keep the record** — the Pitches tile saves dated copies of a pitch and stores the documents that go with it; Reports builds a decision brief, pitch review, debrief or portfolio review for print, Word or HTML.
- **Train** — the nine-chapter Guide, the Story deck, the Dictionary, the Dojo.

Everything is local. No server, no account. Data lives in the browser's storage on each device; **Backup** in the bar exports and imports it.

## Repository layout

```
index.html                 the whole engine (mobile + desktop)
manifest.webmanifest       installable-app metadata (name, icons, standalone)
sw.js                      service worker: offline cache when served over https
icons/                     app icons: icon.svg (master), 192/256/512 png, maskable 512, apple-touch 180, favicons
windows/HOOKPOINT-Windows.bat   desktop launcher: opens index.html as an app window
docs/                      install and operations notes
backups/                   drop exported .json backups here (git-ignored by default)
.github/workflows/pages.yml     publishes the repo to GitHub Pages on every push to main
CHANGELOG.md               version history
```

## Quick start

### 1. Put it on GitHub
```bash
git init
git add .
git commit -m "HookPoint"
git branch -M main
git remote add origin https://github.com/<you>/hookpoint.git
git push -u origin main
```
Then in the repo: **Settings → Pages → Build and deployment → Source: GitHub Actions.**
The included workflow publishes `main` to `https://<you>.github.io/hookpoint/` on every push.

> If this should stay private, make the repo private; GitHub Pages on a private repo needs a Pro/Team plan. The alternative is to keep Pages off and sideload `index.html` to each device (see docs/MOBILE.md).

### 2. Mobile (iPhone / iPad / Android)
Open the Pages URL in Safari (iOS) or Chrome (Android) → **Share → Add to Home Screen**.
It installs as a standalone app with its own icon, works offline, and keeps its data. Full notes: [docs/MOBILE.md](docs/MOBILE.md).

### 3. Windows desktop
Clone or download the repo, then double-click `windows/HOOKPOINT-Windows.bat`.
It opens `index.html` in Edge or Chrome **app mode** (own window, no tabs, own storage profile).
Pass `laptop`, `desktop`, or `studio` to size the window. Inside the app, the **monitor icon** in the bar switches between Fit · Laptop 1366×768 · Desktop 1920×1200 · Studio 2560×1440 · Present mode. Full notes: [docs/DESKTOP.md](docs/DESKTOP.md).

### 4. Connect Claude (optional)
**Admin** tile → paste an Anthropic API key. It unlocks live narrative generation, the Strategist, the Assistant, the Product analyzer, AI analysis in Reports, and card reading. The key stays in local storage on that device only. Without a key everything else works; the Strategist returns template moves.

## Data, privacy, backups
- Storage is per device and per origin. Phone and PC do not sync automatically; use **Backup → Export** on one and **Import** on the other.
- Saved pitch copies and documents in the **Pitches** tile are kept in the browser's IndexedDB on the device. They are not part of Backup; download the ones you need to keep elsewhere.
- Client names, responses and notes you log are yours and stay on the device. Nothing is transmitted except what you send to Anthropic when you use the Claude features.
- See [docs/DATA-AND-BACKUP.md](docs/DATA-AND-BACKUP.md) for the storage keys, what a backup contains, and how versions migrate.

## Releasing a new build
1. Replace `index.html` with the new build (keep the file name).
2. Set `CACHE` in `sw.js` to the new version (e.g. `hookpoint-v7.26`) so installed phones fetch the new shell. It should match the version shown in the app's bar.
3. Add a line to `CHANGELOG.md`, commit, push. Pages redeploys automatically.

## License
Not yet chosen. Until a LICENSE file is added, all rights are reserved by the author. If this is produced in the course of U.S. Government work, confirm the applicable terms before publishing publicly.
