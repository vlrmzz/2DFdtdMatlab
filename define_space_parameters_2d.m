% Courant factor: determines the duratio of a time step
courant_factor = 0.5;

% Number of cells per wavelength
n_cells_per_wl = 20;

% boundary condition parameters
% 'pml' - perfectly matched layer

is_pml_xn = true;
is_pml_xp = true;
is_pml_yn = true;
is_pml_yp = true;

boundary.type_xn = 'pml';
boundary.n_pml_xn = 10;

boundary.type_xp = 'pml';
boundary.n_pml_xp = 10;

boundary.type_yn = 'pml';
boundary.n_pml_yn = 10;

boundary.type_yp = 'pml';
boundary.n_pml_yp = 10;

boundary.pml_order = 2;
boundary.pml_R_0 = 1e-8;

% Physical domain parameters
lx = 2.5; ly = 2.5;
nx = 500 + boundary.n_pml_xn + boundary.n_pml_xp; 
ny = 500 + boundary.n_pml_yn + boundary.n_pml_yp;
nym1 = ny-1;
nxm1 = nx-1;
nxp1 = nx+1;
nyp1 = ny+1;

% Computational grid space and time
x = linspace(0,lx,nx)-lx/2;
y = linspace(0,ly,ny)-ly/2;
dx = x(nx)-y(nx-1);
dy = y(ny)-y(ny-1);

% Material types

%free space
material_type(1).eps_r = 1;
material_type(1).mu_r = 1;
material_type(1).sigma_e = 0;
material_type(1).sigma_m = 0;
material_type(1).color = [1 1 1];

%PEC material
material_type(2).eps_r = 1;
material_type(2).mu_r = 1;
material_type(2).sigma_e = 1e10;
material_type(2).sigma_m = 0;
material_type(2).color = [1 0 0];

% indices of material
material_type_index_air = 1;
material_type_index_PEC = 2;