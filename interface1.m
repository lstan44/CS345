clear
sample
dimz=size(depth)
n=dimz(1)
for k=1:n-1
    interface(k)=(depth(k)+depth(k+1))/2;
end
interface
