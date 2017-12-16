% clean matlab workspace
clc; clear all; close all;

% problem definition
define_space_parameters_2d;
define_circle_2d;

% intialization
init_material_grid_2d;
init_fdtd_parameters_and_arrays_2d;
init_incident_planewave_2d;
init_up_coefficients_2d;
init_bc_2d;

% FDTD time marching loop
run_fdtd_2d;

