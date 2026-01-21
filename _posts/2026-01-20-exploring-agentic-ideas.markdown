---
layout: post
title:  "The meta skill: orchestrating agents, not writing code"
date:   2026-01-20
categories:
  - posts
  - professional
---
I didn't write a single line of code.

Over the last two days, I added real features to my OCaml UDP multicast project—sequence number parsing, a shared binary protocol module with tests, a GitHub Actions CI workflow, and issue tracking—without touching a keyboard for anything but prompts and reviews.

The experiments are heavily inspired by [Superpowers](https://github.com/obra/superpowers/tree/main), [Beads](https://github.com/steveyegge/beads), [Gas Town](https://github.com/steveyegge/gastown), and [Ralph](https://ghuntley.com/ralph/). The playground is [KFoxder/udp_multicast_examples](https://github.com/KFoxder/udp_multicast_examples).

What got built:
- Sequence number parsing in all three receivers to detect out-of-order or missing packets
- A shared binary protocol module (20-byte messages with header + payload) wired into sender/receivers, plus unit tests for encode/decode
- A GitHub Actions CI workflow that builds on push/PR, with an integration test plan adding `--count` flags for testable multicast runs
- Beads metadata and issues tracking for logging agentic tasks and decisions

The meta skill of the future isn't writing code—it's guiding and orchestrating agents. Knowing what to ask for, how to break down problems, when to push back on a proposed approach, and how to verify the output. The code still matters, but the leverage comes from steering rather than typing.

I'm still figuring out which tasks feel best for agents. But this was a fun, low-risk place to explore what it means to be a developer who mostly doesn't write code.
