---
name: editing-the-website
description: Change wording, colours, or layout on the Aidas Prints website, or add a new section, card, step, or page. Use when Sadia wants to change text, add a section, add a market date, change colours, or make something bigger or prettier.
---

# Editing the website

Plain HTML and CSS. No build step. Edit, preview, ask before publishing.

## Where things live

| Sadia says | You edit |
|---|---|
| "the front page", "home" | `index.html` |
| "my photos", "gallery" | `makes.html` (see `adding-photos`) |
| "about me", "my story" | `about.html` |
| colours, fonts, sizes | `styles.css` — colours are in the `:root` block at the top |
| the fade-in effect | `script.js` (rarely needs touching) |

## Reusable pieces

Every section follows the same shape. Add it inside `<main>`.

```html
<section class="band">            <!-- "band" = soft cream background; leave it off for plain; "band-dark" = plum -->
  <div class="wrap">
    <div class="section-head reveal">
      <h2>Section title</h2>
      <p>One sentence about it.</p>
    </div>
    <!-- content goes here -->
  </div>
</section>
```

A card (use in a `<div class="cards">`):

```html
<article class="card reveal">
  <div class="icon" aria-hidden="true">🧶</div>
  <h3>Title</h3>
  <p>Two short sentences.</p>
</article>
```

A step (use in `<ol class="steps">`, inside a `band-dark` section): `<li class="reveal"><h3>Title</h3><p>Text.</p></li>`

A photo (use in `<div class="gallery">`): see `adding-photos`.

If a section should also appear in the top menu, add a link in every page's `<nav>`: `<a href="index.html#markets">Markets</a>` and give the section `id="markets"`.

## A "next market" notice

She will often want to say where she will be next. Add a small section on `index.html` under the hero:

```html
<section id="markets" class="band">
  <div class="wrap">
    <div class="section-head reveal">
      <h2>Next market</h2>
      <p>Saturday 21 September · Old Bus Depot Markets, Kingston · 10am – 4pm</p>
    </div>
  </div>
</section>
```

Update the date rather than adding a new one each time.

## Colours

Change a colour once in `:root` in `styles.css` and it changes everywhere. Keep text dark on light (or white on the plum band). If she picks a very light colour for text, say gently that it may be hard to read and offer a darker version of the same shade.

## Rules of thumb

- Keep her voice: first person, warm, short sentences.
- Business name is **Aidas Prints** — no apostrophe.
- Phone **0433 77 4396**, ABN **43 568 151 482**, no email.
- Preview after every change and show her. Ask before publishing.
- New page? Copy `about.html`, change the title, the `aria-current="page"` link, and the content. Add a link to it in every `<nav>`.
