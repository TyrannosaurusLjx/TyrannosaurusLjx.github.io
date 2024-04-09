# Poisson 过程

- 用$N(t)$表示时间(0,t]中事件发生的次数,$\lambda$是单位时间发生的事件数,$S_i$表示第i次事件发生的时间

## Poisson分布

- $$\forall t>0,P(N(t)=k)=\frac{(\lambda t)^k}{k!}e^{-\lambda t},k\in N$$

---

### 特性

#### 1.$E(N(t))=\lambda t$

    证明很简单  

#### 2.$Var(N(t))=\lambda t$

    证明也很简单

#### 3.自相关函数

- $$r_N(s,t)=E(N(s)N(t))=\lambda^2st+\lambda s$$
    - <这里为什么关于 s,t 不对称?>

#### 4.自协方差函数

- $$Cov(s,t)=E(N(s)N(t))-E(N(s))E(N(t))=\lambda s$$
    - <这里为什么关于 s,t 不对称?>


    - 事实上这也可以看做一种对称,min{s,t} = min{t,s} = s


## Poisson流

- $N(t)\sim \mathcal{P}(\lambda t)$,则$N(t)$是一个Poisson流

- 考察事件发生的时间的分布,也就是$S_i$的分布

    - $\forall t>0,S_>t\iff N(t)=0$,那么 $P(S_1>t)=P(N(t)=0)=e^{-\lambda t}$,从而$S_1\sim \mathcal{E}(\lambda)$

    第一个到达的时刻服从参数为$\lambda$的指数分布

- 对于$n\geq 1$,$S_n>t\iff N(t)\leq n-1$,那么$P(S_n>t)=P(N(t)\leq n-1)=\sum\limits_{k=0}^{n-1}\frac{(\lambda t)^k}{k!}e^{-\lambda t},$

- 从而有$P(S_n\leq t)=1-\sum\limits_{k=0}^{n-1}\frac{(\lambda t)^k}{k!}e^{-\lambda t}$

    - $P_{S_n}(t)=\frac{\lambda^nt^{n-1}}{(n-1)!}e^{-\lambda t},t>0$ (gamma 分布)

---

### 时间间隔

- 若定义$X_i=S_i-S_{i-1}$,则$X_i$是独立同分布的指数分布,参数为$\lambda$

---

# Poisson 可加性(按概念可分)

- $N_1(t)\sim \mathcal{P}(\lambda t),N_2(t)\sim \mathcal{P}(\mu t)$,且$N_1(t),N_2(t)$相互独立,则$N_1(t)+N_2(t)\sim \mathcal{P}((\lambda+\mu)t)$

---

## 到达时刻的条件分布

- 解决的问题是,已知$N(t)=n$,求$S_1,S_2,\cdots,S_n$的联合分布

    - 1.$N(t)=0$的情况是平凡的,$N(t)=1$时,$S_1$可以在$(0,t]$中任意取值,所以$S_1$的分布是均匀分布

    - 2.$N(t)=2$ 的情况下,$S_,S_2$ 也相互独立(若不纠结顺序,也就是事件 1,2发生的时间),因此随机取值,但是(事实上我们考虑的$S_1,S_2$有先后顺序,)$S_1$总是优先于$S_2$到达.因此不妨把$S_1,S_2$ 理解为时间段内两个独立同分布的均匀随机变量的最大最小值

    - 3.更一般的,可以认为 n 个 $S_i$的分布也是 n 个独立同分布的随机变量的次序排列,换句话说
 
