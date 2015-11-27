house = godthem256;

figure;
subplot(3,2,1);
scale = 0.0001;
contour(Lvvtilde(discgaussfft(house, scale), 'same'), [0 0]);
title(sprintf('Zero crossings of the second derivative. scale = %f', scale));
axis('image');
axis('ij');

subplot(3,2,2);
scale = 1;
contour(Lvvtilde(discgaussfft(house, 1), 'same'), [0 0]);
title(sprintf('Zero crossings of the second derivative. scale = %d', scale));
axis('image');
axis('ij');

subplot(3,2,3);
scale = 4;
contour(Lvvtilde(discgaussfft(house, 4), 'same'), [0 0]);
title(sprintf('Zero crossings of the second derivative. scale = %d', scale));
axis('image');
axis('ij');

subplot(3,2,4);
scale = 16;
contour(Lvvtilde(discgaussfft(house, 16), 'same'), [0 0]);
title(sprintf('Zero crossings of the second derivative. scale = %d', scale));
axis('image');
axis('ij');

subplot(3,2,5);
scale = 64;
contour(Lvvtilde(discgaussfft(house, 64), 'same'), [0 0]);
title(sprintf('Zero crossings of the second derivative. scale = %d', scale));
axis('image');
axis('ij');
