---
layout: post
title:  "Jane Street Puzzle: Numbers 4"
date:   2024-06-01
categories: 
  - posts
  - professional
---
The dopamine rush I get from solving a puzzle is real. 

You can see my code here: [Github Link](https://github.com/KFoxder/jane_street_puzzle)

![Numbers 4 Solution](/assets/js_numbers_4_solution.png)

### Solution 

The general solution I took was in 2 parts.

#### Part 1: Find all possible solutions for each row

The bulk of time is spent finding all possible solutions for each row taking into considerations possible shading, groups of cells and validity of the clue. For example if we look at row 4 in the 5 x 5 example we know we are looking for a cube. The number 12,167 is a cube however it would break the rules of groupings having the same number so we don't need to test it. 

✅ Shading is valid <br>
✅ Clue is valid (12,167 is a cube)<br>
❌ Grouping is not valid (must be same number)<br>
![](/assets/js_numbers_4_example_1.png)

✅ Shading is valid <br>
✅ Clue is valid (27 and 64 are cubes)<br>
✅ Grouping is valid <br>
![](/assets/js_numbers_4_example_2.png)

For certain rows this can be very time consuming because the validation function is expensive and because there are so many distinct groups that we can form many different numbers. The rows that take the longest in the 11 x 11 puzzle are row 5 and row 3 which take 90% of the time. 

I did consider looking at rows relative to their ancestor above and backtracking but because it worked I didn't have a ton of time to optimize I left it as is.

#### Part 2: Find a matrix that is valid

Once we have all possible solutions to each row we "stitch" them together row by row to get a valid matrix that satisfies all the constraints. We start with one valid row and loop through the next row until we find a valid one and proceed down the tree of possibilities backtracking as we go. This is fast because we know the rows in isolation are valid but just check if the shaded cells are valid relative to each other and that groupings are valid relative to each row.









