Einc(2) = Einc(2) + sin(2*pi*f*(ts)*dt);

Einc(2:n1Dfdtd) = Ceze1d*Einc(2:n1Dfdtd)...
    + Cezhy1d.*(Hinc(2:n1Dfdtd)-Hinc(1:n1Dfdtd-1));
    
Einc(1) = Eincbc2 + ((c_0*dt-d)/(c_0*dt+d))*(Einc(2)-Eincbc1);
Einc(n1Dfdtd) = Eincbc3 + ((c_0*dt-d)/(c_0*dt+d))*(Einc(n1Dfdtd-1)-Eincbc4);

Eincbc1 = Einc(1);
Eincbc2 = Einc(2);
Eincbc3 = Einc(n1Dfdtd-1);
Eincbc4 = Einc(n1Dfdtd);

Hinc(1:n1Dfdtd-1) = Chyh1d*Hinc(1:n1Dfdtd-1)...
    + Chyez1d*(Einc(2:n1Dfdtd)-Einc(1:n1Dfdtd-1));

