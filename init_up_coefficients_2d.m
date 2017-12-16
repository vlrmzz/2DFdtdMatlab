% main grid update coefficients TMz
 
% Coeffiecients updating Ez
Ceze  =  (2*eps_r_z*eps_0 - dt*sigma_e_z)./(2*eps_r_z*eps_0 + dt*sigma_e_z);
Cezhy =  (2*dt/dx)./(2*eps_r_z*eps_0 + dt*sigma_e_z);
Cezhx = -(2*dt/dy)./(2*eps_r_z*eps_0 + dt*sigma_e_z);
 
% Coeffiecients updating Hx
Chxh  =  (2*mu_r_x*mu_0 - dt*sigma_m_x)./(2*mu_r_x*mu_0 + dt*sigma_m_x);
Chxez = -dt/dy/mu_0*ones(521,520);
 
% Coeffiecients updating Hy
Chyh  =  (2*mu_r_y*mu_0 - dt*sigma_m_y)./(2*mu_r_y*mu_0 + dt*sigma_m_y);
Chyez =  (2*dt/dx)./(2*mu_r_y*mu_0 + dt*sigma_m_y);