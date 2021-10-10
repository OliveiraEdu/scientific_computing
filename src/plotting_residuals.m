function  plotting_residuals(x,resid_model1, resid_model2)
 figure
 
 plot(x(:,2), resid_model1,'linewidth',2)
 
 hold
 
 plot(x(:,2), resid_model2,'linewidth',2)

 legend('Model 1','Model 2')
 title ('Forecast Error')
 xlabel('x')
 ylabel('error')
 
 grid
 
endfunction
