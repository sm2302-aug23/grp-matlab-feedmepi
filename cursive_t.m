% cursive letter 't'

x = [1 1.6 2];
x1 = [2 1.6 1.2 0.8];
x2 = [1.6 1.5 1.5 1.7 2 2.3];
y = [1.6 1.6 1.6];
y1 = [2.6 1.6 0.8 0.2];
y2 = [1.6 1 0.6 0.2 0.4 0.8];

n = length(x);
m = length(x1);
p = length(x2);
t = 0:n-1;
s = 0:m-1;
q = 0:p-1;
tt = 0:0.01:n-1;
ss = 0:0.01:m-1;
qq = 0:0.01:p-1;

xx = spline(t, x, tt);
x1x1 = spline(s, x1, ss);
x2x2 = spline(q, x2, qq);
yy = spline(t, y, tt);
y1y1 = spline(s, y1, ss);
y2y2 = spline(q, y2, qq);

figure(1)
plot(xx, yy, 'k', 'LineWidth', 1.5)
hold on
plot(x1x1, y1y1, 'k', 'LineWidth', 1.5)
hold on
plot(x2x2, y2y2, 'k', 'LineWidth', 1.5)
hold on
plot(x, y, 'bo', 'MarkerFaceColor', 'b')
axis([-0.2 6 -0.2 4.5])
grid on
plot(x1, y1, 'bo', 'MarkerFaceColor', 'b')
axis([-0.2 6 -0.2 4.5])
grid on
plot(x2, y2, 'bo', 'MarkerFaceColor', 'b')
axis([-0.2 6 -0.2 4.5])
grid on
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on