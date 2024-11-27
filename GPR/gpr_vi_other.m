%单一指数+土壤属性
vi_all=readmatrix("E:\研究内容\建模\vi_11.xlsx");
fsoil=readmatrix("E:\研究内容\采样点\2019NT整理.xlsx","Sheet","土壤属性","Range","E2:H161");
npv=readmatrix("E:\研究内容\建模\NPV.xlsx","Range","C2:C161");
[row,col]=size(vi_all);
visoil=cell(col,1);
for i=1:col
    visoil{i}=cat(2,vi_all(:,i),fsoil);
end
aresult1=[];aresult2=[];
aresult3=[];aresult4=[];
aresult5=[];aresult6=[];
aresult7=[];aresult8=[];
aresult9=[];aresult10=[];aresult11=[];
ytfit1=[];ytest1=[];
ytfit2=[];ytest2=[];
ytfit3=[];ytest3=[];
ytfit4=[];ytest4=[];
ytfit5=[];ytest5=[];
ytfit6=[];ytest6=[];
ytfit7=[];ytest7=[];
ytfit8=[];ytest8=[];
ytfit9=[];ytest9=[];
ytfit10=[];ytest10=[];
ytfit11=[];ytest11=[];
A = cell(col,10);
for i=1:10
    [result1,b1,yft1,yt1] = GPR_reg(5,visoil{1},npv);
    [result2,b2,yft2,yt2] = GPR_reg(5,visoil{2},npv);
    [result3,b3,yft3,yt3] = GPR_reg(5,visoil{3},npv);
    [result4,b4,yft4,yt4] = GPR_reg(5,visoil{4},npv);
    [result5,b5,yft5,yt5] = GPR_reg(5,visoil{5},npv);
    [result6,b6,yft6,yt6] = GPR_reg(5,visoil{6},npv);
    [result7,b7,yft7,yt7] = GPR_reg(5,visoil{7},npv);
    [result8,b8,yft8,yt8] = GPR_reg(5,visoil{8},npv);
    [result9,b9,yft9,yt9] = GPR_reg(5,visoil{9},npv);
    [result10,b10,yft10,yt10] = GPR_reg(5,visoil{10},npv);
    [result11,b11,yft11,yt11] = GPR_reg(5,visoil{11},npv);
    aresult1=cat(1,aresult1,result1);
    aresult2=cat(1,aresult2,result2);
    aresult3=cat(1,aresult3,result3);
    aresult4=cat(1,aresult4,result4);
    aresult5=cat(1,aresult5,result5);
    aresult6=cat(1,aresult6,result6);
    aresult7=cat(1,aresult7,result7);
    aresult8=cat(1,aresult8,result8);
    aresult9=cat(1,aresult9,result9);
    aresult10=cat(1,aresult10,result10);
    aresult11=cat(1,aresult11,result11);
    ytfit1=cat(2,ytfit1,yft1);ytest1=cat(2,ytest1,yt1);
    ytfit2=cat(2,ytfit2,yft2);ytest2=cat(2,ytest2,yt2);
    ytfit3=cat(2,ytfit3,yft3);ytest3=cat(2,ytest3,yt3);
    ytfit4=cat(2,ytfit4,yft4);ytest4=cat(2,ytest4,yt4);
    ytfit5=cat(2,ytfit5,yft5);ytest5=cat(2,ytest5,yt5);
    ytfit6=cat(2,ytfit6,yft6);ytest6=cat(2,ytest6,yt6);
    ytfit7=cat(2,ytfit7,yft7);ytest7=cat(2,ytest7,yt7);
    ytfit8=cat(2,ytfit8,yft8);ytest8=cat(2,ytest8,yt8);
    ytfit9=cat(2,ytfit9,yft9);ytest9=cat(2,ytest9,yt9);
    ytfit10=cat(2,ytfit10,yft10);ytest10=cat(2,ytest10,yt10);
    ytfit11=cat(2,ytfit11,yft11);ytest11=cat(2,ytest11,yt11);
    A{1,i}=b1;A{2,i}=b2;A{3,i}=b3;A{4,i}=b4;A{5,i}=b5;A{6,i}=b6;A{7,i}=b7;A{8,i}=b8;A{9,i}=b9;A{10,i}=b10;A{11,i}=b11;
