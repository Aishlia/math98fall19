% Julia Nai
% 3034984486
function no_zero = removezeros(vec)
if ~isvector(vec)
    error('Input must be a vector')
end
no_zero = vec(find(vec~=0));
end