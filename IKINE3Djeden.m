function [ X ] = IKINE3Djeden( Q, dq, L1,L2,L3,L4,Xini,i,err,pozadovana_presnost,i_max )
while ((err > pozadovana_presnost) && (i < i_max))
    q1 = Q(1,1);
    q2 = Q(2,1);
    q3 = Q(3,1);
    q4 = Q(4,1);
    [ X ] = fkine3D( q1+dq,q2,q3,q4,L1,L2,L3,L4);
    X1=[X(1,1);X(2,1);X(3,1)];
    [ X ] = fkine3D( q1,q2+dq,q3,q4,L1,L2,L3,L4);
    X2=[X(1,1);X(2,1);X(3,1)];
    [ X ] = fkine3D( q1,q2,q3+dq,q4,L1,L2,L3,L4);
    X3=[X(1,1);X(2,1);X(3,1)];
    [ X ] = fkine3D( q1,q2,q3,q4+dq,L1,L2,L3,L4);
    X4=[X(1,1);X(2,1);X(3,1)];
    [ X ] = fkine3D( q1,q2,q3,q4,L1,L2,L3,L4);
    Xend=[X(1,1);X(2,1);X(3,1)];
    J=[(X1-Xend)/dq (X2-Xend)/dq (X3-Xend)/dq (X4-Xend)/dq];
    
    dX = Xini - Xend;    % difference between actuel and wanted value
    dQ = pinv(J) * dX; % change of degrees
	Q = Q + dQ;	      % actualization
	err = norm(Xini-Xend);   % current mistake
	i=i+1;
    %plot3([x0 x1 x2 x3 x4],[y0 y1 y2 y3 y4],[z0 z1 z2 z3 z4],'LineWidth',1);
    x4=X(1,1);
    y4=X(2,1);
    z4=X(3,1);
    
    x3=X(1,2);
    y3=X(2,2);
    z3=X(3,2);
    
    x2=X(1,3);
    y2=X(2,3);
    z2=X(3,3);
    
    x1=X(1,4);
    y1=X(2,4);
    z1=X(3,4);
    
end
    plot3([0 x1 x2 x3 x4],[0 y1 y2 y3 y4],[0 z1 z2 z3 z4],'LineWidth',3);
    grid on
    hold on
    patch([-3,3,3,-3],[-3,-3,3,3],[0,0,0,0],'green')
    axis([-3,3,-3,3,0,6])
    plot3(Xini(1,1),Xini(2,1),Xini(3,1),'r*')
    hold on


end