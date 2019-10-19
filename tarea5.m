init_value=2

i=1;

e(i)=10;

while(e(i)>0.00001)
    if(i == 1)
        x(i)=init_value;
    end
    
    g(i)= (x(i)+1)^(1/3)
    
    i=i+1;
    
    x(i)=g(i-1);
    e(i)=abs(x(i-1)-x(i));
    if (e(i)>50);

        break;

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
        