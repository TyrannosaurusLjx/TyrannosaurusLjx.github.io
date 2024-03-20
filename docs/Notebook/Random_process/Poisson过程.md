# Poisson 过程

用$N(t)$表示时间(0,t]中事件发生的次数,$\lambda$是单位时间发生的事件数,$S_i$表示第i次事件发生的时间

## Poisson分布

$$\forall t>0,P(N(t)=k)=\frac{(\lambda t)^k}{k!}e^{-\lambda t},k\in N$$

---

### 特性

#### 1.$E(N(t))=\lambda t$

    证明很简单  

#### 2.$Var(N(t))=\lambda t$

    证明也很简单

#### 3.自相关函数

$$r_N(s,t)=E(N(s)N(t))=\lambda^2st+\lambda s$$
<这里为什么关于 s,t 不对称?>

#### 4.自协方差函数

$$Cov(s,t)=E(N(s)N(t))-E(N(s))E(N(t))=\lambda s$$
<这里为什么关于 s,t 不对称?>


    事实上这也可以看做一种对称,min{s,t} = min{t,s} = s


## Poisson流

$N(t)\sim \mathcal{P}(\lambda t)$,则$N(t)$是一个Poisson流

考察时间发生的时间的分布,也就是$S_i$的分布

$\forall t>0,S_>t\iff N(t)=0$,那么 $P(S_1>t)=P(N(t)=0)=e^{-\lambda t}$,从而$S_1\sim \mathcal{E}(\lambda)$

    第一个到达的时刻服从参数为$\lambda$的指数分布

对于$n\geq 1$,$S_n>t\iff N(t)\leq n-1$,那么$P(S_n>t)=P(N(t)\leq n-1)=\sum\limits_{k=0}^{n-1}\frac{(\lambda t)^k}{k!}e^{-\lambda t},$

从而有$P(S_n\leq t)=1-\sum\limits_{k=0}^{n-1}\frac{(\lambda t)^k}{k!}e^{-\lambda t}$

$P_{S_n}=\frac{\lambda^nt^{n-1}}{(n-1)!}e^{-\lambda t},t>0$ (gamma 分布)

---

### 时间间隔

若定义$X_i=S_i-S_{i-1}$,则$X_i$是独立同分布的指数分布,参数为$\lambda$

---

# Poisson 可加性(按概念可分)

$N_1(t)\sim \mathcal{P}(\lambda t),N_2(t)\sim \mathcal{P}(\mu t)$,且$N_1(t),N_2(t)$相互独立,则$N_1(t)+N_2(t)\sim \mathcal{P}((\lambda+\mu)t)$

---

# 到达时刻的条件分布

解决的问题是,已知$N(t)=n$,求$S_1,S_2,\cdots,S_n$的联合分布

1.$N(t)=0$的情况是平凡的,$N(t)=1$时,$S_1$可以在$(0,t]$中任意取值,所以$S_1$的分布是均匀分布

2.$N(t)=2$ 的情况下,$S_,S_2$ 也相互独立(若不纠结顺序,也就是事件 1,2发生的时间),因此随机取值,但是(事实上我们考虑的$S_1,S_2$有先后顺序,)$S_1$总是优先于$S_2$到达.因此不妨把$S_1,S_2$ 理解为时间段内两个独立同分布的均匀随机变量的最大最小值

3.更一般的,可以认为 n 个 $S_i$的分布也是 n 个独立同分布的随机变量的次序排列,换句话说
 
$$(S_1,S_2,\cdots,S_n|N(t)=n)\overset{d}{=}(U'_1,U'_2,\cdots,U'_n)$$

其中$\{U'_i\}_{i=1}^n$是 n 个均匀分布随机变量$\{U_i\}_{i=1}^n$的次序统计量 

有:
$$P_{S_1,S_2,\cdots,S_n|N(t)}(x_1,x_2,\cdots,x_n|n)=\frac{n!}{t^n},0<x_1<\cdots<x_n$$

    其余情况是取值为 0,如果不是次序统计量那么显然没有$n!$,在 n 个 $x_i$的随机排列中只有一种是符合次序的,
    因此对应的样本空间(非0)被缩小了到原来的1/n!,相应的概念密度也就扩大了n!倍

最后有:

$$E(\sum\limits_{i=1}^nf(S_i)|N(t)=n)=E(\sum_{i=1}^nf(U_i))=n\int_0^tf(x)dx$$

### 次序统计量

设$X_1,X_2,\cdots,X_n$独立同分布,分布函数为F,密度函数为f,且$X_{(1)},X_{(2)},\cdots,X_{(n)}$是$X_1,X_2,\cdots,X_n$的次序统计量,那么有


$$ P(X_{(k)}\leq x)=\sum\limits_{j=k}^nC_n^jF(x)^j[1-F(x)]^{n-j} $$
    
    也就是说大于 x 的随机变量个数至少有 k 个

$$ p_k(x)=C_n^1p(x)C_{n-1}^{k-1}F(x)^{k-1}[1-F(x)]^{n-k}=\frac{n!}{(k-1)!(n-k)!}F(x)^{k-1}p(x)[1-F(x)]^{n-k} $$

    先选一个等于 x 的,然后 k-1 个小雨 x 的,剩下的大于 x

也就是说我们在考虑次序统计量的时候,要通过分析原始随机变量来间接考察

---









