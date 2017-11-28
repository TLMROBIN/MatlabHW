mass1 = 5.9 * 10^24; %地球质量
mass2 = 2 * 10^30; %太阳质量 
d = 1.50 * 10^11; %日地距离
deltam1 = 0.1 * 10^24; %地球质量误差
deltam2 = 0.2 * 10^30; %太阳质量误差
deltad = 0.01 * 10^11; %日地距离误差
force = Gforce(mass1, mass2, d) %日地引力
force_error = Ferror(mass1, mass2, d, deltam1, deltam2, deltad)%日地引力误差
