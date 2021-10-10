function [t,x,y] = f2( data)
  
  t = ones(1,length(data)).';
  x = [t data(:,1)];
  y = data(:,2);
  
  endfunction