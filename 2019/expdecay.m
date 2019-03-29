%190315[Ides of March]AH Reworking of old exponential decay program.
%	a(l) is the amount of neutrons at timestep l-1 .
clear
a(1)=1.e6 %a(1) is A_0 , the amount at time 0
t(1)=0
%dt=1
%dt=10
%dt=60
dt=600
%dt=1200
%dt=1800
C=1./1200.
ttotal=3600.
nl=ttotal/dt
for l=1:nl
t(l+1)=l*dt;
a(l+1)=(1-C*dt)*a(l);
end
plot(t,a);
axis([0. ttotal  -2*a(1) 2*a(1)])
xlabel('time in seconds')
ylabel('expectation number of neutrons')
title('simulated neutron decay')
%Theoretical
%	t_th=0:dt:ttotal;
%a_th=exp(t_th);
%plot(t_th,a_th)
%axis([0. ttotal -2a 2a])
%title('theoretical neutron decay')
%ylabel('simulated expectation number - theoretical expectation number')
%title('simulated - theoretical neutron decay')
%plot(t_th,a-a_th);
%ylabel('(sim. ex. number - theo. ex. number)/theo. ex. number')
%title('proportional simulated - theoretical neutron decay')
%plot(t_th,(a-a_th)./a_th);
%axis([0. 3600. -1.e-3 1.e-3])

