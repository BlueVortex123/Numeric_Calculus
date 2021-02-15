function z=lagrange(functie,a,b)
m=moviein(20);
f=inline(functie,'x')
x=a:.1:b;
plot(x,f(x),'cs');
title('Functia de interpolat');
hold on
lagrange=zeros(length(x),1);
for n=2:10
    step=(b-a)/(n-1);
    xi=a:step:b;
    yi=f(xi);
    for t=1:length(x)
        lagrange(t)=0;
        for j=1:n
            numarator=1;numitor=1;
            for i=[1:j-1 j+1:n]
                numarator=numarator*(x(t)-xi(i));
                numitor=numitor*(xi(j)-xi(i));
            end
            lj=numarator/numitor;
            lagrange(t)=lagrange(t)+f(xi(j))*lj;
        end
    end
    plot(xi,yi,'ro',x,lagrange,'k-');
    title(["Polinomul Lagrange de ordin ",num2str(n-1)]);
    m(:,n)=getframe;
    pause(.5);
end
hold off