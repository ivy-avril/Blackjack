function prob = OneHitWin(Dealer, Player)
% Compute the probability of Dealer win after only one hit
% Assume sumD <= 16 and sumP < 21
% Assume Dealer will stand after hitting 17 even if having an Ace
% Probability of push is also included here

[sumD, sumP] = CardValue(Dealer, Player);
Card = CardRemain(Dealer, Player);

% Dealer needs to hit a card so that sumD>=sumP and sumD<21
Cmax = 21 - sumD;
Cmin = sumP - sumD; 

prob = sum(Card(Cmin:Cmax))/sum(Card);

end
