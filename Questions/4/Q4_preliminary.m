clear;
% ------------------ Create masks ------------------

% Get the first order derivative kernels
[dxmask dymask] = get_delta_dir_kernels(2);

% Include them into a 5x5 matrix
dxmask_5 = zeros(5,5);
dxmask_5(3, 2:4) = dxmask;

dymask_5 = zeros(5,5);
dymask_5(2:4, 3) = dymask;

% Get the second order derivative kernel
[dxxmask dyymask] = get_delta_dir_kernels(5);

% Include them into a 5x5 matrix
dxxmask_5 = zeros(5,5);
dxxmask_5(3, 2:4) = dxxmask;

dyymask_5 = zeros(5,5);
dyymask_5(2:4, 3) = dyymask;


dxxxmask_5 = conv2(dxmask_5, dxxmask_5, 'same');
dxxymask_5 = conv2(dxxmask_5, dymask_5, 'same');
dxyymask_5 = conv2(dxmask_5, dyymask_5, 'same');
dyyymask_5 = conv2(dymask_5, dyymask_5, 'same');


[x y] = meshgrid(-5:5, -5:5);

a = filter2(dxxxmask_5, x .^3, 'valid');
figure
plot(a, x)
b = filter2(dxxmask_5, x .^3, 'valid');
figure
plot(b)
c = filter2(dxxymask_5, x .^2 .* y, 'valid');
figure
plot(c)
