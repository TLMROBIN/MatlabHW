function error = Ferror(mass1, mass2, d, deltam1, deltam2, deltad)
%Ferror 推导万有引力公式的误差传递公式并计算误差
syms m1 m2 R dm1 dm2 dR
gravity = 6.67 * 10^-11 * m1 * m2 / R^2; %定义引力公式
%推导误差传递公式
dgravity = abs(sqrt((diff(gravity, m1, 1) * dm1)^2 ...
    + (diff(gravity, m2, 1) * dm2)^2 ...
    + (diff(gravity, R, 1) * dR)^2));
error = subs(dgravity, {m1, m2, R, dm1, dm2, dR}, ...
    {mass1, mass2, d, deltam1, deltam2, deltad});
error = double(error);
end

