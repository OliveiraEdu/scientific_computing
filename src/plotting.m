function  plotting(data,x,y,yHat,y_hat)

 scatter (data(:,1),data(:,2),'g','linewidth',2)
 hold
 plot(x(:,2), yHat,'linewidth',2)
 plot(data(:,1), y_hat,'linewidth',2)
 legend('data', 'MMQ model', 'Two Points model')
 title ('Linear Models Evaluation')
 xlabel('x')
 ylabel('f(x)')
endfunction