end
res=cat(2,aresult1,aresult2,aresult3,aresult4,aresult5,aresult6,aresult7,aresult8,aresult9,aresult10,aresult11);
resm=mean(res);
resmean=zeros(col,10);
for i=1:col
    resmean(i,:)=resm(:,(((i-1)*10+1):i*10));
end
%%
[m1,idx1]=max(result11(:,5));resmax(1,:)=result11(idx1,:);
[m2,idx2]=max(result21(:,5));resmax(2,:)=result21(idx2,:);
[m3,idx3]=max(result31(:,5));resmax(3,:)=result31(idx3,:);
[m4,idx4]=max(result41(:,5));resmax(4,:)=result41(idx4,:);
[m5,idx5]=max(result51(:,5));resmax(5,:)=result51(idx5,:);
[m6,idx6]=max(result61(:,5));resmax(6,:)=result61(idx6,:);
[m7,idx7]=max(result71(:,5));resmax(7,:)=result51(idx7,:);
[m8,idx8]=max(result81(:,5));resmax(8,:)=result61(idx8,:);

%%
%单一指数＋VV+VH
vi_all=readmatrix("E:\研究内容\建模\vi_11.xlsx");
[row,col]=size(vi_all);
fsar=readmatrix("E:\研究内容\采样点\2019NT整理.xlsx","Sheet","S1-降轨","Range","C2:D161");
npv=readmatrix("E:\研究内容\建模\NPV.xlsx","Range","C2:C161");
visarvi=cell(col,1);
for i=1:col
    visarvi{i}=cat(2,vi_all(:,i),fsar);
end
aresult1=[];aresult2=[];
aresult3=[];aresult4=[];
aresult5=[];aresult6=[];
aresult7=[];aresult8=[];
aresult9=[];aresult10=[];aresult11=[];
ytfit1=[];ytest1=[];
ytfit2=[];ytest2=[];
ytfit3=[];ytest3=[];
ytfit4=[];ytest4=[];
ytfit5=[];ytest5=[];
ytfit6=[];ytest6=[];
ytfit7=[];ytest7=[];
ytfit8=[];ytest8=[];
ytfit9=[];ytest9=[];
ytfit10=[];ytest10=[];
ytfit11=[];ytest11=[];
A = cell(col,10);
for i=1:10
    [result1,b1,yft1,yt1] = GPR_reg(5,visarvi{1},npv);
    [result2,b2,yft2,yt2] = GPR_reg(5,visarvi{2},npv);
    [result3,b3,yft3,yt3] = GPR_reg(5,visarvi{3},npv);
    [result4,b4,yft4,yt4] = GPR_reg(5,visarvi{4},npv);
    [result5,b5,yft5,yt5] = GPR_reg(5,visarvi{5},npv);
    [result6,b6,yft6,yt6] = GPR_reg(5,visarvi{6},npv);
    [result7,b7,yft7,yt7] = GPR_reg(5,visarvi{7},npv);
    [result8,b8,yft8,yt8] = GPR_reg(5,visarvi{8},npv);
    [result9,b9,yft9,yt9] = GPR_reg(5,visarvi{9},npv);
    [result10,b10,yft10,yt10] = GPR_reg(5,visarvi{10},npv);
    [result11,b11,yft11,yt11] = GPR_reg(5,visarvi{11},npv);
    aresult1=cat(1,aresult1,result1);
    aresult2=cat(1,aresult2,result2);
    aresult3=cat(1,aresult3,result3);
    aresult4=cat(1,aresult4,result4);
    aresult5=cat(1,aresult5,result5);
    aresult6=cat(1,aresult6,result6);
    aresult7=cat(1,aresult7,result7);
    aresult8=cat(1,aresult8,result8);
    aresult9=cat(1,aresult9,result9);
    aresult10=cat(1,aresult10,result10);
    aresult11=cat(1,aresult11,result11);
    ytfit1=cat(2,ytfit1,yft1);ytest1=cat(2,ytest1,yt1);
    ytfit2=cat(2,ytfit2,yft2);ytest2=cat(2,ytest2,yt2);
    ytfit3=cat(2,ytfit3,yft3);ytest3=cat(2,ytest3,yt3);
    ytfit4=cat(2,ytfit4,yft4);ytest4=cat(2,ytest4,yt4);
    ytfit5=cat(2,ytfit5,yft5);ytest5=cat(2,ytest5,yt5);
    ytfit6=cat(2,ytfit6,yft6);ytest6=cat(2,ytest6,yt6);
    ytfit7=cat(2,ytfit7,yft7);ytest7=cat(2,ytest7,yt7);
    ytfit8=cat(2,ytfit8,yft8);ytest8=cat(2,ytest8,yt8);
    ytfit9=cat(2,ytfit9,yft9);ytest9=cat(2,ytest9,yt9);
    ytfit10=cat(2,ytfit10,yft10);ytest10=cat(2,ytest10,yt10);
    ytfit11=cat(2,ytfit11,yft11);ytest11=cat(2,ytest11,yt11);
    A{1,i}=b1;A{2,i}=b2;A{3,i}=b3;A{4,i}=b4;A{5,i}=b5;A{6,i}=b6;A{7,i}=b7;A{8,i}=b8;A{9,i}=b9;A{10,i}=b10;A{11,i}=b11;
