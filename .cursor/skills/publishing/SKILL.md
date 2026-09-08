---
name: publishing
description: Publish the Aidas Prints website to aidasprints.com.au by saving to GitHub so Cloudflare Pages deploys it. Use when Sadia says publish, put it online, make it live, upload, or when she has approved changes after a preview.
---

# Publishing

Only publish after Sadia has seen the preview and said yes.

## Before you push

Ask once, plainly: **"Shall I publish this to aidasprints.com.au now?"** Wait for a clear yes.

## Push

Run from the `aidasprints` folder. Git lives at `C:\Program Files\Git\cmd` and may not be on PATH in a fresh terminal.

```powershell
$env:Path = "C:\Program Files\Git\cmd;C:\Program Files\GitHub CLI;" + $env:Path
git add -A
git commit -m "Short plain sentence about what changed"
git push
```

Commit messages are short, plain sentences, e.g. `Add photo of the blue planter` or `New words on the About page`.

## After the push

1. Cloudflare Pages builds automatically. Check GitHub knows about it:

```powershell
gh api repos/Namher/aidasprints/commits/main/check-runs --jq ".check_runs[] | {name, status, conclusion}"
```

2. Wait for `conclusion: success` (usually under two minutes). Then confirm the live page shows the change, for example by fetching `https://aidasprints.pages.dev/`.
3. Tell Sadia in one sentence: "It is live. Have a look at aidasprints.com.au — if it still looks old, refresh the page in a minute."

## If something goes wrong

- `git push` rejected → run `git pull --rebase` then push again.
- GitHub login lost → run `gh auth login --web`, and ask Sadia to approve it in Chrome with sadia.akber@gmail.com.
- Site not updating after 10 minutes → tell her honestly and suggest she mention it to Aqeel. Do not create new accounts or change Cloudflare settings without him.
