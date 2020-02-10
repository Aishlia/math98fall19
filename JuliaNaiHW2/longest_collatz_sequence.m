% Julia Nai
% 3034984486

function longest_starting_number = longest_collatz_sequence(n)
    longest_starting_number = 1;
    for i = 1:n
        collatz_len = collatz(i);
        if collatz_len > longest_starting_number
            longest_starting_number = i;
        end
    end   
end

function collatz_length = collatz(n)
    len = 1; 
    while n ~= 1
        len = len + 1;
        if rem(n, 2) == 0;
            n = n/2;
        elseif rem(n, 2) == 1
            n = 3*n + 1;
        end    
    end
    collatz_length = len;
end