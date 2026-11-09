# Changelog

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
