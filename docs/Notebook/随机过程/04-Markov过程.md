# Markov Chain

## Markov Chain的基本性质

### 定义

- Markov Chain是一类特殊的随机过程,时间参数空间为连续或者离散集,但是状态空间至多是可数集

- $X=(X_n,n\geq 1)$是$Markov-Chain$的充要条件是
    - $$\forall n\geq 0,\forall i,j,\forall i_0,i_1\cdots,i_{n-1:}$$
    - $$P(X_{n+1}=j|X_n=i,X_{n-1}=i_{n-1},\cdots,X_0=i_0)=P(X_{n+1}=j|X_n=i)$$

- 令$p_{n;ij}=P(X_{n+1}=j|X_n=i)$,则$p_{n;ij}$为Markov Chain在 n 时刻存状态 i 转化到状态 j 的概率,特别的如果$p_{n;ij}$与 n 无关,那么称$X$是(时间)齐次马尔科夫链

- $P=(p_{ij})_{n\times n}$为状态转移矩阵

####  Markov-Chain的分布

- 定义:$P_k(i)=P(X_k=i)$,$i.e.P_k(i)$为Markov Chain在 $k$ 时刻状态为 $i$ 的概率
    $p_k=(P_k(1),P_k(2),\cdots,P_k(n))$为Markov Chain在 $k$ 时刻的分布

    - $p_0=(P_0(1),P_0(2),\cdots,P_0(n))$为初始分布,初始分布和状态转移矩阵完全决定了Markov Chain的分布

    - 容易得到$p_n=p_0P^n$

    - $$P(X_0=i_0,X_1=i_1,\cdots,X_n=i_n)=P(X_0=i_0)P(X_1=i_1|X_0=i_0)\cdots P(X_n=i_n|X_{n-1}=i_{n-1})$$
        - $$=p_0(i_0)p_{i_0i_1}p_{i_1i_2}\cdots p_{i_{n-1}i_n}$$

####  m-步转移概率

- 令$p_{ij}^{(m)}=P(X_{n+m}=j|X_n=i)$,则$p_{ij}^{(m)}$为Markov Chain在$n$时刻从状态$i$经过$m$步转化到状态$j$的概率

    - $P^{(m)}=(p_{ij}^{(m)})_{n\times n}$为$m$步转移矩阵
    - $P^{(m)}=P^m$,左边是$m$步转移矩阵,右边是状态转移矩阵的$m$次方
    - $P^{(m+n)}=P^{(m)}P^{(n)}$,即$p_{ij}^{(m+n)}=\sum_{k=1}^np_{ik}^{(m)}p_{kj}^{(n)}$称为Chapman-Kolmogorov方程

## 状态空间分解

    类似群作用的轨道

### 互通类

- 称状态$i$可到达状态$j$,如果存在$n\geq 0$使得$p_{ij}^{(n)}>0$,记作$i\rightarrow j$
- 约定$p_{ii}^{(0)}=1,p_{ij}^{(0)}=0,i\neq j$

- 定义:状态$i$和状态$j$互通,如果$i\rightarrow j$且$j\rightarrow i$,记作$i\leftrightarrow j$

    - 互通是等价关系,将状态空间分解为互通类.满足:
        
        - 对称性:$i\leftrightarrow j\implies j\leftrightarrow i$
        - 传递性:$i\leftrightarrow j,j\leftrightarrow k\implies i\leftrightarrow k$
        - 自反性:$i\leftrightarrow i$

    - 状态空间中的互通类是不相交的,且互通类的并是整个状态空间
    - 如果初始状态在某个互通类中,那么以后的状态都在这个互通类中
- **如果任意两个状态是互通的,就称这个Markov链是不可约的**

### 周期

- $d_i=\gcd\{n\geq 1:p_{ii}^{(n)}>0\}$称为状态 $i$ 的周期,如果$d_i=1$,则称状态i是非周期的,否则称状态 $i$ 是周期的

    - $p_{ii}^{(n)}>0$表示状态i在n步之后又回到了状态 $i$

#### 引理 1 
- 设$d_i=d$那么$\exists N>0,s.t.\forall n\geq N$:
    - $$p_{ii}^{(nd)}> 0$$
    - 特别的如果$d=1$,那么也就是$p_{ii}^{(n)}>0$,换句话说,从非周期状态出发,经过充分多次后,总有可能返回该状态

#### 定理 4.1

- 如果$i \leftrightarrow j$,那么$d_i=d_j$
  - 互通的元素有相同的周期

### 状态空间分解

- 给定状态$j$,令$T_j=\inf\{n\geq 1:X_n=j\}$,即$T_j$是Markov Chain第一次到达状态j的时刻

    - 约定:$\inf\emptyset=+\infty$,即如果Markov Chain永远不会到达状态j,那么$T_j=+\infty$
    - 当 $X_0=j$ 时, $T_j$ 表示首次回到状态 $j$ 的时刻,不然表示首次到达状态 $j$ 的时刻

