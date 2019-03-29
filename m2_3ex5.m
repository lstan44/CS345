dx=0.001
nmax=2000
for i=-nmax:nmax
%Since MATLAB has only natural number indices, use j as index instead of i.
    j=i+2001;
    x(j)=dx*i;
    y(j)=exp(x(j));
end
plot(x,y)
