% Julia Nai
% 3034984486

function p = bisection(f, a, b, tol)
    if f(a)*f(b) > 0
        error('No roots in [a,b]')
    else
        p = (a+b)/2;
        err = abs(f(p));
        while err > tol
            if f(a)*f(p) < 0
                b = p;
            elseif f(p)*f(b) < 0
                a = p;
            end
            p = (a+b)/2
            err = abs(f(p));
        end
    end 
end