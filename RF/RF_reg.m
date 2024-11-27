function [result] = RF_reg(k,vi,npv)
%RF_REG 五折交叉验证 
[row, col] = size(vi);
A = cell(k,1);
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
         % 训练随机森林，TreeBagger使用内容，以及设置随机森林参数
         leaf = 10;
         ntrees = 50;
         A{i} = TreeBagger(ntrees, train_x,train_y, 'Method','regression', 'oobvarimp','on', 'surrogate', 'on', 'minleaf',leaf,'FBoot',1);
         %测试集
         yfit = predict(A{i}, test_x);
         result(i,1)=1-sum((test_y-yfit).^2)/sum((test_y-mean(test_y)).^2);
         result(i,2)=rmse(yfit,test_y);
    end
end


