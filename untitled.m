scale = 0.0001;
lvv = Lvvtilde(discgaussfft(godthem256, scale), 'same');
lvvv = Lvvvtilde(discgaussfft(godthem256, scale), 'same');

figure;

subplot(2,2,1);
c1 = contour(lvv, [0 0]);
axis('image');
axis('ij');

subplot(2,2,2);
c2 = contour((lvvv < 0), [0 0]);
axis('image');
axis('ij');

subplot(2,2,3);
k = lvv .* (lvvv < 0);
contour(k, [0 0]);
axis('image');
axis('ij');

subplot(2,2,4);
m = lvv - (lvv - k >= 0);
contour(m, [0 0]);
axis('image');
axis('ij');
