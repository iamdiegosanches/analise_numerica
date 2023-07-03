x = [1, 2, 3, 4, 5, 6];
f = [0.841, 0.909, 0.141, -0.757, -959, -0.279];

p = polyfit(x, f, 2);

roots_p = roots(p);

for i = 1:length(roots_p)
    x_root = roots_p(i);
    f_root = polyval(p, x_root);

    if min(x) <= x_root && x_root <= max(x) && abs(f_root) < 1e-6
        break;
    end
end

fprintf('A raiz da fun��o � aproximadamente %.4f\n', x_root);

