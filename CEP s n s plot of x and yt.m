% Define time vector
t = linspace(0, 50, 1000);

% Define x(t) and y(t) signals
r = sin(2*pi*t/10);
x = 2 + r - 0.293*r.*(t-3) - 1.414*r.*(t-4.414) - 0.293*r.*(t-5.828) ...
    + r.*(t-6.828) + r.*(t-7.828) - 0.413*r.*(t-9.828) ...
    + 0.143*r.*(t-15.659) - r.*(t-17.659) - r.*(t-20.659) ...
    + 0.106*r.*(t-22.659) - 0.106*r.*(t-27.132) + r.*(t-32.132);
y = 7 - 0.707*r.*(t-3) + 0.707*r.*(t-5.828) - r.*(t-6.828) ...
    + r.*(t-7.828) + 0.515*r.*(t-9.828) - 0.515*r.*(t-15.659) ...
    - r.*(t-17.659) + r.*(t-20.659) - 0.386*r.*(t-22.659) ...
    + 0.386*r.*(t-27.132) - r.*(t-32.132);

% Plot x(t) and y(t)
figure;
subplot(2,1,1);
plot(t, x);
xlabel('Time (s)');
ylabel('Length (cm)');
title('Signal x(t)');
subplot(2,1,2);
plot(t, y);
xlabel('Time (s)');
ylabel('Width (cm)');
title('Signal y(t)');
