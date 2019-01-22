r = 5;
xc = 0;
yc = 0;

x = xc;
y = r;
%controlling the graph here
hold ('on');
circle(xc+.5,yc+.5,r+.5);
xlim([-10 10]);
ylim([-10 10]);
set(gca,'Xtick',-10:1:10)
set(gca,'Ytick',-10:1:10)
axis equal;
grid on


% %this is an anonymous function
setPixel = @(x,y,c) rectangle ('Position', [x, y, 1, 1], 'FaceColor', c);
%graph control ends 

d = 3-2*r; 
while(x<=y)
    %mail finding
    setPixel (x, y,'green');
    %using the symmetric property
    pause(.5);
    setPixel (y, x,'green');
    pause(.5);
    setPixel (-x, y,'green');
    pause(.5);
    setPixel (-y, x,'green');
    pause(.5);
    
    setPixel (x, -y,'green');
    pause(.5);
    setPixel (y, -x,'green');
    pause(.5);
    setPixel (-x, -y,'green');
    pause(.5);
    setPixel (-y, -x,'green');
    
    if d < 0
        d = d + 4*x + 6;
    else
        y = y - 1;
        d = d + 4*( x - y ) + 10;
    end
    x = x + 1;  
end
function h = circle(x,y,r)
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit);
end
  
        

