function [dxtools dytools] = deriv(in_img, kernel_type)

  [delta_x delta_y] = get_delta_dir_kernels(kernel_type);

  dxtools = conv2(in_img, delta_x, 'valid');
  dytools = conv2(in_img, delta_y, 'valid');

end
