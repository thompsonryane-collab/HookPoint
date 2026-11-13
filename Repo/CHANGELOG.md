# Changelog

## v7.24 — Pitches library
- New **Pitches** tile in the Deal section, in two parts.
- **Saved pitches**: pick a pitch and tap Save this pitch to keep a copy of it as it stands now (with the date and its odds). A saved copy can be restored as a new pitch, downloaded as a `.json` file, imported back from that file, or removed. Restoring never overwrites a live pitch.
- **Documents**: upload one or several files of the same types as Product — HTML, Excel (.xlsx), Word (.docx), PDF, PowerPoint (.pptx) and MP4, up to 250 MB each. Each document can be linked to a pitch, filtered by pitch, downloaded, sent to the Product analyzer, set as the plan's product material (Use in the plan), or removed. PDFs and videos can also be opened in a new tab.
- Saved copies and documents are stored in the browser's IndexedDB on the device. They are not part of Backup and do not sync between devices.

## v7.23 — Hook icon without the tile
- The app icon is now the gold hook and sparkle on its own, on a transparent background, with no teal tile behind it: `icons/icon.svg`, `icon-192.png`, `icon-256.png`, `icon-512.png`, `favicon-16.png` and `favicon-32.png`. The hook is enlarged to fill the space the tile took.
- Unchanged: `apple-touch-icon.png` (iOS) and the two maskable icons, which Android requires to be a filled square.

## v7.22 — Method named only as Pitch it
- The author credit is removed from the four instructions the app sends to Claude that still carried it (Strategist, Assistant and the two Reports AI prompts). No file in the build names the source book or its author.

## v7.21 — "Pitch it" throughout
- Every remaining mention of the method by its old name now reads **Pitch it**: two lines of report text (the portfolio subtitle and the scoring paragraph) and six instructions the app sends to Claude (Strategist, Narrative, Assistant, Reports AI analysis, Product analyzer).

## v7.20 — Guide heading
- The Training guide heading now reads **Pitch it, as HookPoint hones it**.

## v7.19 — Strategist input stays on the bottom edge
- The Strategist's text box and Send button are pinned flush to the bottom of the screen. They used to float above a strip where the conversation showed through underneath. The scroll-to-top button moves up so it no longer sits on Send.

## v7.18 — Harbor teal dark theme
- The dark theme's near-black background is replaced with **harbor teal**: background `#0f2027`, cards `#162b33`, top bar `#1b343d`, borders `#2a4852`, with muted text shifted to `#86a0a8` to match. Accent colours, the off-white fields and the light theme are unchanged.

## v7.17 — One-click light and dark
- The theme button flips between light and dark on every click. It used to cycle auto, light, dark, so one click in three changed nothing on screen. The app still follows the device setting until the first click; after that it keeps your choice. The button shows a sun in light and a moon in dark.

## v7.16 — Pitch plan uses the full width
- The pitch plan's reading column now runs to the right edge of the screen instead of stopping at 960 px.
- Every multi-line box in the plan (Notes, and the response fields) grows to fit its whole entry as you type, on load, and when the window changes width; no inner scrollbars or drag handles.

## v7.15 — Product analyzer
- New **Product** tile in the Deal section: upload a product file and Claude writes a first pitch assessment of it — a readiness score out of 100 with a verdict, the idea in one minute, the three why-now forces, secret sauce, track record, the frames to expect and respond with, a prize line, an intrigue hook, the ask, and what carries, what is missing and what to answer before the room.
- Reads **HTML, Excel (.xlsx), Word (.docx), PDF, PowerPoint (.pptx) and MP4**. Office files are unpacked on the device and sent as text; a PDF is sent whole (20 MB limit, API key connection only); a video is read from eight still frames, so its audio is not heard. Legacy .doc, .xls and .ppt files are not read.
- After the read it asks whether to **add the product to a pitch**: start a new pitch with it (title, product, idea, why-now, frames, ask and the file are filled in), or add it to an existing pitch, where only blank fields are filled and nothing already written is overwritten. Either way the read is added to Notes.
- Needs Claude connected in Admin; the tile badge shows OFF until it is. The last 30 analyses are kept on the device and can be reopened or removed.

## v7.14 — Cleaner dock headers
- The **Deal** and **Method** section headers in the tile dock show the name only; the small description lines are removed.

