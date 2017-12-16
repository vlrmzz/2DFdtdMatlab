% Free space physical constants

eps_0 = 8.853e-12;
mu_0  = 4*pi*1e-7;
c_0   = 1/sqrt(eps_0*mu_0);
sig_0 =0;

% time discretization dt

%dt = 1/c_0/sqrt(1/dx^2+1/dy^2);
dt = courant_factor*dx/c_0/sqrt(2);
n_iter = 2000;

% Fields in the main grid
disp('Initialize TMz fields')
Hx = zeros(nxp1,ny);    
Hy = zeros(nx,nyp1);    
Ez = zeros(nxp1,nyp1);