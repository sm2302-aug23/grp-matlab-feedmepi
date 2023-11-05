x = [0.7 1.1 1.4 1.57 1.28 1.1 1.3 1.6 1.8 1.825 1.6 1.6 1.8 2.2];
y = [0.65 1 1.4 1.8 1.5 1 0.6 1.2 2 2.6 2 1.2 0.8 0.8];

n = length(x);
t = 0:n-1;
tt = 0:0.01:n-1;

xx = spline(t, x, tt);
yy = spline(t, y, tt);

figure(1)
plot(xx, yy, 'k', 'LineWidth', 1.5)
hold on
plot(x, y , 'bo', 'MarkerFaceColor', 'b')
axis([0 3 0 3])
grid on
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on