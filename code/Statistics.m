function data = Statistics(area, Sti, range)
% Statistics
[L, W] = size (area);
data = zeros(Sti, 1);
for i = 1 : L
    for j = 1 : W
        if area(i, j) <= range(1)
            data(1) = data(1) + 1;
        elseif area(i, j) <= range(2)
            data(2) = data(2) + 1;
        else
            data(3) = data(3) + 1;
        end
    end
end
end