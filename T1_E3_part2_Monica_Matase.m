% E3
function [ma v2 mat] = T1_E3_part2_Monica_Matase(v)
   ma = sum(real(v)) / length(v);
    v2 = v .* v;
    mat = v' * v;
end
