x1 = 0;
y1 = 0;
x2 = 4;
y2 = 5;
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

m = (y2-y1)/(x2-x1);

b = y1 - m*x1;
y = y1;
x = x1;
p =0;
while(x <= x2 || y <= y2)
    fprintf('%.2f\t%.2f\n',round(x),round(y));
    setPixel(round(x),round(y),'green');
    if(m>1)  
        x = (x + 1/m);
        y = y + 1;
        
    elseif (m<1)
        y = y + m;
        x = x + 1;
    else
        y = y+1;
        x = x+1;
    end
end
    
    

