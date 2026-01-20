---
layout: post
title: "Do I really need a personal trainer?"
date: 2026-01-20
categories:
 - posts
 - professional
---
I wanted to test whether I could get the first pass of a real workout plan and a usable tracker without hiring a trainer. In about 30 minutes, I used Gemini to draft an 8-week plan with constraints, then asked it to build a [simple app](https://gemini.google.com/share/821f0dda6516) to track the whole thing.

### Constraints I gave it
- 8 weeks total.
- 3 sessions per week, 30-45 minutes each, plus an optional 4th.
- Full gym access; prefer dumbbells for strength work.
- Cardio should be running, rowing, or the assault bike.
- Goal: raise VO2 max while rebuilding overall strength and health.
- Slight knee soreness, but no major injury.
- Current fitness: decent, 21-minute 5k, but no lifting in over a year and no running in a month.

### What the plan looked like
Gemini structured the plan into two phases:
- Weeks 1-4: re-acclimation and knee-friendly volume. Posterior-chain and unilateral dumbbell work, plus low-impact intervals on the rower or assault bike. The optional day was a gentle return-to-run with run/walk intervals.
- Weeks 5-8: higher intensity and VO2-focused intervals. Heavier dumbbell work (lower reps), classic 4x4 VO2 blocks and Tabata-style sprints, plus an optional endurance run.

It also baked in a Week 8 retest: a 5k run plus max-rep push-ups and bodyweight squats to measure progress.

### The tracker app
I asked for a way to track the program, and it produced a [React web app](https://gemini.google.com/share/821f0dda6516) with:
- A week selector that auto-adjusts exercises, sets, reps, and notes by phase.
- Expandable session cards with checkboxes and fields for weights and notes.
- A "last week" hint to make progressive overload easier.
- Export to CSV for backups or analysis.
- An upgrade to cloud sync (Firebase + anonymous auth) so the logbook works across devices.

### So... do I need a personal trainer?
For accountability, form feedback, and long-term coaching, probably yes. But for the first draft of a plan and the tooling to track it, I was surprised how far I got in a single session.

If you are curious, the original Gemini share is here: [Eight-Week Fitness Plan Creation](https://gemini.google.com/share/72a864edc277).
