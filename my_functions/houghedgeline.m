function [linepar acc] = houghedgeline(pic, scale, gradmagnthreshold, ...
  nrho, ntheta, nlines, verbose)

  % Should be given as arguments one level up
    % Suppose image of dimension N x N
    %N = size(pic, 2);

    % theta: from -90 to +90 (plus 0)
    %ntheta = 181;

    % rho: from -sqrt(2) * D to + sqrt(2) * D (plus 0). D is the diagonal distance
    % of the image. D = sqrt(2 * N^2)
    %nrho = 2 * (2*N) + 1;

  % Extract edges from pic
  edgecurves = extractedge(pic, scale, gradmagnthreshold, 'same');

  if verbose >= 1
    overlaycurves(pic, edgecurves);
  end

  % Get the gradient image from pic
  % TODO consider smoothing pic as done in edgecurves
  lv = sqrt(Lv(pic, 2));

  % Run houghline
  [linepar acc] = ...
    houghline(edgecurves, lv, nrho, ntheta, gradmagnthreshold, nlines, verbose);

end
