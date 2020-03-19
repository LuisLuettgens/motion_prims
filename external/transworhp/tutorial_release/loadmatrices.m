%% WORHP Matrizen
% 
% subplot(3,1,1)
% plotworhpmatrix('DF_0',1);
% 
% subplot(3,1,2)
% plotworhpmatrix('DG_0',1);
% 
% subplot(3,1,3)
% plotworhpmatrix('HM_0',1);

%% WORHP Zen Matrizen

% subplot(3,2,1)
% plotworhpmatrix('ZenDX_0',0);
% 
% subplot(3,2,2)
% plotworhpmatrix('ZenDMu_0',0);
% 
% subplot(3,2,3)
% plotworhpmatrix('ZenDF_0',0);
% 
% subplot(3,2,4)
% plotworhpmatrix('ZenDF2_0',0);
% 
% subplot(3,2,5)
% plotworhpmatrix('ZenDG_0',0);


%% Referenzwert (0) und 3 Stoerungen laden, um es mit SensAbl. zu vergleichen
clear

X0 = load('X_0.m', '-ASCII');
X1 = load('X_1.m', '-ASCII');
X2 = load('X_2.m', '-ASCII');
X3 = load('X_3.m', '-ASCII');
S  = load('sensitivities.dat', '-ASCII');

k = 3;
n = 84;
m = 61;
  
ZenDXDP = S(1:k,:);
ZenDXDR = S(k+1:k+n,:);
ZenDXDQ = S(k+n+1:k+n+m,:);
ZenDXDB = S(k+n+m+1:k+n+m+n,:);

% Anzahl Zustaende + Steuerungen
N = 4;

% Anzahl Perturbations
P = 3;
step = 0.01;

%% Nominalloesung und gestoerte Loesung plotten

for i=1:N
    subplot(P+1,N,i)

    plot( X0(i:N:end) , 'k*')
    hold on
    plot( X1(i:N:end) , 'r' )
    plot( X2(i:N:end) , 'g' )
    plot( X3(i:N:end) , 'b' )
    if i==1
        legend('Ref','pert 1','pert 2','pert 3')
    end
    if i==1
        title('State X1')
    end
    if i==2
        title('State X2')
    end
    if i==3
        title('State X3')
    end
    if i==4
        title('Control U1')
    end
end

%% Sensitivitaeten p plotten

% Sens Anf.Wert
for i=1:N
    subplot(P+1,N,N+i)
    plot( (X1(i:N:end)- X0(i:N:end)) / step,'b.' )
    hold on
    plot( ZenDXDP(1,i:N:end), 'r')
    plot( ZenDXDQ(61,i:N:end), 'g')
    if i==1
        legend('Diffquot','Zen P', 'Zen Q')
        title('Sens 1: in Anfangswert mit nichtlin.Randbed.')
    end
end

% Sens 2
for i=1:N
    subplot(P+1,N,2*N+i)
    plot( (X2(i:N:end)- X0(i:N:end)) / step,'b.' )
    hold on
    plot( ZenDXDB(2,i:N:end), 'r')
   % plot( ZenDX0(i:4:end,79), 'g')
 
    if i==1
        legend('Diffquot','Zen B')
        title('Sens 2: in Anfangswert mit Box-Beschr.')
    end
end
% Sens 3
for i=1:N
    subplot(P+1,N,3*N+i)
    plot( (X3(i:N:end)- X0(i:N:end)) / step ,'b.')
    hold on
    plot( ZenDXDP(3,i:N:end), 'r')
 
    if i==1
        legend('Diffquot','Zen P')
        title('Sens 3: in Dynamik')
    end
end


