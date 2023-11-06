x = [0.5 0.9 1.5 2 1.5 0.9 1.4 2.1];
y = [0.5 1.3 2.2 1.8 2.2 1.3 0.5 0.7];

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