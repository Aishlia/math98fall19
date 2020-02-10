% Julia Nai
% 3034984486

% Code to generate results1.txt is commented out
function p = newtonbisection(f, df, a, b, tol)
    p = a;
    % data = ["Start", double(a), double(b), double(p), double(f(p))];
    
    err = abs(f(p));
    while err > tol
        % method = "Newton";
        p = double(p - (f(p) / df(p)));

        
        if p > b || p < a
            p = (a+b)/2;
            % method = "Bisection";
        end

        if f(p)*f(b) < 0
            a = p;
        else
            b = p;
        end
        err = abs(f(p));
        
        % data = [data; [method, double(a), double(b), double(p), double(f(p))]];
    end

    % T = table(data(:,1), data(:,2), data(:,3), data(:,4), data(:,5), 'VariableNames',{'method', 'a', 'b', 'p', 'fp'})
 
    % writetable(T,'results1.txt','Delimiter',' ');  
    % type 'results1.txt';
end

