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

p = 1 - r ;  %(5/4)-r;
while(x<y)
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
    
    if p < 0
        x = x + 1;
        p = p + 2*x + 1;
    else
        x = x + 1;
        y = y - 1;
        p = p + 2*x + 1 - 2*y;
    end
    
end
function h = circle(x,y,r)
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit);
end
  
        

