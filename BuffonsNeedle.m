L = 2;
N = 100000000;

v = rand(2,N);
th= rand(1,N)*pi/2;

n=0;
pi_est = zeros(1,N-50);
for i=1:N
    if v(1,i) < L/2*sin(th(i)) % change needle crosses vertical boundary
        if v(2,i) < L/2*cos(th(i)) % change needle crosses horizontal boundary
            n = n+1;
        end
    end
    if i > 50
        a = i/n; % = pi
        pi_est(i-50) = a;
    end
end

figure(1),
plot(pi_est); title('Estimate for pi')
xlabel('number of iterations'), ylabel('<pi>');
ylim([3.14 3.145])
