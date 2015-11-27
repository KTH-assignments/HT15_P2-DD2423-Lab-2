tools = few256;

figure;
subplot(3,2,1);
scale = 0.0001;
showgrey(Lvvvtilde(discgaussfft(tools, scale), 'same') < 0)
title(sprintf('Sign of the third order derivative. White means negative. scale = %f', scale));
axis('image');
axis('ij');

subplot(3,2,2);
scale = 1;
showgrey(Lvvvtilde(discgaussfft(tools, scale), 'same') < 0)
title(sprintf('Sign of the third order derivative. White means negative. scale = %f', scale));
axis('image');
axis('ij');

subplot(3,2,3);
scale = 4;
showgrey(Lvvvtilde(discgaussfft(tools, scale), 'same') < 0)
title(sprintf('Sign of the third order derivative. White means negative. scale = %f', scale));
axis('image');
axis('ij');

subplot(3,2,4);
scale = 16;
showgrey(Lvvvtilde(discgaussfft(tools, scale), 'same') < 0)
title(sprintf('Sign of the third order derivative. White means negative. scale = %f', scale));
axis('image');
axis('ij');

subplot(3,2,5);
scale = 64;
showgrey(Lvvvtilde(discgaussfft(tools, scale), 'same') < 0)
title(sprintf('Sign of the third order derivative. White means negative. scale = %f', scale));
axis('image');
axis('ij');
