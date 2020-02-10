% Julia Nai
% 3034984486
function fb = fizzbuzz(x)
for n = 1:100
    if 0 == mod(n, 15)
        disp("fizzbuzz")
    elseif 0 == mod(n, 3)
        disp("fizz")
    elseif 0 == mod(n, 5)
        disp("buzz")
    else
        disp(n)
    end
end
end