- $$(S_1,S_2,\cdots,S_n|N(t)=n)\overset{d}{=}(U'_1,U'_2,\cdots,U'_n)$$

    - 其中$\{U'_i\}_{i=1}^n$是 n 个均匀分布随机变量$\{U_i\}_{i=1}^n$的次序统计量 

- 有:
- $$P_{S_1,S_2,\cdots,S_n|N(t)}(x_1,x_2,\cdots,x_n|n)=\frac{n!}{t^n},0<x_1<\cdots<x_n$$

  -  其余情况是取值为 0,如果不是次序统计量那么显然没有$n!$,在 n 个 $x_i$的随机排列中只有一种是符合次序的,
    因此对应的样本空间(非0)被缩小了到原来的1/n!,相应的概念密度也就扩大了n!倍

- 最后有:

    - $$E(\sum\limits_{i=1}^nf(S_i)|N(t)=n)=E(\sum_{i=1}^nf(U_i))=n\int_0^tf(x)dx$$

### 次序统计量

- 设$X_1,X_2,\cdots,X_n$独立同分布,分布函数为F,密度函数为f,且$X_{(1)},X_{(2)},\cdots,X_{(n)}$是$X_1,X_2,\cdots,X_n$的次序统计量,那么有


- $$ P(X_{(k)}\leq x)=\sum\limits_{j=k}^nC_n^jF(x)^j[1-F(x)]^{n-j} $$
    
    - 也就是说大于 x 的随机变量个数至少有 k 个

- $$ p_k(x)=C_n^1p(x)C_{n-1}^{k-1}F(x)^{k-1}[1-F(x)]^{n-k}=\frac{n!}{(k-1)!(n-k)!}F(x)^{k-1}p(x)[1-F(x)]^{n-k} $$

   - 先选一个等于 x 的,然后 k-1 个小雨 x 的,剩下的大于 x

- 也就是说我们在考虑次序统计量的时候,要通过分析原始随机变量来间接考察

- $EU_{(k)}=\frac{k}{n+1}t$

---

## 复合 Poisson 过程

- 这一节主要研究$Z(t)=\sum\limits_{i=1}^{N(t)}\xi_i$其中$N(t)\sim P(\lambda t)$
,$\xi_i$独立同分布,且$E\xi_i=\mu,Var\xi_i=\sigma^2$

- $EZ(t)=\mu\lambda t$

    - $EZ(t) = E\sum\limits_{i=1}^{N(t)}\xi_i= \sum\limits_{n=0}^\infty E(\sum\limits_{i=1}^{N(t)}\xi_i|N(t)=n)P(N(t)=n)
    \\\qquad =\sum\limits_{n=0}^\infty E\sum\limits_{i=1}^n\xi_i P(N(t)=n)=
    \sum\limits_{n=0}^\infty n\mu P(N(t)=n)\\\qquad =\mu EN(t)=\mu\lambda t$

- $VarZ(t)=(\sigma^2+\mu^2)\lambda t$
    
    - $E(Z(t)^2) = E(\sum\limits_{i=1}^{N(t)}\xi_i)^2=\sum\limits_{n=0}^\infty E((\sum\limits_{i=1}^{N(t)}\xi_i)^2|N(t)=n)P(N(t)=n)\\
    \qquad=\sum\limits_{n=0}^\infty E(\sum\limits_{i=1}^n\xi_i)^2P(N(t)=n)=\sum\limits_{n=0}^\infty (n\sigma^2+\mu^2n^2)P(N(t)=n)\\
    \qquad=\sigma^2EN(t)+\mu^2E(N(t))^2=(\mu^2+\sigma^2)\lambda t+\mu^2\lambda^2 t^2$

    - $VarZ(t)=E(Z(t)^2)-(EZ(t))^2=(\sigma^2+\mu^2)\lambda t$
    - 这里$E(\sum\limits_{i=1}^n\xi_i)^2=nE\xi_i^2+(n^2-n)E\xi_i\xi_j,\quad i\neq j$

- [独立平稳增量性](https://www.zhihu.com/question/346234228)
    
    - 不交的时间区间$(t_1,t_2],(t_3,t_4]$上,$Z(t_2)-Z(t_1)$和$Z(t_4)-Z(t_3)$是独立的)
    - $Z(t_2)-Z(t_1)= Z(t_2-t_1)$

        - 证明$Z(s)-Z(t),Z(t)$相互独立.用特征函数证明:
        - 设$\phi(t)$是$\xi_i$的特征函数$\\:$
            $Ee^{iu(Z(s)-Z(t))+ivZ(t)}=Ee^{iu\sum\limits_{i=N(t)+1}^{N(s)}\xi_i+iv\sum\limits_{i=1}^{N(t)}\xi_i}=\\
        \qquad=E(\phi(u)^{N(s)-N(t)})(\phi(v))^{N(t)}=E(\phi(u)^{N(s)-N(t)})E(\phi(v))^{N(t)}\\\qquad
        =Ee^{iu(Z(s)-Z(t))}Ee^{ivZ(t)}$

        - 平稳性类似:利用 Poisson 过程的平稳性,可以证明$Z(t)$是平稳的
            
            - $Ee^{iu(Z(s)-Z(t))}=Ee^{iu\sum\limits_{i=N(t)+1}^{N(s)}\xi_i}=E(\phi(u))^{N(s)-N(t)}\\\qquad
            =E\phi(u)^{N(s-t)}=Ee^{iuZ(s-t)}$

## 非齐次 Poisson 过程      

    之前学习的 Poisson 过程只和时间段有关,换句话说系统在各个时刻的繁忙程度是一样的
    但是比如食堂就餐,很明显吃饭时间人更多,这就是非齐次的情况

- 假设$t>0,N(t)$为$(0,t]$中事件发生的次数:

    - 独立条件:$N(0)=0,N(t)\geq 0$
    - 独立增量:$N(t)-N(s)$与$N(s)$相互独立
    - 稀有性:$\exists$非负函数$\lambda(t)$,使得:
        
        - $P(N(t+\Delta t)-N(t)=1)=\lambda(t)\Delta t+o(\Delta t)$
        - $P(N(t+\Delta t)- N(t)\geq 2)=o(\Delta t)$

- 定理3.8:

    - 在上述假设下,$N(t)$服从参数为$m(t)=\int_0^t\lambda(s)ds$的 Poisson 分布,并且$\forall s<t$:
        
        - $P(N(t)-N(s)=k)=\frac{[m(t)-m(s)]^k}{k!}e^{-[m(t)-m(s)]},\forall k\geq 0$
        - 称$N=(N(t),t\geq 0)$是强度为$\lambda(t)$的**非齐次Poisson过程**

    - 证明:定义$p_k(t)=P(N(t)=k)$从$p_0(t)$ 开始,由假设的后两条:
        
        - $\begin{aligned}
                p_0(t+\Delta t) & =p_0(t) P(N(t, t+\Delta t]=0) \\
                & =p_0(t)[1-\lambda(t) \Delta t+o(\Delta t)] \\
                & =p_0(t)-p_0(t) \lambda(t) \Delta t+o(\Delta t) .
            \end{aligned}$

        - 令$\Delta t \rightarrow 0$, 得
            
            - $p_0^{\prime}(t)=-\lambda(t) p_0(t) .$

        - 求解齐次常微分方程, 并利用初始条件 $p_0(0)=1$ 得
        
            - $p_0(t)=\mathrm{e}^{-m(t)} .$
        - 类似地, 由假设 (ii) 和 (iii) 得
            
            - $p_k^{\prime}(t)=-\lambda(t) p_k(t)+\lambda(t) p_{k-1}(t)$
        递推得到:
            
            - $p_k(t)=\frac{[m(t)]^k}{k !} \mathrm{e}^{-m(t)}$

    - $N(t)$的特征:
        
        - $E N(t)=m(t)$
        - $Var N(t)=m(t)$
        - 自相关函数$r_N(s, t)=E(N(s)N(t))=m^2(s)+m(s)+m(s)m(t-s)$

- 定理 3.9:
    
    - 满足上述非齐次 Poisson 过程的概率密度函数是多少呢?
    - 令$t>0,n\geq 1,$假设$V_i$独立同分布,密度函数是$\frac{\lambda(u)}{m(t)},0\leq u\leq t$,那么有:
        
        - $(S_1,S_2,\cdots,S_n|N(t)=n)\overset{d}{=}(V'_1,V'_2,\cdots,V'_n)$,这里 $S_i$是第 i 个到达的时间点
        - $i.e.\quad p(s_1,s_2,\cdots,s_n|n)=n!\prod\limits_{i=1}^{n}\frac{\lambda(s_i)}{m(t)},0\leq s_1<s_2<\cdots<s_n$


## 多维Poisson点过程

- 略过







[知乎](https://zhuanlan.zhihu.com/p/690962615)