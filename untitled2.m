scale = 4;
lvv = Lvvtilde(discgaussfft(few256, scale), 'same');
lvvv = Lvvvtilde(discgaussfft(few256, scale), 'same');

figure;

subplot(1,4,1);
c1 = contour(lvv, [0 0]);
axis('image');
axis('ij');

subplot(1,4,2);
c2 = contour((lvvv < 0), [0 0]);
axis('image');
axis('ij');

subplot(1,4,3);
k = log(1 + lvv .* (lvvv < 0));
contour(k, [0 0]);
axis('image');
axis('ij');

subplot(1,4,4);
m = lvv .* k;
contour(m, [0 0]);
axis('image');
axis('ij');