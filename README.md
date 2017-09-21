# Blackjack
in Matlab

## Main function : Prob = Probability(Dealer, Player)
Compute the winning probability of player after he/she stand. \
Input: two vectors storing dealer's and player's cards information, respectively.
Output: probability

The functions called: 
## 1. Card = CardRemain(Dealer,Player)
Input: two vectors storing dealer's and player's cards information, respectively.\
Output: a vector of 10 entries, each entry represents the number of one type of card remaining.\
Ace is denoted as 1;\
10/J/Q/K are denoted as 10.\
6 decks are used, so 6\*52=312 cards in total.

## 2. \[sumD,sumP\] = CardValue(Dealer,Player)
Input: two vectors storing dealer's and player's cards information, respectively.\
Output: a vector of 2 entries representing dealer's card value and player's card value, respectively.\
We assume the value of Ace is the largest possible value it could pick up,\
i.e., if Ace can be value of 11, it will not counted as 1.

## 3. prob = GetCardProb(Dealer,Player,X)
Input: two vectors storing dealer's and player's cards information, respectively; and the card to be drawn.\
Output: the probability of card X being drawn.

## 4. prob = OneHitWin(Dealer, Player)
Input: two vectors storing dealer's and player's cards information, respectively.\
Output: the probability of dealer winning the game or push with only one hit.\
Dealer will stand when his/her card value is greater or equal to 17, will burst when the card value is greater than 21.\
Assume dealer does not have blackjack.\
The case where dealer has an Ace needs to be solved.\

## 5. H = GetHits(Pre,i)
Input: Pre: The value needs to be obtained before hitting 17;\
       i: Number of hits before hitting 17.\
Output: a matrix with i columns, containing all the possible cases where dealer can hit i times without hitting 17.
