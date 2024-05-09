# Galton-Watson分枝过程

## 简介

- 令 $\xi$ 为一非负整数值随机变量,分布如下
    - $$P(\xi = k) = p_k, k \geq 0,p_0 < 1$$

- 令 $Z_0=1, Z_{n+1} = \sum\limits_{j=1}^{Z_n}{\xi_{n;j}}$ ,其中 $\xi_{n;j}$ 独立同分布于 $\xi$

#### 定理 5.1 
- $Z = (Z_n)_{n \geq 0}$ 是一个马尔可夫链,状态空间为 $\mathbb{Z}^+$, 转移概率为
    - $$p_{ij} = P(\sum\limits_{k=1}^i\xi_{i;k}=j) , i,j \geq 0$$

## 数字特征和概率分布

#### 定理 5.2 
- 设 $E\xi = \mu, Var\xi = \sigma^2,$ 则,对任意 $n \geq 0$
    - $$E(Z_n) = \mu^n$$
    - $$Var(Z_n) = \sigma^2\mu^{n-1}\frac{1-\mu^n}{1-\mu}= \sigma^2\mu^{n-1}(1+ \mu + \cdots + \mu^{n-1})$$

> [!NOTE]
> $\mu<1$ 则说明每个个体平均繁衍个体数小于 1, 从而种群最终灭绝$\\$
> $\mu>1$ 则说明每个个体平均繁衍个体数大于 1, 种群数目以几何级数增长$\\$
> $\mu=1$ 则说明种群数目总体保持不变

## 生成函数

#### 定义 5.3 
- 对非负整数随机变量 $\xi$, 定义: 
    - $$\phi(s) = E(s^\xi) = \sum\limits_{k=0}^{\infty}{s^kp_k},s\in [0,1]$$
    为 $\xi$ 的生成函数
- 显然 $\phi(s) \leq \sum\limits_{k=0}^{\infty}{p_k} = 1$, 从而 $\phi(s)$ 在 $[0,1]$ 上收敛

#### 定理 5.4  (生成函数的性质) 
- $\phi(1) = 1,\; 0\leq \phi(s)\leq 1$
- 若 $E\xi^k <\infty,$ 则 $\phi$ 在 $[0,1]$ 上 $k$ 次可微,特别的当 $E\xi^2 < \infty$ 时
    - $$\phi'(1) = E\xi,\; \phi''(1) = E\xi(\xi-1)=E\xi^2 - E\xi$$
- $\phi(s)$ 在 $s=0$ 处无穷次可微,并且
    - $$p_k = \frac{\phi^{(k)}(0)}{k!},\forall k\geq 0$$
    约定 $\phi^{(0)}(0)=\phi(0)$

- 设 $\xi,\eta$ 为两个独立非负整数值随机变量,那么 $\xi+\eta$ 的生成函数等于各自生成函数的和,即
    - $$\phi_{\xi+\eta} = \phi_\xi+\phi_\eta$$
    容易推广到任意有限个独立随机变量的和

#### 命题 5.1 
- 记 $\phi_k$ 为 $Z_k$ 的生成函数,则
    - $$\phi_k(s) = \begin{cases} \phi_\xi(s) & k=1 \\ \phi(\phi_{k-1}(s)) & k\geq 2 \end{cases}$$

- 注意到 $(1,s,s^2,\cdots,s^k,\cdots)$ 线性无关,从而在 $\phi_n(s)$ 的表达是中, $s^l$ 的系数就是 $p_k$

## 生存与灭绝概率

- 记 $\alpha_n = P(Z_n = 0 ),n\geq 1$
    - 则有 $\alpha_{n+1} = \alpha_n + P(Z_n \neq 0 \text{但} Z_{n+1} = 0)$
    从而 $\{\alpha_n\}$ 是单调非负不减数列,又 $\alpha_n\leq 1$, 据单调有界定理,其极限存在,记为 $\tau$, 即
        - $$\tau = \lim\limits_{n\to\infty} \alpha_n$$
    称 $\tau$ 为 **灭绝概率**

- 当 $\mu<1,P(Z_n>0) = P(Z_n\geq 1) \leq EZ_n = \mu^n\to 0$, 容易得到 $\tau = 1$ ,必然灭绝,利用 生成函数有
    - $$\alpha_n = \phi_n(0)=\phi(\phi_{n-1}(0))=\phi(\alpha_{n-1})$$
    令 $n\to\infty$, 有 
    - $$\tau = \phi(\tau)$$
    这样灭绝概率 $\tau$ 是方程 $s = \phi(s)$ 的一个解,注意到 $s=1$ 总是方程的解,那么如果方程只有一个解就必然是 $s=1\;(i.e.\tau = 1)$


#### 定理 5.5 
- 设 $p_0>0$ (若不然肯定不会灭绝)
    - 若 $\mu\leq 1$ 则 $\tau =1$
    - 若 $\mu > 1$ 则, $\tau$ 为方程 $s=\phi(s)$ 的最小正解,且 $0<\tau<1$

