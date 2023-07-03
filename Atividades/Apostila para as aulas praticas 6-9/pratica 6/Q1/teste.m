x = [-1.455 0 0.762 1.178];
y1 = exp(-1.455/2)*(-1.455)^2 - 10;
y2 = exp(0/2)*(0)^2 - 10;
y3 = exp(0.762/2)*(0.762)^2 - 10;
y4 = exp(1.178/2)*(1.178)^2 - 10;
y = [y1 y2 y3 y4];

plot (x, y, 'o');
hold on;

xi = linspace(-1.455, 1.178, 100);
yi = exp(xi/2).*(xi).^2 - 10;
plot(xi, yi);

% Cálculo da curva interpoladora
yi = zeros(size(xi));
for i = 1:length(xi)
    yi(i) = interpola(x, y, xi(i));
end

plot(xi, yi);
