function [ X ] = fkine3D( q1,q2,q3,q4,L1,L2,L3,L4 )

    R10=[cos(q1) 0 -sin(q1) 0;
        sin(q1) 0 cos(q1) 0;
        0 1 0 L1;
        0 0 0 1];
    R12=[cos(q2) -sin(q2) 0 L2*cos(q2);
        sin(q2) cos(q2) 0 L2*sin(q2);
        0 0 1 0;
        0 0 0 1];
    R23=[cos(q3) -sin(q3) 0 L3*cos(q3);
        sin(q3) cos(q3) 0 L3*sin(q3);
        0 0 1 0;
        0 0 0 1];

    R34=[cos(q4) 0 -sin(q4) L4*cos(q4);
        sin(q4) 0 cos(q4) L4*sin(q4);
        0 1 0 0;
        0 0 0 1];
    
    T4=R10*R12*R23*R34;
    T3=R10*R12*R23;
    T2=R10*R12;
    T1=R10;
    %%
    X(1,1)=T4(1,4);
    X(2,1)=T4(2,4);
    X(3,1)=T4(3,4);
    
    X(1,2)=T3(1,4);
    X(2,2)=T3(2,4);
    X(3,2)=T3(3,4);
    
    X(1,3)=T2(1,4);
    X(2,3)=T2(2,4);
    X(3,3)=T2(3,4);
    
    X(1,4)=T1(1,4);
    X(2,4)=T1(2,4);
    X(3,4)=T1(3,4);
    
%     X(1,1)=T4(1,4);
%     X(2,1)=T4(2,4);
%     X(3,1)=T4(3,4);
    
% T4=R34*R23*R12*R10;
% T3=R23*R12*R10;
% T2=R12*R10;
% T1=R10;
%     X(1,1)=T4(1,4);
%     X(1,2)=T4(2,4);
%     X(1,3)=T4(3,4);
%     
%     X(2,1)=T3(1,4);
%     X(2,2)=T3(2,4);
%     X(2,3)=T3(3,4);
%     
%     X(3,1)=T2(1,4);
%     X(3,2)=T2(2,4);
%     X(3,3)=T2(3,4);
%     
%     X(4,1)=T1(1,4);
%     X(4,2)=T1(2,4);
%     X(4,3)=T1(3,4);

end

