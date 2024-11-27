%% ------------------SENTINEL-2-----
npv=readmatrix("E:\1研究内容\采样点\S2.xlsx","Sheet","Sheet2","Range","A2:A161");
vi=readmatrix("E:\1研究内容\采样点\S2.xlsx","Sheet","Sheet2","Range","B2:I161");
f=readmatrix("E:\1研究内容\采样点\S2.xlsx","Sheet","Sheet2","Range","J2:O161");%6
A=cell(1,10);
[resmean] = viores(vi,npv);
A{1,1}=resmean;
for i=2:7
    fother=f(:,i-1);
    [resmean] = viore(vi,fother,npv);
    A{1,i}=resmean;
end
fst=readmatrix("E:\1研究内容\采样点\S2.xlsx","Sheet","Sheet2","Range","T2:V161");%ST
[resmean] = viore(vi,fst,npv);
A{1,8}=resmean;
fva=readmatrix("E:\1研究内容\采样点\S2.xlsx","Sheet","Sheet3","Range","A:B");%VV angle
[resmean] = viore(vi,fst,npv);
A{1,9}=resmean;
fha=readmatrix("E:\1研究内容\采样点\S2.xlsx","Sheet","Sheet3","Range","B:C");%VH angle
[resmean] = viore(vi,fst,npv);
A{1,10}=resmean;
for i=1:10
    R2v(:,i)=A{1,i}(:,1);
    rmsev(:,i)=A{1,i}(:,2); 
end
for j=2:10
    dR2(:,j)=R2v(:,j)-R2v(:,1);
    drmse(:,j)=rmsev(:,j)-rmsev(:,1);
end
%%   -------------- LANDSAT
npv=readmatrix("E:\1研究内容\采样点\L8.xlsx","Sheet","Sheet2","Range","A2:A161");
vi=readmatrix("E:\1研究内容\采样点\L8.xlsx","Sheet","Sheet2","Range","B2:H161");
f=readmatrix("E:\1研究内容\采样点\L8.xlsx","Sheet","Sheet2","Range","I2:N161");%6
A=cell(1,10);
[resmean] = violres(vi,npv);
A{1,1}=resmean;
for i=2:7
    fother=f(:,i-1);
    [resmean] = violre(vi,fother,npv);
    A{1,i}=resmean;
end
fst=readmatrix("E:\1研究内容\采样点\L8.xlsx","Sheet","Sheet2","Range","O2:Q161");%ST
[resmean] = violre(vi,fst,npv);
A{1,8}=resmean;
fva=readmatrix("E:\1研究内容\采样点\L8.xlsx","Sheet","Sheet3","Range","A:B");%VV angle
[resmean] = violre(vi,fst,npv);
A{1,9}=resmean;
fha=readmatrix("E:\1研究内容\采样点\L8.xlsx","Sheet","Sheet3","Range","B:C");%VH angle
[resmean] = violre(vi,fst,npv);
A{1,10}=resmean;
for i=1:10
    R2v(:,i)=A{1,i}(:,1);
    rmsev(:,i)=A{1,i}(:,2); 
end
for j=2:10
    dR2(:,j)=R2v(:,j)-R2v(:,1);
    drmse(:,j)=rmsev(:,j)-rmsev(:,1);
end