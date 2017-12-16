disp('Initialize the material grid');

%material_2d_space = ones(nx, ny);

% Initialize the relative parameters to free space - TMz components
eps_r_z     = ones (nxp1, nyp1);
mu_r_x      = ones (nxp1, ny);
mu_r_y      = ones (nx  , nyp1);
sigma_e_z   = zeros(nxp1, nyp1);
sigma_m_x   = zeros(nxp1, ny);
sigma_m_y   = zeros(nx  , nyp1);

% generate the circle
is_circle = true; %false to sumulare just free space

if is_circle
    min_x = circles(1).center_x - circles(1).radius;
    min_y = circles(1).center_y - circles(1).radius;
    max_x = circles(1).center_x + circles(1).radius;
    max_y = circles(1).center_y + circles(1).radius;

for i = 1:nx
    for j = 1:ny
        if sqrt((lx/2-i*dx)^2+(ly/2-j*dy)^2)  <= circles(1).radius;
            material_2d_space(i,j) = circles.material_type ;
            eps_r_z(i,j)     = material_type(2).eps_r;
            mu_r_x(i,j)      = material_type(2).mu_r;
            mu_r_y(i,j)      = material_type(2).mu_r;
            sigma_e_z(i,j)   = material_type(2).sigma_e;
            sigma_m_x(i,j)   = material_type(2).sigma_m;
            sigma_m_y(i,j)   = material_type(2).sigma_m;
           end
        end
    end
end