end
res=cat(2,aresult1,aresult2,aresult3,aresult4,aresult5,aresult6,aresult7,aresult8,aresult9,aresult10,aresult11);
resm=mean(res);
resmean=zeros(col,10);
for i=1:col
    resmean(i,:)=resm(:,(((i-1)*10+1):i*10));
end

%%
%单一指数＋SARvi
vi_all=readmatrix("E:\研究内容\建模\vi_11.xlsx");
[row,col]=size(vi_all);
npv=readmatrix("E:\研究内容\建模\NPV.xlsx","Range","C2:C161");
SARvi=readmatrix("E:\研究内容\采样点\2019NT整理.xlsx","Sheet","S1-降轨","Range","I2:P161");
visarvi=cell(col,1);
for i=1:col
    visarvi{i}=cat(2,vi_all(:,i),SARvi);
end
aresult1=[];aresult2=[];
aresult3=[];aresult4=[];
aresult5=[];aresult6=[];
aresult7=[];aresult8=[];
aresult9=[];aresult10=[];aresult11=[];
ytfit1=[];ytest1=[];
ytfit2=[];ytest2=[];
ytfit3=[];ytest3=[];
ytfit4=[];ytest4=[];
ytfit5=[];ytest5=[];
ytfit6=[];ytest6=[];
ytfit7=[];ytest7=[];
ytfit8=[];ytest8=[];
ytfit9=[];ytest9=[];
ytfit10=[];ytest10=[];
ytfit11=[];ytest11=[];
A = cell(col,10);
for i=1:10
    [result1,b1,yft1,yt1] = GPR_reg(5,visarvi{1},npv);
    [result2,b2,yft2,yt2] = GPR_reg(5,visarvi{2},npv);
    [result3,b3,yft3,yt3] = GPR_reg(5,visarvi{3},npv);
    [result4,b4,yft4,yt4] = GPR_reg(5,visarvi{4},npv);
    [result5,b5,yft5,yt5] = GPR_reg(5,visarvi{5},npv);
    [result6,b6,yft6,yt6] = GPR_reg(5,visarvi{6},npv);
    [result7,b7,yft7,yt7] = GPR_reg(5,visarvi{7},npv);
    [result8,b8,yft8,yt8] = GPR_reg(5,visarvi{8},npv);
    [result9,b9,yft9,yt9] = GPR_reg(5,visarvi{9},npv);
    [result10,b10,yft10,yt10] = GPR_reg(5,visarvi{10},npv);
    [result11,b11,yft11,yt11] = GPR_reg(5,visarvi{11},npv);
    aresult1=cat(1,aresult1,result1);
    aresult2=cat(1,aresult2,result2);
    aresult3=cat(1,aresult3,result3);
    aresult4=cat(1,aresult4,result4);
    aresult5=cat(1,aresult5,result5);
    aresult6=cat(1,aresult6,result6);
    aresult7=cat(1,aresult7,result7);
    aresult8=cat(1,aresult8,result8);
    aresult9=cat(1,aresult9,result9);
    aresult10=cat(1,aresult10,result10);
    aresult11=cat(1,aresult11,result11);
    ytfit1=cat(2,ytfit1,yft1);ytest1=cat(2,ytest1,yt1);
    ytfit2=cat(2,ytfit2,yft2);ytest2=cat(2,ytest2,yt2);
    ytfit3=cat(2,ytfit3,yft3);ytest3=cat(2,ytest3,yt3);
    ytfit4=cat(2,ytfit4,yft4);ytest4=cat(2,ytest4,yt4);
    ytfit5=cat(2,ytfit5,yft5);ytest5=cat(2,ytest5,yt5);
    ytfit6=cat(2,ytfit6,yft6);ytest6=cat(2,ytest6,yt6);
    ytfit7=cat(2,ytfit7,yft7);ytest7=cat(2,ytest7,yt7);
    ytfit8=cat(2,ytfit8,yft8);ytest8=cat(2,ytest8,yt8);
    ytfit9=cat(2,ytfit9,yft9);ytest9=cat(2,ytest9,yt9);
    ytfit10=cat(2,ytfit10,yft10);ytest10=cat(2,ytest10,yt10);
    ytfit11=cat(2,ytfit11,yft11);ytest11=cat(2,ytest11,yt11);
    A{1,i}=b1;A{2,i}=b2;A{3,i}=b3;A{4,i}=b4;A{5,i}=b5;A{6,i}=b6;A{7,i}=b7;A{8,i}=b8;A{9,i}=b9;A{10,i}=b10;A{11,i}=b11;
