% Julia Nai
% 3034984486
function result = factorsoftwo(A)
    if floor(A/2) ~= A/2 %Checking if not divisible by 2
        result = [0, A]
    elseif floor(A/2) == A/2
        ctr = 0;
        new_val = A;
        while floor(new_val/2) == new_val/2
            new_val = new_val/2;
            ctr = ctr + 1;
        end
        result = [ctr, A/(2^ctr)]
    end
            
end