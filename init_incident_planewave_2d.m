disp('initialize 2d incident plane wave');

% length TS/SF
len_tf = 100;
% tf sf extreme points in the main grid
nx_a = 110;%round(len_tf/dx);
nx_b = 400;%round((lx-len_tf)/dx);
ny_a = 110;%round(len_tf/dy);
ny_b = 400;%round((ly-len_tf)/dy);

% tf/sf length in computational domain
ntfsf_x = nx_b-nx_a;
ntfsf_y = ny_b-ny_a;

% Angle respect to x axis
phi = 0;
% Amplitude
Ez0 = 1;
% Frequency
f = 2e9;
% 1D
d = dx;
n1Dfdtd = ceil((nx_b-nx_a)*1.414)+1+4;
Einc = zeros(1,n1Dfdtd);
Hinc = zeros(1,n1Dfdtd);
Eincbc1 = 0;
Eincbc2 = 0;
Eincbc3 = 0;
Eincbc4 = 0;

% Einc update coefficients
Ceze1d = 1;
Cezhy1d = dt/(eps_0*d);
Cezhx1d = dt/(eps_0*d);

%Hinc update coefficients
Chyh1d = 1;
Chyez1d = dt/(mu_0*d);