end
res=cat(2,aresult1,aresult2,aresult3,aresult4,aresult5,aresult6,aresult7,aresult8,aresult9,aresult10,aresult11);
resm=mean(res);
resmean=zeros(col,10);
for i=1:col
    resmean(i,:)=resm(:,(((i-1)*10+1):i*10));
end

%%
%单一指数＋SAR全部
vi_all=readmatrix("E:\研究内容\建模\vi_11.xlsx");
[row,col]=size(vi_all);
npv=readmatrix("E:\研究内容\建模\NPV.xlsx","Range","C2:C161");
SAR=readmatrix("E:\研究内容\采样点\2019NT整理.xlsx","Sheet","S1-降轨","Range","C2:P161");  
SAR(:,[3,4,5,6])=[];
visar=cell(col,1);
for i=1:col
    visar{i}=cat(2,vi_all(:,i),SAR);
end
aresult1=[];aresult2=[];
aresult3=[];aresult4=[];
aresult5=[];aresult6=[];
aresult7=[];aresult8=[];
aresult9=[];aresult10=[];aresult11=[];
ytfit1=[];ytest1=[];
ytfit2=[];ytest2=[];
ytfit3=[];ytest3=[];
ytfit4=[];ytest4=[];
ytfit5=[];ytest5=[];
ytfit6=[];ytest6=[];
ytfit7=[];ytest7=[];
ytfit8=[];ytest8=[];
ytfit9=[];ytest9=[];
ytfit10=[];ytest10=[];
ytfit11=[];ytest11=[];
A = cell(col,10);
for i=1:10
    [result1,b1,yft1,yt1] = GPR_reg(5,visar{1},npv);
    [result2,b2,yft2,yt2] = GPR_reg(5,visar{2},npv);
    [result3,b3,yft3,yt3] = GPR_reg(5,visar{3},npv);
    [result4,b4,yft4,yt4] = GPR_reg(5,visar{4},npv);
    [result5,b5,yft5,yt5] = GPR_reg(5,visar{5},npv);
    [result6,b6,yft6,yt6] = GPR_reg(5,visar{6},npv);
    [result7,b7,yft7,yt7] = GPR_reg(5,visar{7},npv);
    [result8,b8,yft8,yt8] = GPR_reg(5,visar{8},npv);
    [result9,b9,yft9,yt9] = GPR_reg(5,visar{9},npv);
    [result10,b10,yft10,yt10] = GPR_reg(5,visar{10},npv);
    [result11,b11,yft11,yt11] = GPR_reg(5,visar{11},npv);
    aresult1=cat(1,aresult1,result1);
    aresult2=cat(1,aresult2,result2);
    aresult3=cat(1,aresult3,result3);
    aresult4=cat(1,aresult4,result4);
    aresult5=cat(1,aresult5,result5);
    aresult6=cat(1,aresult6,result6);
    aresult7=cat(1,aresult7,result7);
    aresult8=cat(1,aresult8,result8);
    aresult9=cat(1,aresult9,result9);
    aresult10=cat(1,aresult10,result10);
    aresult11=cat(1,aresult11,result11);
    ytfit1=cat(2,ytfit1,yft1);ytest1=cat(2,ytest1,yt1);
    ytfit2=cat(2,ytfit2,yft2);ytest2=cat(2,ytest2,yt2);
    ytfit3=cat(2,ytfit3,yft3);ytest3=cat(2,ytest3,yt3);
    ytfit4=cat(2,ytfit4,yft4);ytest4=cat(2,ytest4,yt4);
    ytfit5=cat(2,ytfit5,yft5);ytest5=cat(2,ytest5,yt5);
    ytfit6=cat(2,ytfit6,yft6);ytest6=cat(2,ytest6,yt6);
    ytfit7=cat(2,ytfit7,yft7);ytest7=cat(2,ytest7,yt7);
    ytfit8=cat(2,ytfit8,yft8);ytest8=cat(2,ytest8,yt8);
    ytfit9=cat(2,ytfit9,yft9);ytest9=cat(2,ytest9,yt9);
    ytfit10=cat(2,ytfit10,yft10);ytest10=cat(2,ytest10,yt10);
    ytfit11=cat(2,ytfit11,yft11);ytest11=cat(2,ytest11,yt11);
    A{1,i}=b1;A{2,i}=b2;A{3,i}=b3;A{4,i}=b4;A{5,i}=b5;A{6,i}=b6;A{7,i}=b7;A{8,i}=b8;A{9,i}=b9;A{10,i}=b10;A{11,i}=b11;
