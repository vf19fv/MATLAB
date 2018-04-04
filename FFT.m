data = data2.';
tmp = detrend(data);
data = transpose(tmp);
m = length(data);
n = pow2(nextpow2(m));
y = fft(data,n);
f = (0:n-1)*(1/n);
power = y.*conj(y)/n;
figure
plot(f(1:length(f)/2),power(1:length(f)/2))