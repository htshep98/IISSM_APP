function FS = infslopem(phi, theta, c, gamma, H, m)
%INFSLOPEM This function will take:
%   - phi, the drained internal angle of friction (degrees)
%   - theta, the slope inclination angle (degrees)
%   - c, the drained cohesion (kPa)
%   - gamma, the unit weight of hillslope material (kN/m^3)
%   - H, the depth of the sliding surface (m)
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

end



