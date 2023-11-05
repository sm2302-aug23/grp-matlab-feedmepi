% cursive letter 'x'

x = [0.4 0.9 1.6 2.2 3];
x1 = [0.9 1.6 2.5];
y = [1.8 2.3 1.5 0.8 1.6];
y1 = [0.8 1.5 2.4];
n = length(x);
m = length(x1);
t = 0:n-1;
s = 0:m-1;
tt = 0:0.01:n-1;
ss = 0:0.01:m-1;

xx = spline(t, x, tt);
x1x1 = spline(s, x1, ss);
yy = spline(t, y, tt);
y1y1 = spline(s, y1, ss);

figure(1)
plot(xx, yy, 'k', 'LineWidth', 1.5)
hold on
plot(x1x1, y1y1, 'k', 'LineWidth', 1.5)
hold on
plot(x, y, 'bo', 'MarkerFaceColor', 'b')
axis([-0.2 6 -0.2 4.5])
grid on
plot(x1, y1, 'bo', 'MarkerFaceColor', 'b')
axis([-0.2 6 -0.2 4.5])
grid on
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

