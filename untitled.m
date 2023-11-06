x = [0.6 1 1.5 1.5 1.4 1 1 1.5 1.8];
y = [1 1.4 2 1.1 0.6 0.2 0.8 1.1 1.2];


n = length(x);
t = 0:n-1;
tt = 0:0.01:n-1;

xx = spline(t, x, tt);
yy = spline(t, y, tt);

figure(3)
plot(xx, yy, 'k', 'LineWidth', 1.5)
hold on
plot(x, y, 'bo', 'MarkerFaceColor', 'b')
grid on
title('Spline Interpolation of Cursive name IZZA')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

axis equal