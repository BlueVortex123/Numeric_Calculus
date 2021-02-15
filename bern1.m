function z=bern1(functie,a,b)
m=moviein(20);
f=inline(functie,'x');
x=a:.1:b;
plot(x,f(x),'cs');
title('Functia de aproximat');
hold on
bernstein=zeros(length(x),1)
x=(x-a)/(b-a);%[a,b]->[0,1]
for n=1:100
    for t=1:length(x)
        bernstein(t)=0;
        for k=0:n
            bernstein(t)=bernstein(t)+f(a+(k/n)*(b-a))*nchoosek(n,k)*x(t)^k*(1-x(t))^(n-k);
        end
    end
    x=a+x*(b-a)%[0,1]->[a,b]
    plot(x,bernstein,'k-');
    title(["Polinomul Bernstein de ordin ",num2str(n)]);
    x=(x-a)/(b-a);%[a,b]->[0,1]
    m(:,n)=getframe;
    pause(.1);
end
hold off