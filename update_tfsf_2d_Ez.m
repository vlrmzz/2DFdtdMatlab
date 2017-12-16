% Taflove from pag. 201
% Front face region 1
Hxffr1 = 0;
Ez(nx_a:nx_b-1,ny_a) = Ez(nx_a:nx_b-1,ny_a) - dt/eps_0/dx*Hxffr1';

% Back face region 1
Hxbfr1 = 0;
Ez(nx_a:nx_b-1,ny_b) = Ez(nx_a:nx_b-1,ny_b) - dt/eps_0/dx*Hxbfr1';

% Left face of region 1
Hylfr1 = ones(1,ntfsf_y)*Hinc(2);
Ez(nx_a,ny_a:ny_b-1) = Ez(nx_a,ny_a:ny_b-1) - dt/eps_0/dx*Hylfr1;

% Rigth face of region 1
Hyrfr1 = ones(1,ntfsf_y)*Hinc(nx_b-nx_a+2);
Ez(nx_b,ny_a:ny_b-1) = Ez(nx_b,ny_a:ny_b-1) + dt/eps_0/dx*Hyrfr1;

% Outside front face region 1
Ezffr1 = Einc(2:ntfsf_x+1);
Hx(nx_a:nx_b-1,ny_a-1) = Hx(nx_a:nx_b-1,ny_a-1) + dt/mu_0/dx*Ezffr1';

% Outside back face region 1
Ezbfr1 = Einc(2:ntfsf_x+1);
Hx(nx_a:nx_b-1,ny_b) = Hx(nx_a:nx_b-1,ny_b) - dt/mu_0/dx*Ezbfr1';

% Outside left face of region 1
Ezlfr1 = ones(1,ntfsf_y)*Einc(2);
Hy(nx_a,ny_a:ny_b-1) = Hy(nx_a,ny_a:ny_b-1) - dt/mu_0/dx*Ezlfr1;

% Outside rigth face of region 1
Ezrfr1 = ones(1,ntfsf_y)*Einc(nx_b-nx_a+2);
Hy(nx_b,ny_a:ny_b-1) = Hy(nx_b,ny_a:ny_b-1) + dt/mu_0/dx*Ezrfr1;



