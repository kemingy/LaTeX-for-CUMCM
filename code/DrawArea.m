function DrawArea(area, range)
% Display the area's situation
temp = area;
[L, W] = size(temp);

Area(:,:,1) = temp;
Area(:,:,2) = temp;
Area(:,:,3) = temp;

for i=1:L
    for j=1:W
        if temp(i, j) == -1
            Area(i,j,:) = [190 190 190];
        elseif temp(i, j) <= range(1)
            Area(i,j,:) = [255 215 0];
        elseif temp(i, j) <= range(2)
            Area(i,j,:) = [152 251 152];
        else
            Area(i,j,:) = [34 139 34];
        end
    end
end
Area = uint8(Area);
   p = imagesc(Area); 
   hold on;
   plot([(0:W)',(0:W)']+0.5,[0,L]+0.5,'k');
   plot([0,W]+0.5,[(0:L)',(0:L)']+0.5,'k');
   axis image;
   set(gca,'xtick',[]);
   set(gca,'ytick',[]);
end