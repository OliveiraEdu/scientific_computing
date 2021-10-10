function [t,x,y] = read_prepare_data( data);
    
  t = ones(1,length(data)).';
  x = [t data(:,1)];
  y = data(:,2);
  
  endfunction