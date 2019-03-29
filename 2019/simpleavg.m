load JAN1941sample
data= JAN1941sample
lon=data(:,1);
lat=data(:,2);
depth=data(:,3);
kh=data(:,5);
ri=data(:,4);
mask=(ri~=-1.e30);
riavg=sum(ri.*mask)/sum(mask)
khavg=sum(kh.*mask)/sum(mask)
