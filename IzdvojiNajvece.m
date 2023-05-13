function [ ret ] = IzdvojiNajvece( M )
values = zeros(4,size(M,2));
rows = zeros(4,size(M,2));
ranges = [9, 13, 18, 30]; %spektri frekvencija [40, 80, 120, 180, 300] u matrici
for i=1:size(M,2)
    for j=4:30
        for k=1:4
            t = log(abs(M(j,i)) + 1);
            if j <= ranges(k) && values(k,i) < t
                values(k,i) = t;
                rows(k,i) = j;
                break;
            end
        end
    end
end
ret = rows;
end

