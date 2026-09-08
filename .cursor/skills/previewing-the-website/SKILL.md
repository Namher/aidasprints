---
name: previewing-the-website
description: Show Sadia the Aidas Prints website on this computer before anything goes online. Use when she says show me, let me see, preview, open the site, how does it look, or after any change to the HTML, CSS or photos.
---

# Previewing the website

Local first. Nothing here touches the internet.

## Start the preview

Run the bundled script (Windows PowerShell, nothing to install). It serves the folder at `http://localhost:8321/`:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File ".cursor/skills/previewing-the-website/scripts/serve.ps1"
```

Run it in the background and leave it running. If it prints "already in use", the preview is already up — carry on.

## Show her

1. Open `http://localhost:8321/` (or `/makes.html`, `/about.html`) in Cursor's browser with `browser_navigate` and take a screenshot.
2. Say in one sentence what changed and where to look. Example: "The new planter photo is the first picture on the Makes page."
3. If she is on a phone-sized check, emulate a narrow screen (about 390 px wide) and screenshot again so she sees the mobile view too.

Pages auto-refresh on reload; she can press F5 in the preview after each change.

## Design Mode (she tweaks it herself)

See [design-mode.md](design-mode.md) for the click-by-click steps to give her. In short: she opens `http://localhost:8321/` in the Agents Window browser, presses `Ctrl` + `Shift` + `D`, clicks a thing, and says in words what to change. The agent edits the files; she presses `F5` to see it. Then you tidy the change if needed and preview again.

## Then

Ask what she thinks. Change, preview, repeat. When she says it looks right, ask: **"Shall I publish this to aidasprints.com.au?"** and follow the `publishing` skill.

## Stop the preview

Not needed day to day. If a fresh start is required, find the process with `Get-CimInstance Win32_Process -Filter "Name='powershell.exe'"` where the command line contains `serve.ps1`, and stop only that process id.
