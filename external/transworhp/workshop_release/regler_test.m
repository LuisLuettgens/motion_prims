load('referenz.dat')

t_ref = referenz(:,1)';
x_ref = referenz(:,2:10)';
u_ref = referenz(:,11:12)';

load('K.dat')

subplot(4,3,1)
plot(t_ref,x_ref(1,:))
title('Position Katze')
subplot(4,3,2)
plot(t_ref,x_ref(6,:))
title('Seillaenge')
subplot(4,3,3)
plot(t_ref,x_ref(3,:))

subplot(4,3,4)
plot(t_ref,x_ref(2,:))
title('v Katze')
subplot(4,3,5)
plot(t_ref,x_ref(7,:))
title('v Seillaenge')
subplot(4,3,6)
plot(t_ref,x_ref(4,:))

subplot(4,3,7)
plot(t_ref,x_ref(5,:))
title('a Katze')
subplot(4,3,8)
plot(t_ref,x_ref(8,:))
title('a Seillaenge')



title('v Last')
subplot(4,3,10)
plot(t_ref,u_ref(1,:))
subplot(4,3,11)
plot(t_ref,u_ref(2,:))



X_start = [0+1 0 0 0 0 5+1 0 0];
%[T,X] = ode45(@(t,x) laufkatze(t,x, t_ref, x_ref, u_ref, K) , t_ref, x0 );

x = X_start';
X = x;
N = size(t_ref,2);

% for i=2:N
%     dx = laufkatze(t_ref(i-1), x, t_ref, x_ref, u_ref, K);
%   
%     x = x + (t_ref(i)-t_ref(i-1)) * dx;
%     X = [X x];
% end

for i=1:N
   dx = laufkatze(t_ref(i), x, t_ref, x_ref, u_ref, K);
   U1(i) = dx(5);
   U2(i) = dx(8);
end


[T,X] = Trapez(@laufkatze,t_ref,X_start',t_ref, x_ref, u_ref, K);
X = X'


% x = x0';
% X = x;
% 
% 
% 
% [TT_fehler,X_fehler] = Trapez(@laufkatze,T,X_startfehler,[T;U]);
% 
% 
% 
% 

subplot(4,3,1)
hold on
plot(t_ref,X(1,:),'r*')

subplot(4,3,2)
hold on
plot(t_ref,X(6,:),'r*')

subplot(4,3,3)
hold on
plot(t_ref,X(3,:),'r*')


subplot(4,3,4)
hold on
plot(t_ref,X(2,:),'r*')

subplot(4,3,5)
hold on
plot(t_ref,X(7,:),'r*')

subplot(4,3,6)
hold on
plot(t_ref,X(4,:),'r*')



subplot(4,3,7)
hold on
plot(t_ref,X(5,:),'r*')

subplot(4,3,8)
hold on
plot(t_ref,X(8,:),'r*')





subplot(4,3,10)
hold on
plot(t_ref,U1,'r*')

subplot(4,3,11)
hold on
plot(t_ref,U2,'r*')
