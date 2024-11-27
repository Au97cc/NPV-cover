function [r_mse,R2,rRMSE,mae,bias,test_xprint,test_yprint,rmset,R2t,rRMSEt,maet,biast,train_xprint,train_yprint,b]=rf1_reg(k,vi,npv)
test_xprint=[];
test_yprint=[];
train_xprint=[];
train_yprint=[];
[vi_r, vi_c] = size(vi);
A = cell(vi_c,k);
b = cell(vi_c,1);
indices = crossvalind('Kfold', vi_r, k);
%k折循环
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
         for j=1:vi_c
             vii=vi(:,j);
             test_x = vii(test_x_id);
             train_x = vii(train_x_id);
         % 训练
             leaf = 10;
             ntrees = 50;
             A{j,i} = TreeBagger(ntrees, train_x,train_y, 'Method','regression', 'oobvarimp','on', 'surrogate', 'on', 'minleaf',leaf,'FBoot',fboot);
         %训练集精度
             ytfit = predict(A{j,i}, train_x);
             rmset(i,j)=rmse(ytfit,train_y);
             R2t(i,j)=1-sum((train_y-ytfit).^2)/sum((train_y-mean(train_y)).^2);
             rRMSEt(i,j)=rmset(i,j)/mean(train_y);
             maet(i,j)=mean(abs(ytfit-train_y));
             biast(i,j)=mean(train_y-ytfit);
             train_xprint=cat(2,train_xprint,train_x);
         %验证
            yfit = predict(A{j,i}, test_x);
            %验证集精度
            r_mse(i,j)=rmse(yfit,test_y);
            R2(i,j)=1-sum((test_y-yfit).^2)/sum((test_y-mean(test_y)).^2);
            rRMSE(i,j)=r_mse(i,j)/mean(test_y);
            mae(i,j)=mean(abs(yfit-test_y));
            bias(i,j)=mean(test_y-yfit);
            test_xprint=cat(2,test_xprint,test_x);
         end
         train_yprint=cat(2,train_yprint,train_y);
         test_yprint=cat(2,test_yprint,test_y);
     end
     [R2max,idx]=max(R2);
     for m=1:vi_c 
         b{m,1}=A{m,idx};
     end
end

