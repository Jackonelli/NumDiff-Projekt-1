n = 13;
lambda = 1;
t0=0;
tf=1;
y0=1;
%förallokeringen
N = zeros(n,1);
error = zeros(n,1);
for i = 1:n
   N(i)=2.^(i); 
   error(i)=RK4err(lambda, y0, t0, tf, N(i));
end
h = (tf-t0)./N;
xlabel('h')
ylabel('error')
loglog(h, abs(error), 'r')