## v7.13 — Pitch plan reads like a page
- The section panel sits flush against the **left edge** and runs the full height of the screen in every screen view; it stays put while the screen scrolls.
- Each section has its **own colour**, matching the dashboard palette: a colour bar on its card in the panel, and a tinted screen with a coloured heading when it is open.
- The screen reads **top to bottom in one column**: the pitch title heads it, each line is a label on the left with its answer on the right, and short subheads group the lines (Basics: The deal, The room, The frames, The ask, Background). One-line fields are one line tall instead of a tall box; dates, numbers and dropdowns are sized to their content. The one-minute idea sentence is set as a readable line above its six blanks.
- Applies at 720 px and wider. Phones keep the tap-to-toggle cards and gain the subheads.

## v7.12 — Picker closes on select
- Ticking or unticking a pitch in the deal picker closes the dropdown and shows the result straight away. To aggregate several deals, reopen the picker for each one.

## v7.11 — Top card holds its height
- Selecting a pitch no longer leaves a tall empty space in the top dashboard card. The open deal picker was being counted in the card's height when the grid re-measured, and the card stayed that tall after the picker closed.

## v7.10 — Opens on the whole portfolio
- Every launch opens on **All deals · portfolio** with no pitch selected. A selection you make holds while the app is open. The working deal (the one the Deal tiles open on) still carries over between launches.

## v7.9 — Tile dock runs full height
- The left tile dock fills the full height of the screen in every screen view. It stopped short in Laptop, Desktop and Studio, where its height was taken from the browser window instead of the scaled canvas; it is now measured from the scroll area and re-measures when the window or view changes.

## v7.8 — Opens on the dashboard, everything collapsed
- Every launch lands on the **dashboard**, whatever tile the last session ended on.
- The **Deal** and **Method** dock sections open collapsed, along with every dashboard card. What you open stays open until you close the app. A page restored from the browser's back/forward cache counts as a launch.

## v7.7 — Pills hold their place
- Expanding or collapsing a dashboard pill no longer moves the page: the header you clicked stays exactly where it was. Fixes the jump toward the top that happened when the grid re-measured, and the slide that happened when a collapse shortened the page. Expand/collapse-all keeps the scroll position too.
- The dashboard opens with **every card collapsed** each time the app launches. Cards you open stay open while you move between tiles in that session.

## v7.6 — Dashboard bands
- **How we are weighted, by industry pitch** sits in its own column to the right of **Pipeline** (deal and portfolio dashboards).
- The smaller cards share one row: Why the number · Moves to 90 · Flip the room · The room on a deal; Where we lose points · Where we earn points · Frame matchups · Next rooms on the portfolio.
- The whole pill toggles: click anywhere on a collapsed card, or anywhere on an open card's header. Links inside a header (Projector ›, Strategist ›, All ›) still open their tile.

## v7.5 — Pitch plan panel
- Pitch plan: the section cards (and the probability card) now sit in a **left panel**; clicking a card opens it in the screen to the right, with the current card highlighted and Basics open by default. The panel stays in view while the screen scrolls. Applies at 720 px and wider (desktop views, iPhone landscape); narrower screens keep the tap-to-toggle cards.

## v7.4 — BattleCat in the data center pitch
- The SONARmobile Data Center deal now carries **BattleCat** (BC-ENG-001 Rev A and the 55-second concept video): robot first responder in the big idea, why-now, how-it-works, deal, prize, tension and time frame; the design-partner seat is where the first cat and kennel are built. Numbers card ready (8 min · 0 live-bus contacts · 30 weeks · about $435K hardware). The qualifying task is the report’s open question on read-only diagnostic ports. Existing installs update in place; people, date, amount and logged responses are kept.

## v7.3 — SONARmobile Data Center
- New deal loaded: **SONARmobile Data Center · BD introduction** (industry: Data centers), built from the SONARmobile Data Center app (v0.5). Prize frame against an open room; the ask is a sponsored tabletop drill on one site with the critical facilities lead present. Twenty-minute plan, full narrative, four-frame stack (cooling-clock intrigue story) and the product material attached.
- New contact: the BD POC as sponsor (placeholder name; profile marked as assumptions). Opens as the working deal on first load. Open items before the room: POC name, date, venue, pilot price, numbers card.

## v7.1 — Assistant
- New **Assistant** tile (Method): a conversation with the strategist that reads the current deal (or the whole portfolio) before every answer — odds, factors, the room, the stack, the words, what they said. Six quick prompts (read the room, weakest frame, prize line, why not 90, rehearse objections, debrief); threads persist per deal; copy and clear.
- Reports: **✦ AI analysis** button writes a five-part strategist read (frame read · status and the room · hot cognition · where the points go · three moves) into the report from its own facts, with Remove/regenerate. Reports also carry an always-visible deal dropdown; the hub bar has an expand/collapse-all control for the dashboard.