- 如果$P(T_j<\infty |X_0=j)=1$,也就是说在有限的时间内一定会回到状态 $j$ ,那么称 $j$ 是常返状态
- 如果$E(T_j|X_0=j)<\infty$,那么称$j$是正常返状态
- 如果$E(T_j|X_0=j)=\infty$,那么称$j$是零常返状态
- 如果$P(T_j<\infty |X_0=j)<1$,那么称$j$是瞬时状态

> [!NOTE]
> 如果 $p_{ii}>0$, 那么 $i$ 一定在一个常返状态类里面,至少 $i\in C$

#### 定理 4.2

- 如果$i\leftrightarrow j$,那么:

    - $i$是瞬时状态$\iff j$是瞬时状态
    - $i$是常返状态$\iff j$是常返状态
    - $i$是正常返状态$\iff j$是正常返状态

    这表明常返性和瞬时性都是"类性质"

#### 定理 4.3

- $i$是常返的,那么$C_i=\{j:i\leftrightarrow j\}$是闭集

#### 定理 4.4(状态空间的分解)

- $\mathcal{E} = C_1+\cdots+C_m+\mathcal{N}$,其中$C_1,\cdots,C_m$是常返类,$\mathcal{N}$是瞬时状态全体,$m$可以取无穷

    不同常返状态等价类是不相交之闭

## 常返性与瞬时性

- $T_j=\inf\{n\geq 1:X_n=j\}$,令$f_{jj}^{(n)}=P(T_j=n|X_0=j)=P(X_1\neq j,\cdots,X_{n-1}\neq j,X_n=j|X_0=j)$

- $j$是常返状态$\iff\sum\limits_{n=1}^{\infty}f_{jj}^{(n)}=1$
- $j$是瞬时状态$\iff\sum\limits_{n=1}^{\infty}f_{jj}^{(n)}<1$
    - 常返状态$j$的平均返回时间为$\tau_j=E(T_j|X_0=j)=\sum\limits_{n=1}^{\infty}nf_{jj}^{(n)}$

#### 定理4.5
- $j$是常返状态$\iff\sum\limits_{n=1}^{\infty}p_{jj}^{(n)}=\infty$

    - 推论:$j$常返时:$\forall i\in\mathcal{E}$若$i\to j$:
        - $$\sum\limits_{n=1}^\infty p_{ij}^{(n)}=\infty$$

    - 若$i\not\to j$:
        -  $$\sum\limits_{n=1}^\infty p_{ij}^{(n)}=0$$

