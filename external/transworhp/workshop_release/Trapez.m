function [ T,X ] = Trapez( fkt, T, X0, t_ref, x_ref, u_ref, K)

n = size(T,2);
n_ode = size(X0,1);

X(:,1) = X0;

xa = X0;
xb = X0;
eps = 1e-6;

for i=1 : n-1
    for j=1:50 
        F = xb - xa - (fkt(T(i),xa,t_ref, x_ref, u_ref, K) + fkt(T(i+1),xb,t_ref, x_ref, u_ref, K)) * (T(i+1)-T(i))/2;
        
        for k=1:n_ode
            tmp = xb(k);
            xb(k) = tmp + eps;
            FP(k,:) = xb - xa - (fkt(T(i),xa,t_ref, x_ref, u_ref, K) + fkt(T(i+1),xb,t_ref, x_ref, u_ref, K)) * (T(i+1)-T(i))/2;
            xb(k) = tmp - eps;
            FM(k,:) = xb - xa - (fkt(T(i),xa,t_ref, x_ref, u_ref, K) + fkt(T(i+1),xb,t_ref, x_ref, u_ref, K)) * (T(i+1)-T(i))/2;
            xb(k) = tmp;
        end
        
        deltax = ((FP-FM)/(2*eps))\F;
        xb = xb - deltax;
       % fprintf('%d   %d   %f\n',i,j,norm(deltax,2))
        
        if norm(deltax,2)<1e-7
            break
        end
    end
    
    X(:,i+1) = xb;
    xa = xb;
    
end

X = X';

end

