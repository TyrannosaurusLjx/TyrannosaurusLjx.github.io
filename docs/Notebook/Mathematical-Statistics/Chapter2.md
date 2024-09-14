# 抽样分布

## 正态分布

- 正态分布:

    - 特征函数: $\varphi_X(t) = e^{it\mu - \frac{1}{2}\sigma^2t^2}$


- 正态变量线性函数的分布 :

$$
X\sim N(\mu,\sigma^2),Y=aX+b \implies Y\sim N(a\mu+b,a^2\sigma^2)
$$

- $\bar{X} = \frac{1}{n}\sum X_i \sim N(\mu,\frac{\sigma^2}{n})$

- 正太变量样本均值和样本方差的分布和它们的独立性

    - 设 $X_1,X_2,\cdots,X_n\; \text{i.i.d.} \sim N(\mu,\sigma^2),\bar{X}= \frac{1}{n}\sum X_i, S^2 = \frac{1}{n-1}\sum (X_i-\bar{X})^2$, 则

        - $\bar{X}\sim N(\mu,\frac{\sigma^2}{n})$

        - $(n-1)S^2/\sigma^2 \sim \chi^2(n-1)$

        - $\bar{X}$ 和 $S^2$ 独立


## 次序统计量的分布

设 $X_1,X_2,\cdots,X_n$ 是来自总体 $X$ 的一个样本, $X_{(1)}\leq X_{(2)}\leq \cdots \leq X_{(n)}$ 是它的次序统计量

- $X_{(m)}$ 的分布
    - $F_{X_{(m)}}(x) = P(X_{(m)}\leq x) = \sum\limits_{k=m}^n C_n^k F(x)^k(1-F(x))^{n-k}$

    - $f_{X_{(m)}}(x) = C_m^1 C_n^m f(x)F(x)^{m-1}(1-F(x))^{n-m}$


- $X_{(1)}$ 的分布

    - $F_{X_{(1)}}(x) = 1-(1-F(x))^n$

    - $f_{X_{(1)}}(x) = n f(x)(1-F(x))^{n-1}$

- $X_{(n)}$ 的分布

    - $F_{X_{(n)}}(x) = F(x)^n$

    - $f_{X_{(n)}}(x) = n f(x)F(x)^{n-1}$

- $X_{(1)},\cdots,X_{(n)}$ 的联合分布

    - $f_{X_{(1)},\cdots,X_{(n)}}(x_1,\cdots,x_n) = n! f(x_1)\cdots f(x_n),x_1\leq \cdots \leq x_n$


## $\chi^2$ 分布, $t$ 分布, $F$ 分布

### $\chi^2$ 分布

设 $X_1,X_2,\cdots,X_n\; \text{i.i.d.}\;\sim N(0,1)$, 则称 $Y = \sum\limits_{i=1}^n X_i^2$ 为自由度为 $n$ 的 $\chi^2$ 卡方变量, 记为 $Y\sim \chi^2(n)$

- $f_n(x)=\begin{cases} \frac{1}{2^{n/2}\Gamma(n/2)}x^{n/2-1}e^{-x/2} & x>0 \\ 0 & x\leq 0 \end{cases}$

- 令 $\xi \sim \chi^2(n),\alpha\in (0,1),P(\xi\geq c) = \alpha$, 则称 $c=\chi_n^2(\alpha)$ 为卡方分布的上侧 $\alpha$ 分位数

- $\varphi_{\chi^2(n)}(t) = (1-2it)^{-n/2},t<1/2$

- $E(\xi) = n,Var(\xi) = 2n$


### $t$ 分布

设 $X\sim N(0,1),Y\sim \chi^2(n)$ 且 $X,Y$ 独立, 则称 $T = \frac{X}{\sqrt{Y/n}}$ 为自由度为 $n$ 的 $t$ 变量, 记为 $T\sim t_n$

- $t_n(x)=\frac{\Gamma(\frac{n+1}{2})}{\sqrt{n\pi}\Gamma(n/2)}(1+x^2/n)^{-\frac{n+1}{2}},x\in\mathbb{R}$

- $\lim\limits_{n\to\infty}t_n(x) = \frac{1}{\sqrt{2\pi}}e^{-x^2/2}$

- $E(T) = 0,Var(T) = \frac{n}{n-2},n>2$


### $F$ 分布

设 $U\sim \chi^2(m),V\sim \chi^2(n)$ 且 $U,V$ 独立, 则称 $F = \frac{U/m}{V/n}$ 为自由度为 $m,n$ 的 $F$ 变量, 记为 $F\sim F_{m,n}$

- $f_{m,n}(x) = \begin{cases} \frac{\Gamma(\frac{m+n}{2})}{\Gamma(\frac{m}{2})\Gamma(\frac{n}{2})}m^{m/2}n^{n/2} x^{m/2-1}(n+mx)^{-\frac{m+n}{2}} & x>0 \\ 0 & x\leq 0 \end{cases}$

- 设 $F\sim F_{m,n},\alpha\in (0,1),P(F\geq c) = \alpha$, 则称 $c=F_{m,n}(\alpha)$ 为 $F$ 分布的上侧 $\alpha$ 分位数

- 若 $F\sim F_{m,n}$, 则 $1/F\sim F_{n,m}$

- 若 $T\sim t_n$, 则 $T^2\sim F_{1,n}$

- $F_{m,n}(\alpha) = \frac{1}{F_{n,m}(1-\alpha)}$



## 充分统计量






















