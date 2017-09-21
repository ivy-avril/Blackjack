# Blackjack
in Matlab

## Main function : Probability 
Compute the winning probability of player after he/she stand. \
Input: two vectors containing dealer's cards and player's cards, respectively.
Output: probability

The functions called: 
## 1. CardRemain
Input: two vectors containing dealer's cards and player's cards, respectively.\
Output: a vector of 10 entries, each entry represents the number of one type of card remaining.\
Ace is denoted as 1;\
10/J/Q/K are denoted as 10.\
6 decks are used, so 6\*52=312 cards in total.

## 2. CardValue
Input: tow vectors containing dealer's cards and player's cards, respectively.\
Output: a vector of 2 entries representing dealer's card value and player's card value, respectively.\
We assume the value of Ace is the largest possible value it could pick up,\
i.e., if Ace can be value of 11, it will not counted as 1.

## 3. GetCardProb
