t2=[-2:0.01:2];
x2=j*exp(j*t2*pi)-j*exp(-j*t2*pi)+(-0.5)*j*exp(2*j*t2*pi)+0.5*j*exp((-2)*j*t2*pi)+0.25*j*exp(3*j*t2*pi)-0.25*j*exp((-3)*j*t2*pi)+(-0.125)*j*exp(4*j*t2*pi)+0.125*j*exp((-4)*j*t2*pi);
plot(t2,x2)

t3=[-3:0.01:3];
x3=j*exp(j*t3*2*pi/3)-j*exp(-j*t3*2*pi/3)+0.5*j*exp(2*j*t3*2*pi/3)-0.5*j*exp((-2)*j*t3*2*pi/3)+0.25*j*exp(3*j*t3*2*pi/3)-0.25*j*exp((-3)*j*t3*2*pi/3)+0.125*j*exp(4*j*t3*2*pi/3)-0.125*j*exp((-4)*j*t3*2*pi/3);
plot(t3,x3)

k=[-10:-1,1:10];
x=(-0.5)./(j*k*pi).*(exp((-0.5).*j*k*pi)-exp(0.5.*j*k*pi));
stem(k,x)
hold on
stem(0,0.5)

k=[-10:-1,1:10];
x=(-0.5)./(j*k*pi).*(exp((-0.5).*j*k*pi)-exp(0.5.*j*k*pi));
stem(k,angle(x))
hold on
stem(0,0)

 t=[-1:0.01:1];
y1=0;
y2=0;
y3=0;
y4=0;
for k=-1:-1
    x1=(-0.5)./(j*k*pi).*(exp((-0.5).*j*k*pi)-exp(0.5.*j*k*pi));
    y1=y1+x1*exp(j*k*pi*t);
end
y1=y1+0.5;
for k=1:1
    x1=(-0.5)./(j*k*pi).*(exp((-0.5).*j*k*pi)-exp(0.5.*j*k*pi));
    y1=y1+x1*exp(j*k*pi*t);
end
plot(t,y1,'r')

hold on
for k=-3:-1
    x2=(-0.5)./(j*k*pi).*(exp((-0.5).*j*k*pi)-exp(0.5.*j*k*pi));
    y2=y2+x2*exp(j*k*pi*t);
end
y2=y2+0.5;
for k=1:3
    x2=(-0.5)./(j*k*pi).*(exp((-0.5).*j*k*pi)-exp(0.5.*j*k*pi));
    y2=y2+x2*exp(j*k*pi*t);
end
plot(t,y2,'b')
hold on

for k=-5:-1
    x3=(-0.5)./(j*k*pi).*(exp((-0.5).*j*k*pi)-exp(0.5.*j*k*pi));
    y3=y3+x3*exp(j*k*pi*t);
end
y3=y3+0.5;
for k=1:5
    x3=(-0.5)./(j*k*pi).*(exp((-0.5).*j*k*pi)-exp(0.5.*j*k*pi));
    y3=y3+x3*exp(j*k*pi*t);
end
plot(t,y3,'g')
hold on

for k=-9:-1
    x4=(-0.5)./(j*k*pi).*(exp((-0.5).*j*k*pi)-exp(0.5.*j*k*pi));
    y4=y4+x4*exp(j*k*pi.*t);
end
y4=y4+0.5;
for k=1:9
    x4=(-0.5)./(j*k*pi).*(exp((-0.5).*j*k*pi)-exp(0.5.*j*k*pi));
    y4=y4+x4*exp(j*k*pi.*t);
end
plot(t,y4,'black')