- $j$是瞬时状态$\iff\sum\limits_{n=1}^{\infty}p_{jj}^{(n)}<\infty$
    - 而且有$\sum\limits_{n=1}^{\infty}p_{jj}^{(n)}=\frac{1}{1-f_{ii}}-1$
        - **$\sum\limits_{n=0}^{\infty}p_{jj}^{(n)}=\frac{1}{1-f_{ii}}$**
        - [reference](https://www.math.pku.edu.cn/teachers/lidf/course/stochproc/stochprocnotes/html/_book/markovc.html#markovc-def)
    - 推论:$j$瞬时时:$\forall i\in\mathcal{E}$:
        - $$\sum\limits_{n=1}^\infty p_{ij}^{(n)}<\infty$$


> [!NOTE]
> 若$i\leftrightarrow j$,并且为常返状态,那么$f_{ij}=1$,不然与常返性矛盾 


#### 定理 4.6
- 如果$j$是瞬时状态,那么
  - $$\lim\limits_{n\to\infty} p_{jj}^{(n)}=0$$
- 如果$j$是零常返状态,那么
  - $$\lim\limits_{n\to\infty} p_{jj}^{(n)}=0$$
- 如果$j$是非周期正常返状态,那么
  - $$\lim\limits_{n\to\infty} p_{jj}^{(n)}=\frac{1}{\tau_j}$$
- 如果$j$是周期为$d_j$的正常返状态,那么
  - $$\lim\limits_{n\to\infty} p_{jj}^{(n)}=\frac{d_j}{\tau_j}$$
    - 综合来看,只要$j$是常返状态,那么$\lim\limits_{n\to\infty} p_{jj}^{(n)}=\frac{d_j}{\tau_j}$
    - 如果对瞬时状态也定义平均返回时间$\tau_j=+\infty$,那么$\lim\limits_{n\to\infty} p_{jj}^{(n)}=\frac{d_j}{\tau_j}$,对所有的状态都成立

#### 推论 4.1
- 如果$j$是零常返或者瞬时状态,那么对任意状态$i$,有
  - $$\lim\limits_{n\to\infty} p_{ij}^{(n)}=0$$
- 如果$j$是非周期正常返状态,那么对任意状态$i$,有
  - $$\lim\limits_{n\to\infty} p_{ij}^{(n)}=\frac{f_{ij}}{\tau_j}$$
    - 其中$f_{ij}$为从$i$出发可到达$j$的概率

#### 定理 4.7
- 有限 Markov 链一定存在正常返状态

#### 定义
- $M_j=\#\{ n\geq 0:X_n=j \}$表示状态$j$的访问次数

#### 定理 4.8
- 如果$j$是常返状态,那么
  - $$P(M_j=\infty|X_0=j)=1$$
- 如果$j$是瞬时状态,那么
  - $$P(M_j=\infty|X_0=j)=0,(P(M_j<\infty|X_0=j)=1)$$

## 平稳 Markov 链

### 极限分布

- 若存在$\mathcal{E}$上的一个概率分布$\mu,s.t.,\forall j \in \mathcal{E}$
  - $$\lim\limits_{n\to\infty} p_n(j)=\mu(j)$$
    - 则称$\mu$为Markov Chain的极限分布

- 极限分布的存在性
  - 令$\mu_j = \sum\limits_{i=1}^{N}p_0(i)\nu_{ij},j\in\mathcal{E}$,其中$\nu_{ij}=\lim\limits_{n\to\infty}p_{ij}^{(n)}$,则$\mu=(\mu_1,\cdots,\mu_n)$是Markov Chain的一个极限分布
    - 实际上$\mu_j=\lim\limits_{n\to\infty}p_{ij}^{(n)}$


### 平稳分布
- $X$是强平稳$\iff (X_m,X_{m+1},\cdots,X_{m+n})\overset{d}{=}(X_0,X_1,\cdots,X_n),\iff p_0=p_1=\cdots \iff p_0=p_0P$
- 从而取$p_0\in \{\pi:\pi P=\pi\}$,就得到平稳$Markov$链
  - 求解方程组
    - $$\begin{cases} \sum\limits_{i=1}^{N}\pi_{i}p_{ij}=\pi_j&j=1,2,\cdots ,N, \\ \sum\limits_{i=1}^{N}\pi_i=1 \\ \pi_i\geq 0\end{cases}$$

#### 定理 4.9
- 假设$X$是非周期不可约(任意状态之间互通)Markov 链,转移概率矩阵为$P$,那么该 Markov 链存在平稳分布当且仅当每个状态都是正常返的,并且
  - $$\pi_j = \frac{1}{\tau_j},j\in\mathcal{E}$$
  - 其中$\tau_j=ET_j$为状态$j$的平均返回时间

#### 推论 4.2
- 假设$X$是非周期不可约Markov 链,转移概率矩阵为$P$,那么该 Markov 链存在极限分布当且仅当存在平稳分布,且二者相等

    - 非周期不可约 Markov 链的极限分布等同于平稳分布


## 可逆 Markov 链

#### 定义 4.10

- 如果对任意的$m\geq 0,M\geq m$,有
    - $$(X_M,X_{M-1},\cdots,X_m)\overset{d}{=}(X_0,X_1,\cdots,X_{m})$$
    - 那么称$X$是可逆 Markov 链
- 如果$X$是可逆 Markov 链,那么
    - $$X_M\overset{d}{=}X_0$$
    - 也就是说它一定是平稳的

#### 定理 4.10 
- 假设平稳分布$\pi$存在,并选择$\pi$作为初始分布,那么$X$是可逆的当且仅当
    - $$(X_0 ,X_1) \overset{d}{=} (X_1,X_0)$$
        - 即
    - $$\pi_i p_{ij}=\pi_j p_{ji},\forall i,j\in\mathcal{E}$$

> [!NOTE]
> 现在验证一个Markov链是否可逆,需要验证定理4.10的条件,但是这需要计算平稳分布(这需要使用概率转移矩阵计算),有没有直接从概率转移矩阵判断的方法?

#### 定理 4.11
- 假设$X$是不可约平稳Markov链,转移概率矩阵为$P$,那么$X$是可逆的当且仅当
    - $p_{i_0,i_1}p_{i_1,i_2}\cdots p_{i_{m-1}i_0}=p_{i_m,i_{m-1}}p_{i_{m-1},i_{m-2}}\cdots p_{i_1,i_0}$

    - 例:2 状态不可约平稳Markov链一定是可逆的

## 连续时间Markov链

- $X=(X(t),t\geq 0)$是连续时间随机过程,状态空间$\mathcal{E}=\{1,2,\cdots,N\}$若$\forall 0\leq s<t,$有
    - $$P(X(t)=j|X(s)=i,X(u)=i_u,u\leq s)=P(X(t)=j|X(s)=i)$$
    - 那么称$X$是连续时间Markov链
    - 令$p_{ij}(s;t)=P(X(t)=j|X(s)=i)$,若$p_{ij}(s;t)$仅与时间差$t-s$有关,那么称$X$是齐次的
        - 此时记$p_{ij}(t)=P(X(t)=j|X(0)=i),p_t(i)=P(X(t)=i),P(t)=(p_{ij}(t))_{n\times n}$

- 假设$p_{ij}(t)$是关于$t>0$的连续函数,并且有
    - $\lim\limits_{t\to 0}p_{ij}(t) = \begin{cases} 1 & i=j \\ 0 & i\neq j \end{cases}$
- 称满足上述假设的的转移概率矩阵族$\{P(t),t\geq 0\}$称为是 **标准的**