end
res=cat(2,aresult1,aresult2,aresult3,aresult4,aresult5,aresult6,aresult7,aresult8,aresult9,aresult10,aresult11);
resm=mean(res);
resmean=zeros(col,10);
for i=1:col
    resmean(i,:)=resm(:,(((i-1)*10+1):i*10));
end

%%
%土壤类型独热编码
sccode=zeros(160,8);
for i=1:160
    x=sc(i);
    if x==1
        sccode(i,1)=1;
    else if x==3
        sccode(i,2)=1;
    else if x==4  
        sccode(i,3)=1;
    else if x==7 
        sccode(i,4)=1;
    else if x==8  
        sccode(i,5)=1;
    else if x==9  
        sccode(i,6)=1;
    else if x==11  
        sccode(i,7)=1;
    else if x==12  
        sccode(i,8)=1;
    end
    end
    end
    end
    end
    end
    end
    end
end   
%%
%单一指数＋土壤类型
vi_all=readmatrix("E:\研究内容\建模\vi_11.xlsx");
[row,col]=size(vi_all);
npv=readmatrix("E:\研究内容\建模\NPV.xlsx","Range","C2:C161");
sccode=readmatrix("E:\研究内容\采样点\2019NT整理.xlsx","Sheet","土壤类型","Range","C3:J162");
visc=cell(col,1);
for i=1:col
    visc{i}=cat(2,vi_all(:,i),sccode);
