% Update magnetic fields

% TMz
    Hx(:,pjs:pje-1) = Chxh(:,pjs:pje-1).*Hx(:,pjs:pje-1) ...
       + Chxez(:,pjs:pje-1).*(Ez(:,pjs+1:pje)-Ez(:,pjs:pje-1));
 
    Hy(pis:pie-1,:) = Chyh(pis:pie-1,:) .* Hy(pis:pie-1,:) ...
        + Chyez(pis:pie-1,:).*(Ez(pis+1:pie,:)-Ez(pis:pie-1,:));
