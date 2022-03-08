% 1. Iterate

% Domain.
x = 0:0.1:1.5;

% Equations.
y1 = x;
y2 = cos(x);

% Plot.
plot(x, y1, 'm', x, y2, 'c');
title('y = x and y = cos(x)')
xlabel('x')
ylabel('y')
legend('y = x', 'y = cos(x)')

% Initial value of x.
xi = 0.5;

% Initialization/cutoff variable for while loop.
cut = 1;

% While loop solving x = cos(x).
while(cut > 10e-5)
   
    x1 = xi;
    xi = cos(xi);
    cut = abs(x1-xi);
end

% Display result.
D = ['The solution to x = cos(x) is at: x = ', num2str(xi)];
disp(D);