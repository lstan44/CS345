u=size(latitude)
nla=u(2)
deg=pi/180
lsr(1)=-90*deg
for j=2:nla
    lsr(j)=((latitude(j)+latitude(j-1))/2)*deg;
end
lsr(nla+1)=pi/2
for j=1:nla
    latw(j)=sin(lsr(j+1))-sin(lsr(j));
end
