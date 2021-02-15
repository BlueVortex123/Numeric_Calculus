function k=funverif(string,a,b)
try
    z=inline(string,'x');
    y=a:.1:b;
    z(y);
    k=true;
catch
    k=false;
end
