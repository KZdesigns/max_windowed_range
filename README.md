# Max Windowed Range
Given an array, and a window size w, find the maximum range (max - min) within a set of w elements.

Let's say we are given the array [1, 2, 3, 5] and a window size of 3. Here, there are only two cases to consider:
```Ruby
1. [1 2 3] 5
2. 1 [2 3 5]
```
In the first case, the difference between the max and min elements of the window is two (3 - 1 == 2). In the second case, that difference is three (5 - 2 == 3). We want to write a function that will return the larger of these two differences.

## Learning Goals
- Get practice approaching a difficult problem using algorithms
- Be able to explain the time complexity of your solution
- Know the differences between a stack and a queue
- Be able to use simple data structures to build more complicated ones