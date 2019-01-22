b=input(' enter the first radius of circle:');
a=input(' enter the second radius of circle:');
x =0;
y = b;
aa=a*a;         % a square
bb=b*b;         % b square
aa2=aa*2;       % 2a square
bb2=bb*2;       % 2b square
fx=0;
fy=aa2*b;
%drawing the ellipse

x0=0; % x0,y0 ellipse centre coordinates
y0=0;
t=-pi:0.01:pi;
p=x0+a*cos(t);
q=y0+b*sin(t);
plot(p+.5,q+.5)

%controlling the graph here
hold ('on');
plot(1,3);
xlim([-10 10]);
ylim([-10 10]);
set(gca,'Xtick',-10:10)
set(gca,'Ytick',-10:10)
axis equal;
grid on


% %this is an anonymous function
setPixel = @(x,y,c) rectangle ('Position', [x, y, 1, 1], 'FaceColor', c);
%graph control ends 

%region 1
p=bb-aa*b+0.25*aa;
while(fx<fy)
    setPixel(x,y,'green');
    pause(.5);
    setPixel(-x,y,'green');
    pause(.5);
    setPixel(x,-y,'green');
    pause(.5);
    setPixel(-x,-y,'green');
    pause(.5);
    x=x+1;
    fx=fx+bb2;
    if(p<0)
        p=p+fx+bb;
    else
        y=y-1;
        fy=fy-aa2;
        p=p+fx+bb-fy;
    end
end
setPixel(x,y,'green');
pause(.5);
setPixel(-x,y,'green');
pause(.5);
setPixel(x,-y,'green');
pause(.5);
setPixel(-x,-y,'green');
pause(.5);
%region 2
p=bb*(x+0.5)*(x+0.5)+aa*(y-1)*(y-1)-aa*bb;
while(y>0)
    y=y-1;
    fy=fy-aa2;
    if(p>=0)
        p=p-fy+aa;
    else
        x=x+1;
        fx=fx+bb2;
        p=p+fx-fy+aa;
    end
setPixel(x,y,'green');
pause(.5);
setPixel(-x,y,'green');
pause(.5);
setPixel(x,-y,'green');
pause(.5);
setPixel(-x,-y,'green');
pause(.5);
end



