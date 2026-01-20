---
layout: post
title:  "Exploring agentic ideas right now"
date:   2026-01-20
categories:
  - posts
  - professional
---
Lately I have been playing with agentic workflows and trying to see how far I can push them for small, real features without writing much code myself. The experiments are heavily inspired by [Superpowers](https://github.com/obra/superpowers/tree/main), [Beads](https://github.com/steveyegge/beads), [Gas Town](https://github.com/steveyegge/gastown), and [Ralph](https://ghuntley.com/ralph/).

The playground is my OCaml UDP multicast repo: [KFoxder/udp_multicast_examples](https://github.com/KFoxder/udp_multicast_examples). Over the last two days I used Claude Code to design and implement a few practical improvements:

- Added sequence number parsing in all three receivers to detect out-of-order or missing packets.
- Introduced a shared binary protocol module (20-byte messages with a header + payload) and wired it into the sender/receivers, plus a unit test suite for encode/decode.
- Added a GitHub Actions CI workflow to build on push/PR and drafted an integration test plan that adds `--count` flags to make multicast runs testable in CI.
- Added Beads metadata and issues tracking so I can keep a lightweight log of agentic tasks and decisions.

The most interesting part for me is that the "feature work" was mostly prompts and reviews. Claude wrote the initial changes, I steered and verified them, and then I iterated on the edges. I am still figuring out which tasks feel best for agents, but this was a fun, low-risk place to explore.
