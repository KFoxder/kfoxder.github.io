# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal portfolio and blog site for Kevin Fox, deployed at www.kevinfox.dev. Built with Jekyll and hosted on GitHub Pages.

## Development Commands

```bash
bundle install                  # Install dependencies (Ruby 3.1.3 required)
bundle exec jekyll serve        # Run locally with live reload
bundle exec jekyll build        # Build static site to _site/
```

Note: `_config.yml` changes require server restart.

## Architecture

**Content Flow:**
- Markdown files with YAML front matter → Jekyll processing → Static HTML in `_site/`
- Remote theme: `riggraz/no-style-please` (loaded via jekyll-remote-theme plugin)

**Key Directories:**
- `_posts/` - Published blog posts (YYYY-MM-DD-slug.markdown format)
- `_drafts/` - Unpublished drafts
- `_layouts/` - Custom page templates (home.html, travel.html)
- `_includes/` - Reusable components (head.html with GA tracking)
- `_data/menu.yml` - Navigation structure
- `assets/` - Images for posts

**Special Pages:**
- `travels.markdown` - Interactive Mapbox GL JS map with 70+ location markers
- `cv.markdown` - Professional resume

## Front Matter Pattern

```yaml
---
layout: post
title: "Article Title"
date: YYYY-MM-DD
categories:
  - posts
  - professional
---
```

## Session Completion

See AGENTS.md for the mandatory "Landing the Plane" workflow. All work must be pushed to remote before session ends.

## Project tracking

Use 'bd' for task tracking