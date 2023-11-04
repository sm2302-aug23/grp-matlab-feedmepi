% cursive name of first member - yeezee

x = [2 2.8 3 2.5 2.9 3.8 4.2 3.6 2.3 2 3.4 4 6 5.4 4 4.6 6 8 7.4 6 6.6 8 8.6 9.4 9 8 9 9.4 8.6 8 8.2 8.6 9.2 8.2 8.6 9.4 10 12 11 10 10.6 12 14 13 12 13 14];
y = [5 6 5.8 4.4 4 5 6 4 1.7 2 3.6 4 5.2 5.6 4 3 4 5.2 5.6 4 3 4 4.4 5.6 6 5 6 5.6 4.4 4 4.4 4.4 3.4 2 3 3.6 4 5.2 5.4 4 3 4 5.2 5.4 4 3 3.4];

n = length(x);
t = 0:n-1;
tt = 0:0.01:n-1;

xx = spline(t, x, tt);
yy = spline(t, y, tt);

figure(1)
plot(xx, yy, 'k', 'LineWidth', 1.5)
hold on
plot(x, y, 'bo', 'MarkerFaceColor', 'b')
axis([-0.2 6 -0.2 4.5])
grid on
title('Spline Interpolation of Cursive name YEEZEE')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on