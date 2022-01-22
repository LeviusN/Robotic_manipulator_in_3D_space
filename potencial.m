function [hodnota]=potencial(q1,q2,q3,q4,xb,yb,zb,xpre,ypre,zpre,L1,L2,L3,L4)
[ X ] = fkine3D( q1,q2,q3,q4,L1,L2,L3,L4 );
    x4=X(1,1);
    y4=X(2,1);
    z4=X(3,1);
    
    x3=X(1,2);
    y3=X(2,2);
    z3=X(3,3);
    
    x2=X(1,3);
    y2=X(2,3);
    z2=X(3,3);
    
    x1=X(1,4);
    y1=X(2,4);
    z1=X(3,4);


hodnota1=0.7*((x4-xb)^2+(y4-yb)^2+(z4-zb)^2)+0.39/(((x4-xpre(1))^2)+((y4-ypre(1))^2)+((z4-zpre(1))^2));
hodnota2=0.7*((x4-xb)^2+(y4-yb)^2+(z4-zb)^2)+0.39/(((x4-xpre(2))^2)+((y4-ypre(2))^2)+((z4-zpre(2))^2));
hodnota3=0.7*((x4-xb)^2+(y4-yb)^2+(z4-zb)^2)+0.39/(((x4-xpre(3))^2)+((y4-ypre(3))^2)+((z4-zpre(3))^2));


hodnota=(hodnota1+hodnota2+hodnota3);


end