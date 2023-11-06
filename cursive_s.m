% cursive letter 's'

x = [0.7 2 1.9 2 2 1.8 1.6 1.4 1.2 1 1 1.2 1.4 1.6 1.8 2.2 3];
y = [0.7 2 1.7 1.2 0.6 0.4 0.4 0.4 0.4 0.6 0.6 0.4 0.4 0.4 0.4 0.6 1.2];
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
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on