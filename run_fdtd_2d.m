disp('Run the time loop');
disp(['Number of iterations : ',num2str(n_iter)]);

start_time = cputime;
current_time = 0;

% initialize the figure
figure('units','normalized','outerposition',[0 0 1 1]);
set(gcf,'doublebuffer','on');

for ts = 1:n_iter
    % Update subroutines
    update_magnetic_fields_2d;
    update_magnetic_fields_for_PML_2d_TMz;
    update_electric_fields_2d;
    update_electric_fields_for_PML_2d_TMz;
    update_1d_aux_grid;
    update_tfsf_2d_Ez;
    
    % Plot Ez dynamics
    if (mod(ts,10) == 0)    
    pcolor(Ez');
	shading interp;
	caxis([-Ez0 Ez0]);
	axis image;
	colorbar;
	title('E_{z}(x,y)', 'FontSize',18, 'FontName', 'Arial', 'FontWeight', 'Bold');
	ylabel('y, [m]', 'FontSize',18, 'FontName', 'Arial', 'FontWeight', 'Bold');
    xlabel('x, [m]', 'FontSize',18, 'FontName', 'Arial', 'FontWeight', 'Bold');
    drawnow;
    end
end

end_time = cputime;
total_min = (end_time - start_time)/60;


    