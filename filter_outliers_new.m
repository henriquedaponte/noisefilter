% 2. Filter Outliers

load raw_data.mat;

% Filter
filter = signal;


for k = 504:696
    
    mean_w_curr = (signal(k-2)+signal(k-1)+signal(k)+signal(k+1)+signal(k+2))/5;
    mean_wo_curr = (signal(k-2)+signal(k-1)+signal(k+1)+signal(k+2))/4;
    
    if abs(mean_w_curr - mean_wo_curr) > 0.001
    filter(k) = mean_wo_curr;
    end   
end

% Plot Signal vs Filter;
plot(500:700, signal(500:700), 'r', 500:700, filter(500:700), 'b')

