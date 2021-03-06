

#  非参数检验

#秩的概念
#非参数检验通常是将数据转化成秩来分析的
x = c (21240,4632,22836,5484,5052,5064,6972,7596,14760,15012,18720,9480,4728,67200,52788)
rank (x)  #求x的秩, 反映大小的位置
xx = c(2,5,3,8,6,3)
rank(xx)  #大小相同 秩为位置均值


#单样本非参数检验

#单样本K-S检验
x = c (21240,4632,22836,5484,5052,5064,6972,7596,14760,15012,18720,9480,4728,67200,52788)
ks.test(x,"pnorm")  #"pnorm" 检验X 是否正态分布

#单样本符号秩检验
x = c (21240,4632,22836,5484,5052,5064,6972,7596,14760,15012,18720,9480,4728,67200,52788)
stem(x)  #做茎叶图
wilcox.test(x,5080)  #中位数为5080的符号秩检验


#两样本非参数检验

#两样本K-S检验（独立样本）
x1=c (48,47,44,45,46,47,43,47,42,48 )
x2=c (36,45,47,38,39,42,36,42,46,35 )
boxplot (x1,x2,horizontal=T,names=c("x1","x2"))  #坐x1，x2的 水平箱线图
ks.test(x1,x2)  #x1,x2 ks检验 原假设为x1,x2 来自同一个总体分布

#两样本秩和检验
x1=c (48,47,44,45,46,47,43,47,42,48 )
x2=c (36,45,47,38,39,42,36,42,46,35 )
wilcox.test(x1,x2)  #假定两个总体的分布有类似的形状（但不一定对称）


#多个独立样本的秩和检验
kruskal.test(weight~group,data=PlantGrowth) #对植物生长数据进行Kruskal-Wallis检验

scores = c(4,3,4,5,2,3,4,5,4,4,5,5,4,5,4,4,3,4,2,4,5,5,4,4 )
person = c(1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3 )
boxplot(scores~person) #箱线图
kruskal.test(scores~person)
oneway.test(scores~person) #方差分析 （服从正态分布）