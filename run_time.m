
a = ones(1,100000000);
b = 2*ones(1,100000000);
c = zeros(1,100000000);


for k = 1:100000000
  c(k) = a(k)*b(k);
end

% c = a.*b;