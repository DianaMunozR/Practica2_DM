% Resolver la integral
[t,x] = ode45(@DoblePen,[0 10], [0 (35*pi)/180 0 0]);
% Gráfico para Theta 1
subplot(2,1,1);
plot(t, x(:,1), 'r'); 
grid on
title("Theta 1");
xlabel("Tiempo (s)");
ylabel("Rad");

% Gráfico para Theta 2
subplot(2,1,2);
plot(t, x(:,2), 'm');
grid on
title("Theta 2");
xlabel("Tiempo (s)");
ylabel("Rad");