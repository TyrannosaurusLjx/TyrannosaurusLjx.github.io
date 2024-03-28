# Markov Chain

## Markov Chain的基本性质

### 定义

- Markov Chain是一类特殊的随机过程,时间参数空间为连续或者离散集,但是状态空间至多是可数集

- $X=(X_n,n\geq 1)$是$Markov-Chain \iff,\forall n\geq 0,\forall i,j,\forall i_0,i_1\cdots,i_{n-1}:P(X_{n+1}=j|X_n=i,X_{n-1}=i_{n-1},\cdots,X_0=i_0)=P(X_{n+1}=j|X_n=i)$

- 令$p_{n;ij}=P(X_{n+1}=j|X_n=i)$,则$p_{n;ij}$为Markov Chain在 n 时刻存状态 i 转化到状态 j 的概率,特别的如果$p_{n;ij}$与 n 无关,那么称X 是(时间)齐次马尔科夫链

- $P=(p_{ij})_{n\times n}$为状态转移矩阵

####  Markov-Chain的分布

- 定义:$P_k(i)=P(X_k=i)$,$i.e.P_k(i)$为Markov Chain在 $k$ 时刻状态为 $i$ 的概率
    $p_k=(P_k(1),P_k(2),\cdots,P_k(n))$为Markov Chain在 $k$ 时刻的分布

    - $p_0=(P_0(1),P_0(2),\cdots,P_0(n))$为初始分布,初始分布和状态转移矩阵完全决定了Markov Chain的分布

    - 容易得到$p_n=p_0P^n$

    - $P(X_0=i_0,X_1=i_1,\cdots,X_n=i_n)=P(X_0=i_0)P(X_1=i_1|X_0=i_0)\cdots P(X_n=i_n|X_{n-1}=i_{n-1})=p_0(i_0)p_{i_0i_1}p_{i_1i_2}\cdots p_{i_{n-1}i_n}$

####  m-步转移概率

- 令$p_{ij}^{(m)}=P(X_{n+m}=j|X_n=i)$,则$p_{ij}^{(m)}$为Markov Chain在$n$时刻从状态$i$经过$m$步转化到状态$j$的概率

    - $P^{(m)}=(p_{ij}^{(m)})_{n\times n}$为m步转移矩阵
    - $P^{(m)}=P^m$,左边是$m$步转移矩阵,右边是状态转移矩阵的$m$次方
    - $P^{(m+n)}=P^{(m)}P^{(n)}$,即$p_{ij}^{(m+n)}=\sum_{k=1}^np_{ik}^{(m)}p_{kj}^{(n)}$称为Chapman-Kolmogorov方程

## 状态空间分解

    类似群作用的轨道

### 互通类

- 称状态$i$可到达状态$j$,如果存在$n\geq 0$使得$p_{ij}^{(n)}>0$,记作$i\rightarrow j$
- 约定$p_{ii}^{(0)}=1,p_{ij}^{(0)}=0,i\neq j$

- 定义:状态$i$和状态$j$互通,如果$i\rightarrow j$且$j\rightarrow i$,记作$i\leftrightarrow j$

    - 互通是等价关系,将状态空间分解为互通类.满足:
        
        - 对称性:$i\leftrightarrow j\Rightarrow j\leftrightarrow i$
        - 传递性:$i\leftrightarrow j,j\leftrightarrow k\Rightarrow i\leftrightarrow k$
        - 自反性:$i\leftrightarrow i$

    - 状态空间中的互通类是不相交的,且互通类的并是整个状态空间
    - 如果初始状态在某个互通类中,那么以后的状态都在这个互通类中

### 周期

- $d_i=\gcd\{n\geq 1:p_{ii}^{(n)}>0\}$称为状态i的周期,如果$d_i=1$,则称状态i是非周期的,否则称状态i是周期的

    - $p_{ii}^{(n)}>0$表示状态i在n步之后又回到了状态 i

#### 定理 4.1

- 如果$i \leftrightarrow j$,那么$d_i=d_j$

### 状态空间分解

- 给定状态$j$,令$T_j=\inf\{n\geq 1:X_n=j\}$,即$T_j$是Markov Chain第一次到达状态j的时刻

    - 约定:$\inf\emptyset=+\infty$,即如果Markov Chain永远不会到达状态j,那么$T_j=+\infty$
    - 当$X_0=j$时,$T_j$表示首次回到状态j的时刻,不然表示首次到达状态j的时刻

- 如果$P(T_j<\infty |X_0=j)=1$,也就是说在有限的时间内一定会回到状态$j$,那么称$j$是常返状态
- 如果$E(T_j|X_0=j)<\infty$,那么称$j$是正常返状态
- 如果$E(T_j|X_0=j)=\infty$,那么称$j$是零常返状态
- 如果$P(T_j<\infty |X_0=j)<1$,那么称$j$是瞬时状态

#### 定理 4.2

- 如果$i\leftrightarrow j$,那么:

    - $i$是瞬时状态$\iff j$是瞬时状态
    - $i$是常返状态$\iff j$是常返状态
    - $i$是正常返状态$\iff j$是正常返状态

    这表明常返性和瞬时性都是"类性质"

#### 定理 4.3

- $i$是常返的,那么$C_i=\{j:i\leftrightarrow j\}$是闭集

#### 定理 4.4(状态空间的分解)

- $\varepsilon = C_1+\cdots+C_m+\mathcal{N}$,其中$C_1,\cdots,C_m$是常返类,$\mathcal{N}$是瞬时状态全体,$m$可以取无穷

    不同常返状态等价类是不相交之闭


## 常返性与瞬时性






