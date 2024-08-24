function dx = DoblePen(t,x)
% Definición de los parámetros
m_1 = 0.2;
l_1 = 0.3;
m_2 = 0.1;
l_2 = 0.25;
g = 9.81;
c_1 = 0.2;
% Representar los estados del sistema
dx = zeros(4,1);
% Matrices
M = [(m_1+m_2)*l_1 m_2*l_2*cos(x(2)-x(1)); l_1*cos(x(2)-x(1)) l_2];
C = [c_1 -m_2*l_2*sin(x(2)-x(1)); l_1*sin(x(2)-x(1)) 0];
G = [(m_1+m_2)*g*sin(x(1)); g*sin(x(2))];
% Definicion de la dinámica del sistema
dx(1) = x(3);
dx(2) = x(4);
dx(3:4) = (M^(-1))*(-C*[x(3); x(4)]-G);

