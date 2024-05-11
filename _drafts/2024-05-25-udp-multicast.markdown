---
layout: post
title:  "UDP Multicast in OCaml"
date:   2024-05-25
categories: 
  - posts
  - professional
---
Github Project: 

OCaml and UDP multicast have been two recent focuses of mine as I prepare for my new role at Jane Street. As I was doing research on them I realized I couldn't find any good examples of UDP multicast in OCaml. So I went about creating my own examples for the next person who is interested in implementing UDP multicast in OCaml. 

I decided I would implement it in 3 different ways. First, I did it without any concurrency. Then I used `lwt`, which is the most popular concurrent library in OCaml as well as `async` which is less popular but used by Jane Street.


