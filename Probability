function Prob = Probability(Dealer, Player)
% This is the main function, it calls following functions: CardValue.m ,
% CardRemain.m , OneHitWin.m , GetHits.m , and GetCardProb.m ;

% This function computes the probability of player winning after he/she
% choose to stand, so at this moment dealer just revealed his/her face-down
% card.

% Dealer: vector of 2 entries
% Player: vecotr of unknown entries
% Each entry represent a card
% Ace is noted as 1
% J, Q, K are noted as 10
% Prob is the probability of player winning the game given player stands
% (only winning, no push)

% 6 decks are used
% Assumption: if dealer has Ace, he will stand after reaching 17 
% Assumption: both dealer and player have card value less than 21 at input
%% Preparation

% Get the card value at this moment
[sumD, sumP] = CardValue(Dealer,Player);

%% Case 0: Dealer stands
%  i.e. sumD >= 17
if sumD >= 17
    if sumP > sumD
        Prob = 1;
    else
        Prob = 0;
    end
else
%% Dealer hits
    % The value need to obtain before hitting 17
    Pre = 16 - sumD; % 4
    
    Prob = OneHitWin(Dealer,Player);
    
    for i = 1:Pre
        H = GetHits(Pre,i); % H has i columns
        s = size(H); % s(1) is the number of combination we have; s(2)=i
        for j = 1:s(1)
            % Get the prob for the first i hits
            iProb = 1;
            for k = 1:i
                iProb = iProb*GetCardProb([Dealer, H(j,1:k-1)],Player,H(j,k));
            end
            % Multiply the prob for the last hit
            iProb = iProb*OneHitWin([Dealer,H(j,:)],Player);
            
            Prob = Prob + iProb;
        end
    end
    
    % The prob of dealer winning (or push) is computed
    % We need prob of Player winning
    Prob = 1 - Prob;
    
end

end
