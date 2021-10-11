function  plotting_data_models(data,x,y,yHat_model1,yHat_model2)

 scatter (data(:,1),data(:,2),'k','+','linewidth',2)
 hold
 plot(data(:,1), yHat_model1,'b','linewidth',2)
 plot(data(:,1), yHat_model2,'r','linewidth',2)
 legend('data', 'Model 1', 'Model 2')
 title ('Linear Models Evaluation')
 xlabel('x')
 ylabel('f(x)')
 grid
 
endfunction
