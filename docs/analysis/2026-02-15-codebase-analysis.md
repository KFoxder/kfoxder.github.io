# Codebase Analysis — February 2026

## Overview

This is a well-structured Jekyll portfolio and blog site hosted on GitHub Pages at `www.kevinfox.dev`. It uses the `riggraz/no-style-please` remote theme, has 8 published posts, an interactive travel map with 76 locations, and GitHub Actions CI/CD with PR preview support.

## Strengths

- **Clean architecture** — Standard Jekyll layout with well-organized directories, consistent post naming (`YYYY-MM-DD-slug.markdown`), and proper front matter patterns.
- **Performance foundations** — Critical CSS inlined in `_includes/head.html`, DNS prefetch hints, lazy-loaded MapLibre GL JS on the travel page, and compressed SASS output.
- **Dark theme support** — CSS custom properties with `prefers-color-scheme` media query in `assets/css/main.scss`.
- **CI/CD** — Two GitHub Actions workflows: `deploy.yml` for production and `pr-preview.yml` with automatic PR commenting and cleanup on close.
- **Production-only analytics** — Google Analytics conditionally loaded only when `jekyll.environment == "production"`.
- **Documentation** — `CLAUDE.md`, `AGENTS.md`, and a design document in `docs/plans/` provide clear project guidance.

## Recommended Improvements (by priority)

### High Priority

#### 1. Add alt text to images

`_posts/2024-06-01-jane-street-numbers-4.markdown` has two images with empty alt attributes:

```markdown
![](/assets/js_numbers_4_example_1.png)
![](/assets/js_numbers_4_example_2.png)
```

These should have descriptive alt text for accessibility compliance.

#### 2. Integrate image optimization into the build pipeline

Images account for ~670 KB (95% of the repo's content size). `scripts/optimize-images.sh` exists but is macOS-only and not wired into CI. Adding a GitHub Actions step to compress images or convert to WebP before deployment would reduce page weight.

#### 3. Add `jekyll-sitemap` plugin

The `jekyll-sitemap` gem is bundled with `github-pages` but not listed in the plugins array in `_config.yml`. Adding it ensures a proper `sitemap.xml` is generated for search engine indexing.

### Medium Priority

#### 4. Add link checking to CI/CD

There is no pre-deployment validation in `.github/workflows/deploy.yml`. A step using `htmlproofer` or similar tool after `jekyll build` would catch broken internal links, missing images, and invalid HTML before deployment.

#### 5. Add meta descriptions to key pages

Pages like `about.markdown`, `cv.markdown`, and `travels.markdown` lack a `description` front matter field. The `jekyll-seo-tag` plugin is active and will use this for `<meta name="description">` tags, improving search result snippets.

#### 6. Add `loading="lazy"` to post images

The design document mentions image lazy loading but it hasn't been implemented in post content. Adding `loading="lazy"` to images reduces initial page load for readers who don't scroll to those images.

#### 7. Add a `robots.txt`

No `robots.txt` file exists at the site root. While GitHub Pages may serve a permissive default, an explicit one gives control over crawling behavior and can reference the sitemap.

### Low Priority

#### 8. Upgrade Ruby version

The project specifies Ruby 3.1.3 (released 2022). Consider upgrading to 3.3+ for security patches and performance improvements.

#### 9. Convert HTTP links in drafts to HTTPS

`_drafts/2024-05-20-readings.markdown` contains `http://` links that should be converted to `https://` before publishing.

#### 10. Map page progressive enhancement

The travel map in `_layouts/travel.html` requires JavaScript with no fallback content. Adding a `<noscript>` tag with a list of locations would improve accessibility and provide content for search engines.

#### 11. Implement remaining design doc features

Several items from `docs/plans/2026-01-22-website-redesign-design.md` remain unimplemented:

- Theme toggle button (manual light/dark switch)
- Reading time estimates on posts
- Code block copy button
- Map marker clustering at low zoom levels

## File-level Notes

| File | Note |
|------|------|
| `_config.yml:20` | Add `jekyll-sitemap` to plugins list |
| `_config.yml:6` | `email` field (`kevin_fox@me.com`) differs from about page (`kfoxder at icloud dot com`) |
| `_posts/2024-06-01-jane-street-numbers-4.markdown` | Empty image alt text on 2 images |
| `.github/workflows/deploy.yml` | No test/lint/link-check step before deploy |
| `_layouts/travel.html` | No `<noscript>` fallback for the map |
