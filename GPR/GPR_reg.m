function [result] = GPR_reg(k,vi,npv) 
row= size(vi,1);
indices = crossvalind('Kfold', row, k);
    for i = 1 : k
         % 获取第i份测试数据的索引逻辑值
         test_x_id = (indices == i);
         test_y_id = (indices == i);
         % 取反，获取第i份训练数据的索引逻辑值
         train_x_id = ~test_x_id;
         train_y_id = ~test_y_id;
         %训练集和测试集
         test_y = npv(test_y_id);
         train_y = npv(train_y_id);
         test_x=vi(test_x_id,:);
         train_x=vi(train_x_id,:);
         % 训练模型           
         A = fitrgp(train_x,train_y,"Standardize",true,'KernelFunction','squaredexponential');
         % 使用训练好的模型进行预测 
         %训练集
         tyfit = predict(A, train_x);
         result(i,1)=1-sum((train_y-tyfit).^2)/sum((train_y-mean(train_y)).^2);%R2
         %测试集
         yfit = predict(A, test_x);
         result(i,2)=1-sum((test_y-yfit).^2)/sum((test_y-mean(test_y)).^2);
         result(i,3)=rmse(yfit,test_y);
         result(i,4)=100*rmse(yfit,test_y)/mean(test_y);
    end
end


