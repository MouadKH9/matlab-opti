function [D] = precondJacobi(mat)
n=size(mat);
d=diag(mat);
for i=1:n
    for j=1:n
        if sparse(mat(i,j))==d(i)
            mat(i,j)=d(i);
        else
            mat(i,j)=0;
        end
    end
end
D=mat;
end

