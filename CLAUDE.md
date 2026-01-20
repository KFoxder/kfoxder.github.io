# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal blog/website for kevinfox.dev built with Jekyll and hosted on GitHub Pages. Uses the `no-style-please` remote theme.

## Development Commands

```bash
# Install dependencies (requires Ruby 3.1.3 via chruby)
bundle install

# Run site locally (auto-reloads on content changes, but NOT on _config.yml changes)
bundle exec jekyll serve

# Build static site to _site/
bundle exec jekyll build
```

## Project Structure

- `_posts/` - Published posts (format: `YYYY-MM-DD-slug.markdown`)
- `_drafts/` - Unpublished drafts
- `_layouts/` - Custom layouts (extends remote theme)
- `_includes/` - Shared HTML snippets
- `_data/` - YAML data files (e.g., `menu.yml` for navigation)
- `assets/` - Static assets (images)
- `_site/` - Generated output (do not edit directly)
- Root `.markdown` files - Site pages (index, about, cv, travels)

## Content Guidelines

- Post filenames: `YYYY-MM-DD-slug.markdown` (lowercase, hyphens)
- Asset filenames: lowercase with underscores (e.g., `js_altered_states_2_solution.png`)
- Front matter: YAML with 2-space indentation; include `layout`, `title`, `date`, `categories`
- Use Markdown for content; minimal HTML only when necessary

## Configuration

- Site settings in `_config.yml` - changes require server restart
- Domain in `CNAME` - keep in sync with production domain
- Theme: `riggraz/no-style-please` (remote theme)

## Validation

No test suite exists. Validate changes by running `bundle exec jekyll serve` and checking pages, links, and images in the browser.
