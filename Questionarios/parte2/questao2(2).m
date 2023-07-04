function [x_interp, y_interp] = interpolar_pontos()
    x = linspace(-0.15, 0.44, 7);
    y = 4*x.^10 + 8*exp(x.^6) + 7*x + 2*x.^4;

    menor_x = min(x);
    maior_x = max(x);

    pontos_interp = menor_x + rand(4, 1) * (maior_x - menor_x);

    A = zeros(4, 4);
    b = zeros(4, 1);

    for i = 1:4
        A(i, :) = pontos_interp(i).^(0:3);
        b(i) = interp1(x, y, pontos_interp(i));
    end

    coeficientes = A\b;

    x_interp = linspace(menor_x, maior_x, 100);
    y_interp = polyval(flip(coeficientes), x_interp);
end

