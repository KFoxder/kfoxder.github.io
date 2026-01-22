# Website Redesign Design

**Epic:** fox-3lj
**Date:** 2026-01-22
**Status:** Approved

## Overview

Redesign kevinfox.dev to be more creative and interactive while maintaining fast load times and minimal design. A balanced portfolio giving equal weight to professional work, technical writing, and personal interests.

## Design Principles

- **Subtle polish** - Micro-interactions, smooth transitions, refined details
- **Developer portfolio aesthetic** - Clean, text-focused (inspired by Rasmus Andersson, Paco Coursey)
- **True responsive** - Desktop and mobile equally important
- **Performance first** - Target < 1 second first paint, < 500KB page weight

### Technical Constraints

- Keep total CSS under 5KB (currently 1.2KB)
- No JavaScript frameworks - vanilla JS only where needed
- Stay with Jekyll + remote theme (fork if needed)
- Progressive enhancement - works without JS, better with it

## Homepage & Navigation

### Changes

- Refined header with name as subtle logo-mark
- Navigation with hover transitions and better spacing
- Active state indicators (subtle underline or color shift)
- Post list with inline dates, hover states, better hierarchy
- Minimal footer with theme toggle

### Mobile

- Navigation stacks vertically with 44px minimum tap targets
- Post list with more vertical breathing room
- Theme toggle accessible without scrolling

### Interactions

- Links fade to accent color on hover (150ms transition)
- Smooth scroll to sections
- Theme toggle animates smoothly

## Blog Post Experience

### Typography

- Line-height 1.5-1.6 for readability
- Subtle letter-spacing on headings
- Improved blockquote styling with left border accent

### Code Blocks

- Syntax highlighting with minimal palette
- Subtle border-radius (2-4px)
- Copy-to-clipboard button on hover
- Horizontal scroll indicator for mobile

### Images

- Rounded corners matching code blocks
- Subtle box-shadow for depth
- Click-to-expand for detailed images
- Lazy loading with fade-in transition

### Post Metadata

- Date displayed prominently at top
- Optional reading time estimate
- "Back to posts" link at bottom

## Travels Map

### Map UX

- Marker clustering at low zoom levels
- Smoother popup transitions (fade in)
- Larger tap targets for mobile
- Custom minimal marker style

### Navigation

- Optional continent/region filter buttons
- "Reset view" button
- Keyboard navigation for accessibility

### Mobile

- Better touch handling (pinch-to-zoom, pan)
- Full viewport height minus header
- Popup positioning that doesn't get cut off

### Performance

- Lazy-load Mapbox JS only on travels page
- Move marker data to separate JSON file
- Static fallback image for no-JS users

## Performance & Image Optimization

### Image Strategy

- Compress existing images (target 80% smaller)
- Convert to WebP with JPEG fallback
- Responsive images via srcset
- 3MB bike erg image → target 200-300KB

### Lazy Loading

- Native `loading="lazy"` on images below fold
- Fade-in animation (200ms)
- Placeholder aspect-ratio boxes

### Build Process

- Add image optimization to build
- Automated WebP generation
- Inline critical CSS

### Targets

- First contentful paint: < 1 second
- Total page weight (non-map): < 500KB
- Lighthouse performance: 95+

## Responsive Design

### Breakpoints

- Small: < 640px (phones)
- Medium: 640px - 1024px (tablets)
- Large: > 1024px (desktops)

### Mobile Adjustments

- Larger tap targets (44px minimum)
- Base font 17-18px on small screens
- Full width with 16-20px margins
- Horizontal scroll for code blocks

### Touch Interactions

- Hover states also trigger on tap
- No hover-only content
- Sufficient spacing between interactive elements

### Testing

- Real device testing (not just browser resize)
- Key devices: iPhone SE, iPhone 14, iPad
- Verify travels map on touch devices
