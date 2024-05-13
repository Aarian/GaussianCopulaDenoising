function [sample_scale] = creat_X_dataset(coefficients,level, direction,neighbors)
% this functions takes shearlet coeffs as input and computes the output as
% X dataset
% input: 
% coefficients -cell array contains all the shearlet coeffs
% level -the level of shearlet array (j)
% direction -direction in each level (0<direction<2^j-1 )
% neighbors -number od neighbors for a specific sample
% output: 
% sample_scale -dataset X 
    direction
    level
    coefficient = coefficients{level}(:,:,direction);

    coeff_sz = size(coefficient);
    X = zeros(neighbors , coeff_sz(1)*coeff_sz(2) );
    for i = 1:coeff_sz(1)-1
        for j = 1:coeff_sz(2)-1
            X(:,(i-1)*coeff_sz(1) +  j) = [ coefficient(i+1,j), coefficient(i+1,j+1)]';
        end
        
    end
    sample_scale = X;
    
end