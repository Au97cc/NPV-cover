function [resmean] = viore(vi,fother,npv)
%VIO 此处显示有关此函数的摘要
%   此处显示详细说明
col=size(vi,2);
viother=cell(col,1);
aresult1=[];aresult2=[];
aresult3=[];aresult4=[];
aresult5=[];aresult6=[];
aresult7=[];aresult8=[];
for i=1:col
        viother{i}=cat(2,vi(:,i),fother);
end
for j=1:10
    result1 = XGB_reg(5,viother{1},npv);
    result2 = XGB_reg(5,viother{2},npv);
    result3 = XGB_reg(5,viother{3},npv);
    result4 = XGB_reg(5,viother{4},npv);
    result5 = XGB_reg(5,viother{5},npv);
    result6 = XGB_reg(5,viother{6},npv);
    result7 = XGB_reg(5,viother{7},npv);
    result8 = XGB_reg(5,viother{8},npv);
    aresult1=cat(1,aresult1,result1);
    aresult2=cat(1,aresult2,result2);
    aresult3=cat(1,aresult3,result3);
    aresult4=cat(1,aresult4,result4);
    aresult5=cat(1,aresult5,result5);
    aresult6=cat(1,aresult6,result6);
    aresult7=cat(1,aresult7,result7);
    aresult8=cat(1,aresult8,result8);
    res=cat(2,aresult1,aresult2,aresult3,aresult4,aresult5,aresult6,aresult7,aresult8);
    res=cat(2,result1,result2,result3,result4,result5,result6,result7,result8);
    resm=mean(res);
    resmean=zeros(col,2);
end
    for k=1:col
    resmean(k,:)=resm(:,(((k-1)*2+1):k*2));
    end
end

