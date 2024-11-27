function [resmean] = violres(vi,npv)
%VIO 此处显示有关此函数的摘要
%   此处显示详细说明
col=size(vi,2);
viother=cell(col,1);
aresult1=[];aresult2=[];
aresult3=[];aresult4=[];
aresult5=[];aresult6=[];
aresult7=[];
for i=1:col
        viother{i}=vi(:,i);
end
for j=1:10
    result1 = RF_reg(5,viother{1},npv);
    result2 = RF_reg(5,viother{2},npv);
    result3 = RF_reg(5,viother{3},npv);
    result4 = RF_reg(5,viother{4},npv);
    result5 = RF_reg(5,viother{5},npv);
    result6 = RF_reg(5,viother{6},npv);
    result7 = RF_reg(5,viother{7},npv);
    aresult1=cat(1,aresult1,result1);
    aresult2=cat(1,aresult2,result2);
    aresult3=cat(1,aresult3,result3);
    aresult4=cat(1,aresult4,result4);
    aresult5=cat(1,aresult5,result5);
    aresult6=cat(1,aresult6,result6);
    aresult7=cat(1,aresult7,result7);
    res=cat(2,aresult1,aresult2,aresult3,aresult4,aresult5,aresult6,aresult7);
    resm=mean(res);
    resmean=zeros(col,2);
end
    for k=1:col
    resmean(k,:)=resm(:,(((k-1)*2+1):k*2));
    end
end

