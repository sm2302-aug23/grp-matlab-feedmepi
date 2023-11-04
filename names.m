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

% cursive name of second member - aqil

x = [3.4 2 1.2 1.9 3.2 3.4 3.2 3.7 4.9 5.6 6.8 6.7 6.6 5.6 4.9 5.6 6.8 6.7 6.6 5.6 4.9 5.6 6.8 6.7 6.6 6.4 6.1 5.7 6 6.5 6.4 7 8 8.5 9 9.4 9.1 9.1 9.8 10.5 11.65 12.2 12.5 11.95 11.65 11.5 12 13];
y = [4 3.7 2.8 2 3 4 3 2 2.7 3.8 4 3.35 2.7 2 2.7 3.8 4 3.35 2.7 2 2.7 3.8 4 3.35 2.7 2.2 1.5 0.6 0 0.6 2.2 2.35 2 2.2 3 3.9 3 2.2 2 2.3 3.8 4.7 5.7 4.7 3.8 2.4 2 2.5];

n = length(x);
t = 0:n-1;
tt = 0:0.01:n-1;

xx = spline(t, x, tt);
yy = spline(t, y, tt);

figure(2)
plot(xx, yy, 'k', 'LineWidth', 1.5)
hold on
plot(x, y , 'bo', 'MarkerFaceColor', 'b')
grid on
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on
pos = [9.5 4.4 0.25 0.25];
rectangle('Position',pos, 'Curvature',[1 1])
axis equal