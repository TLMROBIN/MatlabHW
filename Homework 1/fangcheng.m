function [e] = fangcheng(E1,num_m1,num_m2,num_R,num_dm1,num_dm2,num_dR);
e=subs(E1,{'m1','m2','R','dm1','dm2','dR'},{num_m1,num_m2,num_R,num_dm1,num_dm2,num_dR});
end

