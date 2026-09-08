# Design Mode — how Sadia points at things

Design Mode lets Sadia **click something on her website and say what to change**. It is not a colour picker or slider. She clicks, she talks (or types), and the agent edits the files. Then she refreshes to see it.

Give her these steps in this order, one or two at a time.

## Open the browser inside Cursor

1. Press `Ctrl` + `Shift` + `P`. A search box appears at the top.
2. Type **Open Agents Window** and press `Enter`.
3. In that window, click the **File** menu, then **New Browser**.
   (Or `Ctrl` + `Shift` + `P` again, type **Open Browser**, `Enter`.)
4. To get back to the normal view later: `Ctrl` + `Shift` + `P`, type **Open IDE**, `Enter`.

## Load the site

The browser cannot open the file straight from the folder. Two easy choices:

- **Working locally (usual):** ask the agent "Start the preview." The agent runs the script in this skill. Then type `http://localhost:8321/` in the browser's address bar and press `Enter`.
- **Looking at the live site:** type `https://aidasprints.com.au`. Changes she asks for still land in the files here, but she will not see them on the live page until they are published.

## Turn on Design Mode

- Wait for the page to finish loading. A **Design Mode** button (a pen) appears in the browser toolbar. Click it, or press `Ctrl` + `Shift` + `D`.
- The button hides while the page is loading. If it is missing, refresh and wait.
- `Ctrl` + `Shift` + `D` again turns it off.

## Change something

1. Click the words, heading, photo or button she wants to change. It lights up and is attached to the chat.
2. In the chat box, say the change in plain words. Examples:
   - "Make this heading dark green."
   - "Change this text to *Handmade in Canberra*."
   - "Make these words bigger."
   - "More space above this picture."
   - "Make this button match that one." (click two things first)
3. Press `Enter`. The agent edits `index.html`, `makes.html`, `about.html` or `styles.css`.
4. Press the browser's refresh button (or `F5`) to see it.

Handy extras: hold `Shift` and drag to draw a box around an area; `Alt` + click adds an element to what she is typing; the microphone in the chat box lets her talk instead of type.

## What the agent does after a Design Mode edit

- Read the change. Keep it tidy — prefer editing a colour in `:root` over adding a one-off style. Keep text readable (dark on light).
- Preview and say in one sentence what changed.
- Ask: **"Shall I publish this to aidasprints.com.au?"** Publish only on a clear yes.

Docs: [Design Mode](https://cursor.com/docs/agent/design-mode) · [Browser](https://cursor.com/docs/agent/tools/browser) · [Agents Window](https://cursor.com/docs/agent/agents-window)
