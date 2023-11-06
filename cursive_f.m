x = [0.8 1 1.35 1.73 1.85 1.525 1.2 1.35 1.5 1.48 1.3 1.52 1.8];
y = [1 1.25 1.675 2.2 2.6 2.2 0.8 0.4 0.8 1.1 1.3 1.22 1.25];

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