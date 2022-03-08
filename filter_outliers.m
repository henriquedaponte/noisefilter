% 2. Filter Outliers

load raw_data.mat;

% Filter
filter = signal;

% Spike 1
k = 520;
mean_w_curr1 = (signal(k-4)+signal(k-2)+signal(k)+signal(k+2)+signal(k+4))/5;
mean_wo_curr1 = (signal(k-4)+signal(k-2)+signal(k+2)+signal(k+4))/4;

if abs(mean_w_curr1 - mean_wo_curr1) > 0.001
    filter(k) = mean_wo_curr1;
end

% Spike 2
i = 555;
mean_w_curr2 = (signal(i-4)+signal(i-2)+signal(i)+signal(i+2)+signal(i+4))/5;
mean_wo_curr2 = (signal(i-4)+signal(i-2)+signal(i+2)+signal(i+4))/4;

if abs(mean_w_curr2 - mean_wo_curr2) > 0.001
    filter(i) = mean_wo_curr2;
end

% Spike 3
j = 601;
mean_w_curr3 = (signal(j-4)+signal(j-2)+signal(j)+signal(j+2)+signal(j+4))/5;
mean_wo_curr3 = (signal(j-4)+signal(j-2)+signal(j+2)+signal(j+4))/4;

if abs(mean_w_curr3 - mean_wo_curr3) > 0.001
    filter(j) = mean_wo_curr3;
end

% Spike 4
h = 630;
mean_w_curr4 = (signal(h-4)+signal(h-2)+signal(h)+signal(h+2)+signal(h+4))/5;
mean_wo_curr4 = (signal(h-4)+signal(h-2)+signal(h+2)+signal(h+4))/4;

if abs(mean_w_curr4 - mean_wo_curr4) > 0.001
    filter(h) = mean_wo_curr4;
end

% Spike 5
l = 687;
mean_w_curr5 = (signal(l-4)+signal(l-2)+signal(l)+signal(l+2)+signal(l+4))/5;
mean_wo_curr5 = (signal(l-4)+signal(l-2)+signal(l+2)+signal(l+4))/4;

if abs(mean_w_curr5 - mean_wo_curr5) > 0.001
    filter(l) = mean_wo_curr5;
end

% Plot signal vs Filter;
plot(500:700, signal(500:700), 'r', 500:700, filter(500:700), 'b')

