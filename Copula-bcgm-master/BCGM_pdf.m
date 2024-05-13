function pdf = BCGM_pdf(epsilon , sigma_alpha_stable)
syms x;
pdf = (1-epsilon)*1/(sigma_alpha_stable*(2*pi)^.5)*exp(-x^2/(2*sigma_alpha_stable^2)) + epsilon * sigma_alpha_stable / (pi*(x^2 + sigma_alpha_stable^2));

end