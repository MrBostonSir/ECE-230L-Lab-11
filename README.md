# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Boston Holdaway, Wyatt Davis

## Summary
We learned how to divide a clock signal using two different methods: a modulo divider and a ripple counter.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
Because it counts on one edge and there are actually 2 edges per count. 

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
Because the T is initialized as 1 and the clock edge propagates through all of the stages at once.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
To bring a 100MHz clock to around 1kHz, you would need a 17 wide ring counter. We found this number by dividing 100MHz by 2^N until it was around 1kHz.
