x1 = 0;
y1 = 5;
x2 = 17;
y2 = 15;
%controlling the graph here
plot([x1 x2]+.5, [y1 y2]+.5);
axis equal;
set(gca,'Xtick',0:50)
set(gca,'Ytick',0:50)
hold ('on');
grid 'on';
%this is an anonymous function
setPixel = @(x,y,c) rectangle ('Position', [x, y, 1, 1], 'FaceColor', c);
%graph control ends 

dx = abs(x2-x1);
dy = abs(y2-y1);
%2dx and 2dy 
tdx = 2*dx;
tdy = 2*dy;
tdy_tdx = 2*(tdy - tdx);
p0 = 2*dy - dx;
%contracting table with p,x,y formula : p_k+1 = pk + 2dy-2dx
% initially
p = p0;
x = x1;
y = y1;
%loop
while (x ~= x2 || y ~= y2)
    fprintf('%d\t%d\t%d\n',p,x,y);
    setPixel (x, y,'green');
     pause(0.5);
    if p>=0
        p = p + 2*dy - 2*dx;
    else
        p = p + 2*dy; 
    end
    if p>0
        x = x+1;
        y = y+1;
    else
        x = x +1;
    end
    
end
%fprintf('%d\t%d\t%d\n',p,x,y);
     






