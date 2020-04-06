clc
clear

A=[-130 30 0; 90 -90 0; 40 60 -120];
b=[-500; 0; -200];

Ab=[A,b];
%pengurangan
alpha=Ab(2,1)/Ab(1,1);
Ab(2,:)=Ab(2,:)-alpha*Ab(1,:);

alpha=Ab(3,1)/Ab(1,1);
Ab(3,:)=Ab(3,:)-alpha*Ab(1,:);

alpha=Ab(3,2)/Ab(2,2);
Ab(3,:)=Ab(3,:)-alpha*Ab(2,:);

alpha=Ab(1,2)/Ab(2,2);
Ab(1,:)=Ab(1,:)-alpha*Ab(2,:);

%pembagian
Ab(1,:)=Ab(1,:)/Ab(1,1);
Ab(2,:)=Ab(2,:)/Ab(2,2);
Ab(3,:)=Ab(3,:)/Ab(3,3);

i=4;
C1=Ab(1,i)
C2=Ab(2,i)
C3=Ab(3,i)