end
aresult1=[];aresult2=[];
aresult3=[];aresult4=[];
aresult5=[];aresult6=[];
aresult7=[];aresult8=[];
aresult9=[];aresult10=[];aresult11=[];
ytfit1=[];ytest1=[];
ytfit2=[];ytest2=[];
ytfit3=[];ytest3=[];
ytfit4=[];ytest4=[];
ytfit5=[];ytest5=[];
ytfit6=[];ytest6=[];
ytfit7=[];ytest7=[];
ytfit8=[];ytest8=[];
ytfit9=[];ytest9=[];
ytfit10=[];ytest10=[];
ytfit11=[];ytest11=[];
A = cell(col,10);
for i=1:10
    [result1,b1,yft1,yt1] = GPR_reg(5,visc{1},npv);
    [result2,b2,yft2,yt2] = GPR_reg(5,visc{2},npv);
    [result3,b3,yft3,yt3] = GPR_reg(5,visc{3},npv);
    [result4,b4,yft4,yt4] = GPR_reg(5,visc{4},npv);
    [result5,b5,yft5,yt5] = GPR_reg(5,visc{5},npv);
    [result6,b6,yft6,yt6] = GPR_reg(5,visc{6},npv);
    [result7,b7,yft7,yt7] = GPR_reg(5,visc{7},npv);
    [result8,b8,yft8,yt8] = GPR_reg(5,visc{8},npv);
    [result9,b9,yft9,yt9] = GPR_reg(5,visc{9},npv);
    [result10,b10,yft10,yt10] = GPR_reg(5,visc{10},npv);
    [result11,b11,yft11,yt11] = GPR_reg(5,visc{11},npv);
    aresult1=cat(1,aresult1,result1);
    aresult2=cat(1,aresult2,result2);
    aresult3=cat(1,aresult3,result3);
    aresult4=cat(1,aresult4,result4);
    aresult5=cat(1,aresult5,result5);
    aresult6=cat(1,aresult6,result6);
    aresult7=cat(1,aresult7,result7);
    aresult8=cat(1,aresult8,result8);
    aresult9=cat(1,aresult9,result9);
    aresult10=cat(1,aresult10,result10);
    aresult11=cat(1,aresult11,result11);
    ytfit1=cat(2,ytfit1,yft1);ytest1=cat(2,ytest1,yt1);
    ytfit2=cat(2,ytfit2,yft2);ytest2=cat(2,ytest2,yt2);
    ytfit3=cat(2,ytfit3,yft3);ytest3=cat(2,ytest3,yt3);
    ytfit4=cat(2,ytfit4,yft4);ytest4=cat(2,ytest4,yt4);
    ytfit5=cat(2,ytfit5,yft5);ytest5=cat(2,ytest5,yt5);
    ytfit6=cat(2,ytfit6,yft6);ytest6=cat(2,ytest6,yt6);
    ytfit7=cat(2,ytfit7,yft7);ytest7=cat(2,ytest7,yt7);
    ytfit8=cat(2,ytfit8,yft8);ytest8=cat(2,ytest8,yt8);
    ytfit9=cat(2,ytfit9,yft9);ytest9=cat(2,ytest9,yt9);
    ytfit10=cat(2,ytfit10,yft10);ytest10=cat(2,ytest10,yt10);
    ytfit11=cat(2,ytfit11,yft11);ytest11=cat(2,ytest11,yt11);
    A{1,i}=b1;A{2,i}=b2;A{3,i}=b3;A{4,i}=b4;A{5,i}=b5;A{6,i}=b6;A{7,i}=b7;A{8,i}=b8;A{9,i}=b9;A{10,i}=b10;A{11,i}=b10;
end
res=cat(2,aresult1,aresult2,aresult3,aresult4,aresult5,aresult6,aresult7,aresult8,aresult9,aresult10,aresult11);
resm=mean(res);
resmean=zeros(col,10);
for i=1:col
    resmean(i,:)=resm(:,(((i-1)*10+1):i*10));
end
%%
%单一指数＋土壤信息（属性+类型）
vi_all=readmatrix("E:\研究内容\建模\vi_11.xlsx");
[row,col]=size(vi_all);
npv=readmatrix("E:\研究内容\建模\NPV.xlsx","Range","C2:C161");
fsoil=readmatrix("E:\研究内容\采样点\2019NT整理.xlsx","Sheet","土壤属性","Range","E2:H161");
sccode=readmatrix("E:\研究内容\采样点\2019NT整理.xlsx","Sheet","土壤类型","Range","C3:J162");
visoil=cell(col,1);
for i=1:col
    visoil{i}=cat(2,vi_all(:,i),fsoil,sccode);
