
% Given signals
r = 6;
t = 0:0.001:30;
x = 2 + r*(t) - 0.293*r*(t-3) - 1.414*r*(t-4.414) - 0.293*r*(t-5.828) + r*(t-6.828) + r*(t-7.828) - 0.413*r*(t-9.828) + 0.143*r*(t-15.659) - r*(t-17.659) - r*(t-20.659) + 0.106*r*(t-22.659) - 0.106*r*(t-27.132) + r*(t-32.132);
y = 7 - 0.707*r*(t-3) + 0.707*r*(t-5.828) - r*(t-6.828) + r*(t-7.828) + 0.515*r*(t-9.828) - 0.515*r*(t-15.569) - r*(t-17.569) + r*(t-20.569) - 0.247*r*(t-22.569) + 0.247*r*(t-27.042) + r*(t-32.042);

% Plotting x(t)
subplot(2,1,1);
plot(t,x);
title('Signal x(t)');
xlabel('Time (s)');
ylabel('Amplitude');

% Plotting y(t)
subplot(2,1,2);
plot(t,y);
title('Signal y(t)');
xlabel('Time (s)');
ylabel('Amplitude');

% Plotting y(t) vs x(t)
figure;
plot(x,y);
title('Shape cut out');
xlabel('x(t)');
ylabel('y(t)');
axis equal;

% Calculating time required for laser cutting
time = t(end)-t(1);
fprintf('Time required for laser cutting is %f seconds.\n', time);