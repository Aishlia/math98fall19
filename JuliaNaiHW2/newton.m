% Julia Nai
% 3034984486

function p = newton(f, df, p0, tol)
    p = p0;
    err = abs(f(p));
    while err > tol
        p = p - f(p)/df(p);
        err = abs(f(p));
    end
end
