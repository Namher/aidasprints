---
name: adding-photos
description: Add Sadia's photos of her 3D prints, knitting and market days to the Aidas Prints website. Use when she mentions photos, pictures, images, the gallery, the Makes page, or says she has new work to show.
---

# Adding photos

## What Sadia does

Tell her this in plain words:

1. Save the photo on this computer.
2. Drag it into the `photos` folder inside the `aidasprints` folder.
3. Tell Cursor what it is, for example: "I added a photo of a blue planter."

## What you do

1. Look in `photos/` for new files. If a name has spaces or is messy (like `IMG_4521 (2).JPG`), rename it to something simple and lowercase: `blue-planter.jpg`. Tell her the new name.
2. Ask her (or work out from what she said) a short caption and a plain description of what is in the picture. The description becomes the `alt` text.
3. Open `makes.html` and add a `<figure>` inside `<div class="gallery">`:

```html
<figure class="reveal">
  <img src="photos/blue-planter.jpg" alt="A small blue 3D printed planter with a succulent" />
  <figcaption>Blue planter, 3D printed</figcaption>
</figure>
```

4. **Replace placeholders first.** While `<div class="placeholder">` boxes still exist, swap one of those out instead of adding a new figure. When all placeholders are gone, add new figures at the top so the newest work shows first.
5. `index.html` has a "Recent makes" section with three figures. Keep it at three. When she adds a new favourite, replace the oldest one there.
6. Preview it (see the `previewing-the-website` skill) and show her.
7. Ask: "Happy with that? Would you like me to publish it?" Publish only on a yes (see `publishing`).

## Photo size

Phone photos are big. If a file is over about 2 MB, tell her it is a large photo and it will still work, but the page may load a little slower. Do not install tools to resize. If she wants smaller photos, the simple option is to take a screenshot of the photo on her phone, or ask Aqeel.

## Formats

JPG and PNG are best. HEIC (iPhone) will not show in browsers; ask her to share the photo as JPG or check with Aqeel.
