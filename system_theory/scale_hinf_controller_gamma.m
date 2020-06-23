function Kg = scale_hinf_controller_gamma(Ag,Bg1,Bg2,Cg1,Cg2,...
    Dg11,Dg12,Dg21,Dg22,Ts,gamma)

Kg = ss(Ag,[gamma^(-1/2)*Bg1,sqrt(gamma)*Bg2],...
    [gamma^(-1/2)*Cg1;sqrt(gamma)*Cg2],...
    [gamma^(-1)*Dg11, Dg12; Dg21, gamma*Dg22],Ts);

end