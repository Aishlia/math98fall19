% Julia Nai
% 3034984486
function [isMagicSquare] = magicsquare(A)
    rows = size(A, 1);
    columns = size(A, 2);
    
    if size(A) == [0,0]  % checking for the empty array
        [isMagicSquare] = [1]
        return
    end
    
    if rows ~= columns % checking for non-squares
        [isMagicSquare] = [0];
        return
    end
    
    colm_sum = sum(A,1);
    row_sum = sum(A, 2);
    
    for i = 1:rows % Checking row sums and column sums
        % Should be same num of rows as columns, checked earlier
        if (row_sum(1) ~= row_sum(i)) || (colm_sum(1) ~= colm_sum(i))
            [isMagicSquare] = [0];
            return
        end
    end
    
    left_diag = sum(diag(flip(A)));
    right_diag = sum(diag(A));
    
    for i = 1:length(right_diag) % Checking diagonals
        if right_diag(1) ~= right_diag(i) || left_diag(1) ~= left_diag(i)
            [isMagicSquare] = [0];
            return
        end
    end

    [isMagicSquare] = [1];
end     