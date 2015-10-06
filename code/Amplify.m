function temp = Amplify(area, s)
% to amplify the area with s
[n] = size(area, 2);
temp = ones(n+2)*s;
temp(2:n+1, 2:n+1) = area;
end