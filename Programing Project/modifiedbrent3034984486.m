% func: a function handle
% Int: the initial interval [Int.a, Int.b]
% params object that contains at least three fields -- params.root_tol,
% params.func_tol, and params.maxit

%Terminate once the innterval containing the root is at most
%params.root_tol in length or the function value at the current iterate is
%at most params.funnc_tol in absolute value

%On output, root is the computed root and info should have at least onne
%field info.flag which is 0 for successful execution, and 1 otherwise.


function [root, info] = modifiedbrent3034984486(func, Int, params)
    root = 0;
    a = Int.a;
    b = Int.b;
    f_a = func(a);
    f_b = func(b);
    
    % test if there can be any zeros on the interval
    if f_a * f_b >= 0
        error("no 0 on interval")
        return
    end
    
    % swap f(b) and f(a) if f(b) is bigger
    if abs(f_a) < abs(f_b)
       [f_a, f_b] = deal(f_b, f_a);
    end
    
    flag = 1;
    it_ctr = 0;
    c = a;
    
    five = 0;
    
    f_s = 1; % placeholder
    
    % stop if the 0 is found, the iterations exceed the max iterations,
    % the intervals on which the zero is is sufficiently small, or 
    % the zero value found is within tolerance. 
    while f_b ~= 0 && f_s ~= 0 && it_ctr <= params.maxit && abs(b-a) > abs(params.root_tol) && abs(f_s) > abs(params.func_tol)
        f_a = func(a);
        f_b = func(b);
        f_c = func(c);

        if f_a ~= f_c && f_b ~= f_c
            s = (a*f_b*f_c)/((f_a-f_b)*(f_a-f_c))+(b*f_a*f_c)/((f_b-f_a)*(f_b-f_c))+(c*f_a*f_b)/((f_c-f_a)*(f_c-f_b));
            five = five + 1;
        else
            s = b - f_b*((b-a)/f_b-f_a);
        end
        
        if (s <= (3*a+b)/4 && s >= b) ||...
            (flag == 1 && abs(s-b) >= abs(b-c)/2) ||... 
            (flag == 0 && abs(s-b) >= abs(c-d)/2) ||...
            (flag == 1 && abs(b-c) < abs(params.root_tol)) || ...
            (flag == 0 && abs(c-d) < abs(params.root_tol)) || ...
            (flag == 0 && abs(f_s) > abs(f_b/2)) || ... % #1 modification
            (five == 5 && abs(b-a) > abs(Int.a - Int.b)) || ... % #2 modification part a
            (five == 5 && abs(b-a) > abs(bisec_int.b - bisec_int.a)/2) % #2 modification part b
            s = (a+b)/2;
            bisec_int.a = a;
            bisec_int.b = b;
            flag = 1;
            five = 0;
        else
            flag = 0;
            five = 0;
        end
        
        f_s = func(s);
        d = c;
        c = b;
        
        if f_a*f_s<0
            b = s;
        else
            a = s;
        end
        
        if abs(f_a) < abs(f_b)
            [f_a, f_b] = deal(f_b, f_a);
        end
        
        root = s;
        it_ctr = it_ctr + 1;
    end
    
    info.iters = it_ctr;
    
    if abs(root) <= abs(params.func_tol)
        info.flag = 0; % root is within tolerance
    else
        info.flag = 1;
    end
    
end
