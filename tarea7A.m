xl = 0.1;
xu = 0.5;
i=1;
e(i)=10;
while(e(i)<0.01)
    
    xr=(xl+xu)/2;
    
    g_xl=(log(xl^2)+1)-(exp(xl/2))*cos(pi*xl);

    g_xr=(log(xr^2)+1)-(exp(xr/2))*cos(pi*xr);
    
    g_xu=(log(xu^2)+1)-(exp(xu/2))*cos(pi*xu);
    
    
    if(g_xl*g_xr < 0)
        xu=xr;
        e(i+1)= abs(xr-xl);
    end
    
    if(g_xu*g_xr < 0)
        xl=xr;
        e(i+1)= abs(xu-xr);
    end
    
    i=i+1;
    
    if(g_xu*g_xr == 0)
        xr=xr;
    end
end
tam = size(e);
ite = 1:1:tam(2);
figure('DefaultAxesFontSize',14)
plot (ite,e,'color',[1 0 0],'LineWidth',2);
set(gcf,'color','white');
grid on
xlabel('Iterations')
ylabel('error')
title 'ERROR'
        
        
    
    
    