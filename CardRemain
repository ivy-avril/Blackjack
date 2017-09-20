function Card = CardRemain(Dealer, Player)
% Count the number of cards remaining
% Ace is denoted as 1
% 10/J/Q/K are denoted as 10

% Initialize number of cards
Card = [4*6, 4*6, 4*6, 4*6, 4*6, 4*6, 4*6, 4*6, 4*6, 4*6*4];

% Check length
lD = length(Dealer);
lP = length(Player);

for i = 1:10
    % Check dealer's card
    for k = 1:lD
        if Dealer(k) == i
            Card(i) = Card(i) - 1;
        end
    end
    % Check player's card
    for j = 1:lP
        if Player(j) == i
            Card(i) = Card(i) - 1;
        end
    end
end

end
