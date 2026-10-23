# The Nice Beach Properties

Static website for The Nice Beach Properties (Nice Rental Management Corporation) — four vacation homes in Río Grande and Luquillo, Puerto Rico.

Built by [Morales Royal Industries](https://moralesroyalindustries.com/).

## Structure

- `index.html` — the whole site (HTML, CSS and JS inline)
- `photos/` — listing photos for each home
- `frames/` — image sequence for the scroll "build" hero
- `video/` — looping tour video (WebM + MP4) and poster
- `logos/` — booking channel icons (Airbnb, Vrbo, Booking.com, Guesty, Hopper)

No build step. External scripts load from cdnjs (three.js, Leaflet).

## Deploy

Any static host works: Netlify, Vercel, Cloudflare Pages or GitHub Pages.
Point it at the repository root; the publish directory is `/`.

## Editing booking links

In `index.html`, search for `var LINKS=` to update each home's Airbnb, Vrbo, Booking.com, Hopper and Guesty links.

## Guesty direct booking (embedded)

"Book direct" opens each home's Guesty Booking Engine page inside a booking window on the site (no new tab).
The URLs come from `LINKS.<home>.guesty`. The window has an "Open in new tab" fallback, and Cmd/Ctrl-click still opens a new tab.
When the site is itself shown inside another frame (for example a preview), it opens Guesty in a new tab instead.
