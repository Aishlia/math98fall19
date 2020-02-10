% Julia Nai
% 3034984486

function [a, b] = findbracket(f, x0)
    a = x0;
    b = x0;
    dx = .001;
    
    while 1 == 1
        a = a - dx;
        if f(a)*f(b) < 0
            [a,b]
            return
        end

        b = b + dx;
        if f(a)*f(b) < 0
            [a,b]
            return
        end

        dx = dx * 2;
    end
    
end
