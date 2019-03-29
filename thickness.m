interface1
width(1)=interface(1);
for k=2:n-1
    width(k)=interface(k)-interface(k-1);
end
width(n)=5000-interface(n-1);
width
