function f1( data)
  
  t = ones(1,length(data)).'
  x = [t data(:,1)]
  y = data(:,2)
  
  scatter (data(:,1),data(:,2))
  
  fprintf ('------------------ Model 1 ------------------\n')
  linear_MMQ(x,y)



  
  fprintf ('------------------ Model 2 ------------------\n')
  linear_two_points(data)
  
  endfunction