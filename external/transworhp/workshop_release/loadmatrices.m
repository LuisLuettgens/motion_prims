%% laufkatze_zen -n 41

clear

X0 = load('X_0.m', '-ASCII');
DX  = load('ZenDX.dat', '-ASCII');
DG  = load('ZenDG.dat', '-ASCII');
DF  = load('ZenDF.dat', '-ASCII');
DL  = load('ZenDL.dat', '-ASCII');
DM  = load('ZenDM.dat', '-ASCII');

n = 452;
m = 360;
k = 1;
  
ZenDXDP = DX(1:k,:);
ZenDXDR = DX(k+1:k+n,:);
ZenDXDQ = DX(k+n+1:k+n+m,:);
ZenDXDB = DX(k+n+m+1:k+n+m+n,:);
ZenDGDP = DG(1:k,:);
ZenDGDR = DG(k+1:k+n,:);
ZenDGDQ = DG(k+n+1:k+n+m,:);
ZenDGDB = DG(k+n+m+1:k+n+m+n,:);
ZenDFDP = DF(1:k,:);
ZenDFDR = DF(k+1:k+n,:);
ZenDFDQ = DF(k+n+1:k+n+m,:);
ZenDFDB = DF(k+n+m+1:k+n+m+n,:);

% Anzahl Zustaende + Steuerungen
N = 9+2;
NN = 9;
% Anzahl Perturbations
P = 4;
%step = 0.01;

%% Nominalloesung und gestoerte Loesung plotten

figure(1)
for i=1:N
    subplot(P+1,N,i)

    plot( X0(i:N:end-1) , 'b-')
    hold on
    v = axis;
    v(1) = 1;
    v(2) = 41;
    axis(v)
 %   plot( X1(i:N:end) , 'r' )
 %   plot( X2(i:N:end) , 'g' )
 %   plot( X3(i:N:end) , 'b' )
   
    if i==1
        title('Pos X')
    end
    if i==2
        title('Vel X')
    end
    if i==3
        title('Pos Last')
    end
    if i==4
        title('Vel Last')
    end
     if i==5
        title('Acc X')
     end
     if i==6
        title('Pos Y')
     end
     if i==7
        title('Vel Y')
     end
     if i==8
        title('Acc Y')
    end
     if i==9
        title('u^2')
    end
end

%% Sensitivitaeten DX/DP plotten

% Sens Anf.Wert
for i=1:N
    subplot(P+1,N,N+i)
    plot( ZenDXDP(1,i:N:end), 'r')
    v = axis;
    v(1) = 1;
    v(2) = 41;
    axis(v)
    if i==1     
        title('Sens in Dynamik')
    end
end

% Sens 2
for i=1:N
    subplot(P+1,N,2*N+i)
    plot( ZenDXDB(1,i:N:end-1), 'r')
    v = axis;
    v(1) = 1;
    v(2) = 41;
    axis(v)
    if i==2
        title('Sens in Anfangswert mit 1. Box-Beschraenkung')
    end
end

% Sens 3
for i=1:N
    subplot(P+1,N,3*N+i)
    plot( ZenDXDB(2,i:N:end-1), 'r')
    v = axis;
    v(1) = 1;
    v(2) = 41;
    axis(v)
    if i==2
        title('Sens in Anfangswert mit 2. Box-Beschraenkung')
    end
end

% Sens 4
for i=1:N
    subplot(P+1,N,4*N+i)
    plot( ZenDXDB(452-9-2,i:N:end-1), 'r')
    v = axis;
    v(1) = 1;
    v(2) = 41;
    axis(v)
    if i==2
        title('Sens in Endwert mit 1. Box-Beschraenkung')
    end
end



% 
% %% Sensitivitaeten DG/DP plotten
% 
% % Sens Anf.Wert
% for i=1:NN
%     subplot(P+1,NN,NN+i)
%     plot( ZenDGDP(1,i:N:end), 'r')
%     v = axis;
%     v(1) = 1;
%     v(2) = 41;
%     axis(v)
%     if i==1     
%         title('Sens in Dynamik')
%     end
% end
% 
% % Sens 2
% for i=1:NN
%     subplot(P+1,NN,2*NN+i)
%     plot( ZenDGDB(1,i:N:end-1), 'r')
%     v = axis;
%     v(1) = 1;
%     v(2) = 41;
%     axis(v)
%     if i==2
%         title('Sens in Anfangswert mit 1. Box-Beschraenkung')
%     end
% end
% 
% % Sens 3
% for i=1:NN
%     subplot(P+1,NN,3*NN+i)
%     plot( ZenDGDB(2,i:N:end-1), 'r')
%     v = axis;
%     v(1) = 1;
%     v(2) = 41;
%     axis(v)
%     if i==2
%         title('Sens in Anfangswert mit 2. Box-Beschraenkung')
%     end
% end
% 
% % Sens 4
% for i=1:NN
%     subplot(P+1,NN,4*NN+i)
%     plot( ZenDGDB(452-9-2,i:N:end-1), 'r')
%     v = axis;
%     v(1) = 1;
%     v(2) = 41;
%     axis(v)
%     if i==2
%         title('Sens in Endwert mit 1. Box-Beschraenkung')
%     end
% end
% 
% 
% 
% %% Echtzeitkorrektur
% figure(2)
% X_start = X0(1:N-2)
% TF = X0(end)
% T = linspace(0,TF,41);
% U = [X0(N-1:N:end)';X0(N:N:end)'];
% 
% plot(T,U)
% legend('U1','U2')
% 
% 
% %%
% 
% 
% options = odeset('RelTol',1e-6,'AbsTol',1e-6);
% [T,X] = ode45(@laufkatze,T,X_start,options,[T;U]);
% 
% 
