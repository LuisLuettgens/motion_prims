function DX = laufkatze(T, X, t_ref, x_ref, u_ref, K)

grav = 9.81;

N = size(t_ref,2);
dt = 1;

if T<=t_ref(1)
    x_inter = x_ref(:,1);
    u_inter = u_ref(:,1);
    
else 
       
    for i=2:N
        if T<=t_ref(i)
            dt = (T-t_ref(i-1)) / (t_ref(i)-t_ref(i-1));            
            break
        end
    end   
    
    if dt==0
        x_inter = x_ref(:,i);
        u_inter = u_ref(:,i);
    else
        x_inter = x_ref(:,i-1) + (x_ref(:,i)-x_ref(:,i-1)) * dt;
        u_inter = u_ref(:,i-1) + (u_ref(:,i)-u_ref(:,i-1)) * dt;
    end
    
end

XX = x_inter(1:8);
X - XX
U = u_inter + K*(X - XX);

% if U(1) > 10
%     U(1) = 10;
% end
% 
% if U(1) < -10
%     U(1) = -10;
% end
% 
% if U(2) > 10
%     U(2) = 10;
% end
% 
% if U(2) < -10
%     U(2) = -10;
% end

fprintf('%f  %f  %f\n',T,U(1),U(2))

DX = zeros(8,1);

DX(1) = X(2);
DX(2) = X(5);
DX(3) = X(4);
DX(4) = (X(5) - (grav-X(8))*X(3)/X(6));
DX(5) = U(1);
DX(6) = X(7);
DX(7) = X(8);
DX(8) = U(2);
	
end



