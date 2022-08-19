function FS = infslopem(phi, theta, c, gamma, H, m)
%INFSLOPEM This function will take:
%   - phi, the drained internal angle of friction in degrees
%   - theta, the slope inclination angle in degrees
%   - c, the drained cohesion
%   - gamma, the unit weight of hillslope material
%   - H, the depth of the sliding surface
%   - m, the proportion of the soil column that is saturated
% and output the factor of safety given by the infinite slope
% stability model

% convert phi to radians
phi_r = phi * pi / 180 ;
% convert beta to radians
theta_r = theta * pi / 180 ; 

% the effective cohesion term
Ceff = c / (H*gamma*sin(theta_r)*cos(theta_r)) ; 

% the ISSM equation
FS = Ceff + (tan(phi_r)/tan(theta_r))*(1 - (9.81*m/gamma)) ;
% where 9.81 is gamma_w, the unit weight of water

end



