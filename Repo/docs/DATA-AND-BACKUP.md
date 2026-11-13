# Data and backups

## Where data lives
Browser `localStorage` under the origin the app was opened from. Keys:

| Key | Contents |
|---|---|
| `hookpoint.pitches` | all pitches: plan, narrative, stack, people, prep, responses, outcome, strategist thread |
| `hookpoint.contacts` | contacts with personality attributes |
| `hookpoint.deck` | slide text and notes |
| `hookpoint.dojo` | Dojo reps and the fun check |
| `hookpoint.guide` | Guide reading progress and last section |
| `hookpoint.view` | selected screen view |
| `hookpoint.theme` | light/dark/auto |
| `hookpoint.seeded*` | one-time seeding/migration flags |
| API settings | Admin tile; never included in exports |

## Seeding and migrations
First launch seeds the sample deals (five from the lectures) and the real ANNCR AI deals. Each later version carries a one-time migration flag (`hookpoint.seeded6x`) so an existing device receives new fields without losing edits. Opening a newer `index.html` on a device with older data is the supported upgrade path.

## Backups
Bar → Backup → **Export** writes a JSON file; **Import** replaces the store with its contents. Export before trying a new build on a device you care about. Keep the latest export in `backups/` (git-ignored by default).

## What leaves the device
Nothing, unless you connect Claude in Admin. Then the deal brief (plan, narrative, people, odds factors, logged responses) is sent to Anthropic's API when you use Strategist, AI pitch, or card reading. Client names and responses you log are part of that brief.
