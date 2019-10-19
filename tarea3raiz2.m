xl = -2;
xu = 0;
i = 1;
e(i)=10;

while(e(i)>0.01)
    
    xr=(xl+xu)/2;
    
    g_xl=(xl^3-(xl*10)-5);
    g_xr=(xr^3-(xr*10)-5);
    g_xu=(xu^3-(xu*10)-5);
    
    if(g_xl*g_xr < 0)
        xu=xr;
        e(i+i)= abs(xr-xl);
    end
    
    if(g_xu*g_xr< 0)
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
    
    