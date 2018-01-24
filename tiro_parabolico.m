clear all;
close all;
figure(1)
hold on 
%You can comment the previous line if you don't wanna see the previous progress
%of the object

x=[]; 
v=[]; 
F=[];

m=10; 

g=[0;-9.81];
h=0.05;

xa=[0;0]; %this is the initial position [for x; for y]
va=[10;50]; %this is the initial velocity [for x; for y]

%Ecuación
F=m*g;

for step=1:200 %you can also increment or decrement the steps of the for
     
    plot(xa(1),xa(2),'o'); %change "." for ".b" or "ob"
    
    title(['Paso del for :' num2str(step)]); 
    axis([0 100 0 100]); %here you can edit the size of the scale, 
                         %change 100 to other value and you´ll see
    pause(0.01);

     
    
    vpm = va + (h)*((F-va)/m); 
    xpm = xa + (h)*va; 
    xa=xpm; 
    va=vpm;
    
end
