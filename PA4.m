nx = 100;
ny = 100;
V  = zeros(nx,ny);
V(1,:) = 0;
V(ny, :) = 0;
V(:,1) = 1;  
V(:,nx) = 1;
IterNo = 1000;
x = 0;

while x <= IterNo
    for a = 2:nx-1
        for b = 2:ny-1
            V(a,b) = (V(a+1, b) + V(a-1, b) + V(a, b+1) + V(a, b-1))/4;
        end
        if mod(x,50) == 0
            surf(V')
            pause(0.05)
        end
    end
    x = x + 1;
end

[Ex,Ey] = gradient(V);

figure
quiver(-Ey',-Ex',1)