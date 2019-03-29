%190208AH MATLAB program to calculate thicknesses "thick" of layers
%	given a column array "depth" of levels.
	zsurface=0.
	dimens=size(depth)	
	n=dimens(1)
	for k=1:n-1
	    zbot(k)=(depth(k)+depth(k+1))/2.;
	end
	zbot(n)=depth(n)
	thick(1)=zbot(1)-zsurface
	for k=2:n
	    thick(k)=zbot(k)-zbot(k-1);
	end
