function test45(inpic, scale)

vv = Lvvtilde(discgaussfft(inpic, scale), 'same');
vvv = Lvvvtilde(discgaussfft(inpic, scale), 'same');

test = vv & (vvv < 0);

figure
subplot(1,3,1)
contour(vv, [0 0]);
title(sprintf('Zero crossings of the second order derivative. Scale = %f', scale));
axis('image')
axis('ij')

subplot(1,3,2)
showgrey(vvv < 0);
title(sprintf('The sign of the third order derivative. Scale = %f', scale));
axis('image')

subplot(1,3,3)
contour(test, [0 0]);
axis('image')
axis('ij')
