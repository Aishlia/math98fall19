% Julia Nai
% 3034984486
function [piestimate] = piestimate
num = 0;
denom = 0;

    for i = 1:10000
        a = rand;
        b = rand;
        if a^2+b^2 <= 1
            num = num + 1;
        end
        denom = denom + 1;
    end

[piestimate] = [(num*4)/denom];

end
