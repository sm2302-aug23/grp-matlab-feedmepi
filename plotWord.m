function plotWord(inputString)

% making the container map for each letter 
letters = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 's', 'u', 'v', 'w', 'y', 'z'};
ax = [0.4 1 1.7 1.3 1 1.2 1.5 1.7 1.6 1.85];
ay = [0.4 0.95 1.85 1.8 0.95 0.6 1 1.85 1 0.7];
bx = [0.6 1 1.4 1.35 1.1 1 1.35 1.65 1.5 1.25 1.75];
by = [0.5 1 2 2.5 1.8 1 0.5 0.9 1.25 1.2 1.2];
cx = [0.5 0.9 1.5 2 1.5 0.9 1.4 2.1];
cy = [0.5 1.3 2.2 1.8 2.2 1.3 0.5 0.7];
dx = [0.7 1.1 1.4 1.57 1.28 1.1 1.3 1.6 1.8 1.825 1.6 1.6 1.8 2.2];
dy = [0.65 1 1.4 1.8 1.5 1 0.6 1.2 2 2.6 2 1.2 0.8 0.8];
ex = [0.5 0.84 1.5 1.95 1.5 0.9 1.4 2.1];
ey = [0.5 0.86 1.35 1.8 2.2 1.3 0.5 0.7];
fx = [0.8 1 1.35 1.73 1.85 1.525 1.2 1.35 1.5 1.48 1.3 1.52 1.8];
fy = [1 1.25 1.675 2.2 2.6 2.2 0.8 0.4 0.8 1.1 1.3 1.22 1.25];
gx = [1 1.4 1.66 1.8 1.85 1.75 1.225 1.4 1.8 1.85 1.8 1.2 1 1.4 2];
gy = [1.1 1.4 1.6 1.9 2.2 2.4 2 1.4 1.9 2.2 1.3 0.4 0.7 1.2 1.5];
hx = [0.8 1.45 1.4 1 1.26 1.7 1.65 1.7 2];
hy = [1.6 2.6 2 0.4 1.39 1.4 0.8 0.4 0.8];
ix = [0.9 1.4 1.6 1.4 1.5 1.8];
iy = [0.8 1.4 2 1.4 0.8 1];
sx = [0.7 2 1.9 2 2 1.8 1.6 1.4 1.2 1 1 1.2 1.4 1.6 1.8 2.2 3];
sy = [0.7 2 1.7 1.2 0.6 0.4 0.4 0.4 0.4 0.6 0.6 0.4 0.4 0.4 0.4 0.6 1.2];
ux = [0.6 1 0.8 1.1 1.7 2 1.9 2.2 2.6];
uy = [1.3 2 1 0.6 1 2 1 0.6 1.2];
vx = [0.4 1 1.2 1.1 1.2 1.6 2 2 2.2 2.6];
vy = [0.8 1.8 2 1 0.6 1 2 1.2 1 1.4];
wx = [0 0.6 1 0.8 1 1.3 1.6 1.5 1.8 2.1 2.4 2.4 2.7 3];
wy = [0.6 1.2 2 1 0.6 1 2 1 0.6 1 2 1.4 1.1 1.4];
yx = [0.5 0.9 1 1.1 1.7 1.9 1.4 0.7 1 2.6];
yy = [2 2.6 2 1.4 2 2.6 1 0.1 1 2.4];
zx = [0.8 1.5 1.9 1.6 1 1.3 1.6 1.8 1.6 1.1 1 1.8 2.6];
zy = [2 2.6 2.2 1.6 1.4 1.7 1.6 1.2 0.4 0 0.4 1.2 2];

x_coords = {ax, bx, cx, dx, ex, fx, gx, hx, ix, sx, ux, vx, wx, yx, zx};
y_coords = {ay, by, cy, dy, ey, fy, gy, hy, iy, sy, uy, vy, wy, yy, zy};

x_letters = containers.Map(letters, x_coords);
y_letters = containers.Map(letters, y_coords);

% making it so that function takes lowercase and uppercase inputs
inputString = lower(inputString);

x = [];
y = [];
x_temp = [0];
% creating for loop to combine the coordinates of the letters
for i = 1:length(inputString)
    letter = inputString(i);
    if isKey(x_letters, letter)
        % adding the max x coordinates of the letters before the current
        % letter
        x = [x x_letters(letter)+max(x_temp)];
        x_temp = [x x_letters(letter)];
        y = [y y_letters(letter)];
    end
end

% creating the plot for the cursive word
n = length(x);
t = 0:n-1;
tt = 0:0.01:n-1;

xx = spline(t, x, tt);
yy = spline(t, y, tt);
figure(1)
plot(xx, yy, 'k', 'LineWidth', 1.5)
hold on
axis equal
grid on
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on

% adding the dot for i if it is in the input string
x = [];
x_temp = [0];
for i = 1:length(inputString)
    letter = inputString(i);
    if isKey(x_letters, letter)
        x = [x x_letters(letter)+max(x_temp)];
        x_temp = [x x_letters(letter)];
        if letter == 'i'
            pos = [x(end-3) 2.1 0.125 0.125];
            rectangle('Position',pos, 'Curvature',[1 1])
        end
    end
end
    
end
