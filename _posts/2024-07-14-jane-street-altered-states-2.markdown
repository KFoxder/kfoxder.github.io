---
layout: post
title:  "Jane Street Puzzle: Altered States 2"
date:   2024-07-14
categories:
 - posts
 - professional
---
We are back with another Jane Street puzzle solution. This one was for <a href="https://www.janestreet.com/puzzles/altered-states-2-solution/#:~:text=Shruti%20Sharad%20Patil-,Kevin%20Fox,-(20S%2C%20PA%2C%20NOCAL">Altered States 2</a> I have to say this one felt easier than the last two I solved. That being said, racking up awards was the real challenge here. I could only manage to get 3 awards on my solution where as some people got a whopping 6 awards!

You can see my code here: [Github Link](https://github.com/KFoxder/jane_street_puzzle)

![Altered States 2 Solution](/assets/js_altered_states_2_solution.png)

### Solution 

The general solution I took was pretty straightforward and involved two major concepts.

The first thing I built was a [specialized trie](https://github.com/KFoxder/jane_street_puzzle/blob/master/altered_states_2/state_trie.py) that was that held an entry for every transformation of a state and is able to validate teh existence of a state if a letter is missing in any place. For example ohio would take up 5 entries in the trie (ohio, \*hio, o\*io, oh\*o, ohi\*). It contains `462` inputs which is not many. 

The second concept was to randomly walk the matrix and backtrack while inserting a state name when possible. The randomization proved to be an important step since the possible combinations are massive. Overall this proved to solve the puzzle pretty quickly however I played around with a couple different strategies to try and get the most awards like removing california as an option so I could attain the `(NOCAL)` award and being from Pennsylvania I was only going to submit a solution if I was able to get my home state in there which I did. 






