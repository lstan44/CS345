clear
a(1)=1.e6	%Initial sample 
t(1)=0
%dt=1.		%timestep
%dt=10
%dt=60
%dt=600
%dt=1200
dt=1800
k=1./1200.	%Decay rate
ttotal=3600.    %Total simulation time
nl=(ttotal/dt)+1	%Number of timesteps
for l=1:nl
  t(l+1)=l*dt;
  a(l+1)=(1-k*dt)*a(l);
end
%plot(t,a);
%axis([0. 3600. -1.e6 1.e6])
%xlabel('time in seconds')
%ylabel('expectation number of neutrons')
%title('simulated neutron decay')
for l=1:nl+1
   t_th(l)=(l-1)*dt;
   a_th(l)=a(1)*exp(-k*t_th(l));	%theoretical solution
end
%plot(t_th,a_th)
%title('theoretical neutron decay')
%axis([0. 3600. -200 200])
%axis([0. 3600. -1000000 1000000])
%ylabel('simulated expectation number - theoretical expectation number')
%title('simulated - theoretical neutron decay')
%plot(t_th,a-a_th);
ylabel('(sim. ex. number - theo. ex. number)/theo. ex. number')
title('proportional simulated - theoretical neutron decay')
plot(t_th,(a-a_th)./a_th);
%axis([0. 3600. -1.e-3 1.e-3])
axis([0. 3600. -4. 4.])

