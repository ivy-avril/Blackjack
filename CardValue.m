function [sumD, sumP] = CardValue(Dealer, Player)
% Return the total value of Dealer's card and Player's card
% The length of vectors Dealer and Player are unknown

% Initialization
sumD = 0;
sumP = 0;
Ace = 11;

% Check length
lD = length(Dealer);
lP = length(Player);

% Check Dealer's card
for i = 1:lD
    if Dealer(i) == 1
        if sumD+Ace > 21
            sumD = sumD + 1;
        else
            sumD = sumD + Ace;
        end
    else
        sumD = sumD + Dealer(i);
    end
end

% Check Player's card
for i = 1:lP
    if Player(i) == 1
        if sumP+Ace > 21
            sumP = sumP + 1;
        else
            sumP = sumP + Ace;
        end
    else
        sumP = sumP + Player(i);
    end
end

end
