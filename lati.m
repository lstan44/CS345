latitude(1)=-90;
latitude(2)=-89.5;
for k=3:179
    latitude(k)=latitude(k-1)+1;
end
latitude(180)=90;
latitude
