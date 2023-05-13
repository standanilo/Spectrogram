function [ ret ] = UporediPesme(C, D)
ret = 0;
for i = 1:length(C)-length(D)
    p = 0;
    for j=1:length(D)
        t = (C(1,i+j-1) == D(1,j)) + (C(2,i+j-1) == D(2,j)) + (C(3,i+j-1) == D(3,j)) + (C(4,i+j-1) == D(4,j));
        if t == 4
            p = p + 1;
        end
    end
    if ret < p
        ret = p;
    end
end
end