## v7.0 — Reports
- New **Reports** tile (Method section): a report builder modelled on the ANCCRai Report Builder — a left rail of four layers (Setup · Scope · Sections · Style & output) driving a block model that renders to a white paper preview with zoom, and exports to Print/PDF, Word (.doc) and HTML. Templates: 1-page decision brief, Pitch review, Post-room debrief, Portfolio review, Custom. Seventeen sections across deal and portfolio scope (BLUF, odds & calibration, factors, the room, the stack, narrative & words, moves to 90, what they said, scenario table; portfolio summary, pipeline, weighting by industry, lose/earn points, frame matchups, next rooms, client signal). Sections toggle, reorder and take options; classification marking top and bottom; five accents; charts on/off; computed or Claude-enriched BLUF narrative; saved definitions and JSON export. Hub bar and tile bars carry a back caret with screen history; all dashboard sections start collapsed and are colour-tinted.

## v6.9 — Portfolio dashboard
- Home opens on the **portfolio** view: average odds ring, open/won/lost/room-ready, open value and EV, next room countdown; at-a-glance averages (odds, stack heat, croc read, neediness, responses) with stack-hot percentages per frame and craft; **Where we lose points** and **Where we earn points** aggregated by factor; frame matchups; next rooms; client signal mix with latest responses; industry weighting; full pipeline.
- Deal picker is multi-select with a clear icon: none selected = portfolio, one = that deal’s dashboard, several = an aggregate of them. Tapping a pipeline row, a next room or an industry sets the selection. Selection persists.
- Text fields fill off-white in both themes; dark theme is dark gray with a fade; slim chrome bar pinned at the top.

## v6.8 — Hub
- Home is now a hub: one left dock with two collapsible sections — **Deal** (this room: Upcoming, Contacts, C Suite, Odds, Narrative, Stack, Intrigue, Tension, Clock) and **Method** (deliver, learn, train: Present, Strategist, Projector, Guide, Story, Dictionary, Frames, Dojo, Admin) — each a two-column tile grid with its own collapse caret; the dock itself tucks to an edge tab. State persists; the dashboard flexes into the space.
- Dashboard: dense auto-fit card grid with hover tooltips throughout, and a **How we are weighted, by industry pitch** section — the engine's points split into nine factor families, averaged per industry, with the current deal's net points by family.
- Dashboard in the centre: live odds ring with deal picker, at-a-glance KPIs, top factors, moves to 90, scenario toggles (shared with Odds), the four-frame stack, the room, what they said, craft (guide, dojo, Claude), and the full pipeline — every card opens its tile.
- Brand set as HookPoint in Syne; sticky shaded chrome bar; fixed views fill the window aspect; Full screen toggle for any view.

## v6.7 — Windows desktop
- Screen-view switcher (monitor icon): Fit · Laptop 1366×768 · Desktop 1920×1200 · Studio 2560×1440 · Present mode. Fixed-size views render on a scaled canvas when the window is smaller.
- Desktop layouts: multi-column tile grid, two-column forms, paired plan sections, Narrative phases and Stack frames side by side, fixed Guide chapter panel.
- `windows/HOOKPOINT-Windows.bat` app-mode launcher. PWA wiring (manifest, icons, service worker) for installable mobile.

## v6.6 — Steve (REPM, NAS Jacksonville) added as champion contact and seated in the pilot room.
## v6.5 — NAS Jacksonville becomes the pilot installation; Yorktown stays as the bench-test set.
## v6.4 — $5M contract value on both ANNCR AI deals; narrative absorbs the figure in Phase 2 and the push-pull.
## v6.3 — Real deal loaded: the 10-29 ANNCR AI exposure meeting (as held) and the shaped pilot pitch; Scott and Melissa as clients; twelve client responses logged.
## v6.2 — Training Guide tile: nine chapters, collapsible chapter panel, back-to-guide icon from any referenced tile.
## v6.1 — Client response capture (What they said): frame + signal read, reply rating, Odds factor, Projector aggregation, Strategist "Answer this". Fixed the Plan page rendering into a hidden wrapper (present since v5.17).
## v6.0 — Projector dashboard, Strategist, Dojo, five sample deals, logistic odds curve.
## v5.21 — Neediness meter, beta-trap rehearsal, three-point close, collapsible sections everywhere with a global toggle.
## v5.20 — Script scoring made visible, collapsible phases, scroll-to-top caret.
## v5.19 — Personality attributes on contacts; room and odds integration; 30-second action window.
## v5.18 — Stack tile: the four-frame hot cognition stack.
