clear
subplot(2,2,1);
y = [1:10];
plot(y);

subplot(2,2,2);
x = [-31.4724 -40.5792 37.3013 -41.3376]
y = x.^2 + 4;
plot(x,y);

subplot(2,2,3);
x = linspace(-10,10,100);
y = cos(x);
plot(x,y);

subplot(2,2,4);
x = [-45.7507 -46.4889 34.2387 -47.0593];
y = exp(x-40);
plot(x,y);
