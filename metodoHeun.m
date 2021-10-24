function [] = metodoHeun(f,xx,yy,paso)

    syms x y;
    
    xx = xx(1):paso:xx(2);
    
    ye = yy;
    % metodo euler
    for i = 1:length(xx)-1
        ye(i+1) = ye(i) + subs(f,{x,y},{xx(i),ye(i)}).*paso;
    end
    
    % metodo Heun
    for i = 1:length(xx)-1
        yy(i+1) = yy(i) + (subs(f,{x,y},{xx(i),yy(i)}) + subs(f,{x,y},{xx(i+1),ye(i+1)}) ).*paso / 2;
    end
   
    figure(1)
    plot(xx,yy,'r')
    
end