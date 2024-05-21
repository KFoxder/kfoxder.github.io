---
layout: post
title:  "UDP Multicast in OCaml"
date:   2024-05-21
categories: 
  - posts
  - professional
---
Github Project: [KFoxder/udp_multicast_examples](https://github.com/KFoxder/udp_multicast_examples)

OCaml and UDP multicast have been two recent focuses of mine as I prepare for my new role at Jane Street. As I was doing research on them I kept googling things like "OCaml Multicast Example" and realized I couldn't find any good examples of UDP multicast in OCaml. Either they don't exist or I am not capable of finding them. 

So I went about creating my own examples for the next person who is interested in implementing UDP multicast in OCaml. 

I decided I would implement it in 3 different ways. First, I did it without any concurrency. Then I used `lwt`, which is the most popular concurrent library in OCaml as well as `async` which is less popular but used by Jane Street so for me made sense to include and understand. 

While I assume I will be working with `async` at JS (who knows, I haven't started yet!) the lack of examples and in depth documentation besides RWO did make it harder to implement than `lwt`. This echos some of what I have read in the community discussions, I am sure there are more examples internally which will make it easier. 

The most helpful resources I found while doing this were the following:
- [Linux Documentation - Multicast](https://tldp.org/HOWTO/Multicast-HOWTO.html)
- [Real World Ocaml - Concurrent Programming](https://dev.realworldocaml.org/concurrent-programming.html)
- [UDP Client and Server in OCaml](https://medium.com/@aryangodara_19887/udp-client-and-server-in-ocaml-e203116a997c)
- [UDP Multicast in C](https://gist.github.com/hostilefork/f7cae3dc33e7416f2dd25a402857b6c6)

