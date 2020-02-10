% Julia Nai
% 3034984486

function p = secant(f, p0, p1, tol)
    p = p1 - (f(p1)*(p1-p0))/(f(p1)-f(p0));
    err = abs(f(p));
    while err > tol
        p = p1;
        p1 = p1 - (f(p1)*(p1-p0))/(f(p1)-f(p0));
        p0 = p;
        err = abs(f(p));
    end
end