function [t,x,y] = read_prepare_data( data);
  
  t = ones(1,length(data)).'; %generates a single column matrix with ones
  x = [t data(:,1)]; %generates a two columns matrix with ones and the independent variable
  y = data(:,2); %generates a single column matrix with the dependent variable
  
  endfunction