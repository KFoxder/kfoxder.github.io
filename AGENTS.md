# Repository Guidelines

## Project Structure & Module Organization
- Jekyll site content lives in `_posts/` for published posts (e.g. `2024-07-14-jane-street-altered-states-2.markdown`).
- Drafts are stored in `_drafts/`.
- Site pages live at the repo root (`index.markdown`, `about.markdown`, `cv.markdown`, `travels.markdown`).
- Layouts and shared snippets are in `_layouts/` and `_includes/`; data files are in `_data/`.
- Static assets (mostly images) are in `assets/`.
- `_site/` is generated output from Jekyll; do not edit it directly.

## Build, Test, and Development Commands
- `bundle install` - install Ruby gem dependencies (Ruby 3.1.3 per `readme.md`).
- `bundle exec jekyll serve` - run the site locally; restart if `_config.yml` changes.
- `bundle exec jekyll build` - generate the static site into `_site/`.

## Coding Style & Naming Conventions
- Use Markdown for content; minimal HTML is acceptable for custom links or embeds.
- Front matter is YAML with 2-space indentation; keep `layout`, `title`, `date`, and `categories` aligned with existing posts.
- Post filenames use `YYYY-MM-DD-slug.markdown` with lowercase and hyphens.
- Asset filenames are lowercase with underscores (e.g. `js_altered_states_2_solution.png`).

## Testing Guidelines
- No dedicated test suite exists in this repository.
- Validate changes by running `bundle exec jekyll serve` and checking pages, links, and images in the browser.

## Commit & Pull Request Guidelines
- Commit history favors short, sentence-style summaries (e.g., "Small edits", "Added ..."). Keep subjects concise and descriptive.
- PRs should describe the content change, note new assets or updated posts, and include screenshots for visible layout/content shifts when practical.

## Configuration Notes
- Site-wide settings live in `_config.yml`; changes require a server restart.
- Domain configuration is in `CNAME`; keep it in sync with the intended production domain.