end
aresult1=[];aresult2=[];
aresult3=[];aresult4=[];
aresult5=[];aresult6=[];
aresult7=[];aresult8=[];
aresult9=[];aresult10=[];aresult11=[];
ytfit1=[];ytest1=[];
ytfit2=[];ytest2=[];
ytfit3=[];ytest3=[];
ytfit4=[];ytest4=[];
ytfit5=[];ytest5=[];
ytfit6=[];ytest6=[];
ytfit7=[];ytest7=[];
ytfit8=[];ytest8=[];
ytfit9=[];ytest9=[];
ytfit10=[];ytest10=[];
ytfit11=[];ytest11=[];
A = cell(col,10);
for i=1:10
    [result1,b1,yft1,yt1] = GPR_reg(5,visoil{1},npv);
    [result2,b2,yft2,yt2] = GPR_reg(5,visoil{2},npv);
    [result3,b3,yft3,yt3] = GPR_reg(5,visoil{3},npv);
    [result4,b4,yft4,yt4] = GPR_reg(5,visoil{4},npv);
    [result5,b5,yft5,yt5] = GPR_reg(5,visoil{5},npv);
    [result6,b6,yft6,yt6] = GPR_reg(5,visoil{6},npv);
    [result7,b7,yft7,yt7] = GPR_reg(5,visoil{7},npv);
    [result8,b8,yft8,yt8] = GPR_reg(5,visoil{8},npv);
    [result9,b9,yft9,yt9] = GPR_reg(5,visoil{9},npv);
    [result10,b10,yft10,yt10] = GPR_reg(5,visoil{10},npv);
    [result11,b11,yft11,yt11] = GPR_reg(5,visoil{11},npv);
    aresult1=cat(1,aresult1,result1);
    aresult2=cat(1,aresult2,result2);
    aresult3=cat(1,aresult3,result3);
    aresult4=cat(1,aresult4,result4);
    aresult5=cat(1,aresult5,result5);
    aresult6=cat(1,aresult6,result6);
    aresult7=cat(1,aresult7,result7);
    aresult8=cat(1,aresult8,result8);
    aresult9=cat(1,aresult9,result9);
    aresult10=cat(1,aresult10,result10);
    aresult11=cat(1,aresult11,result11);
    ytfit1=cat(2,ytfit1,yft1);ytest1=cat(2,ytest1,yt1);
    ytfit2=cat(2,ytfit2,yft2);ytest2=cat(2,ytest2,yt2);
    ytfit3=cat(2,ytfit3,yft3);ytest3=cat(2,ytest3,yt3);
    ytfit4=cat(2,ytfit4,yft4);ytest4=cat(2,ytest4,yt4);
    ytfit5=cat(2,ytfit5,yft5);ytest5=cat(2,ytest5,yt5);
    ytfit6=cat(2,ytfit6,yft6);ytest6=cat(2,ytest6,yt6);
    ytfit7=cat(2,ytfit7,yft7);ytest7=cat(2,ytest7,yt7);
    ytfit8=cat(2,ytfit8,yft8);ytest8=cat(2,ytest8,yt8);
    ytfit9=cat(2,ytfit9,yft9);ytest9=cat(2,ytest9,yt9);
    ytfit10=cat(2,ytfit10,yft10);ytest10=cat(2,ytest10,yt10);
    ytfit11=cat(2,ytfit11,yft11);ytest11=cat(2,ytest11,yt11);
    A{1,i}=b1;A{2,i}=b2;A{3,i}=b3;A{4,i}=b4;A{5,i}=b5;A{6,i}=b6;A{7,i}=b7;A{8,i}=b8;A{9,i}=b9;A{10,i}=b10;A{11,i}=b10;
end
res=cat(2,aresult1,aresult2,aresult3,aresult4,aresult5,aresult6,aresult7,aresult8,aresult9,aresult10,aresult11);
resm=mean(res);
resmean=zeros(col,10);
for i=1:col
    resmean(i,:)=resm(:,(((i-1)*10+1):i*10));
end