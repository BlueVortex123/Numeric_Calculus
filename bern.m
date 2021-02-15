function y=bern(functie,a,b)
m=moviein(20);
f=inline(functie,'x');
x=a:.1:b;
plot(x,f(x),'cs');
title('Functia de aproximat');
hold on
bernstein=zeros(length(x),1)
for n=1:20
    for t=1:length(x)
        bernstein(t)=0;
        for k=0:n
            bernstein(t)=bernstein(t)+f(k/n)*nchoosek(n,k)*x(t)^k*(1-x(t))^(n-k);
        end
    end
    plot(x,bernstein,'k-');
    title(["Polinomul Bernstein de ordin ",num2str(n)]);
    m(:,n)=getframe;
    pause(.5);
end
hold off