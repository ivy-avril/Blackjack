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
        sumD = sumD + Ace;
    else
        sumD = sumD + Dealer(i);
    end
end

if sumD > 21
    for i = 1:lD
        if Dealer(i) == 1 && sumD > 21
            sumD = sumD - 10;
        end
    end
end

% Check Player's card
for i = 1:lP
    if Player(i) == 1
        sumP = sumP + Ace;
    else
        sumP = sumP + Player(i);
    end
end

if sumP > 21
    for i = 1:lP
        if Player(i) == 1 && sumP > 21
            sumP = sumP - 10;
        end
    end
end

end
