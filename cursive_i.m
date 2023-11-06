x = [0.9 1.4 1.6 1.4 1.5 1.8];
y = [0.8 1.4 2 1.4 0.8 1];

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
pos = [1.6 2.1 0.125 0.125];
rectangle('Position',pos, 'Curvature',[1 1])
axis equal