load('mpc.dat');

titles = {'Position Wagen', 'Geschwindigkeit Wagen', 'Position Last', ...
    'Geschw. Last', 'Beschl. Wagen', ...
    'Seil','Geschw. Seil','Beschl. Seil', ...
    'Energie','u1','u2'};

for i=1:11
    subplot(3,4,i)
    plot(mpc(:,i))
    title(titles{i})
end

