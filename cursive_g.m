x = [1 1.4 1.66 1.8 1.85 1.75 1.225 1.4 1.8 1.85 1.8 1.2 1 1.4 2];
y = [1.1 1.4 1.6 1.9 2.2 2.4 2 1.4 1.9 2.2 1.3 0.4 0.7 1.2 1.5];

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