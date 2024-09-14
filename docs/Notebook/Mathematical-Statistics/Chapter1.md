# 绪论

## 什么是数理统计

数理统计研究如何有效地收集和使用带有随机性影响的数据


## 数理统计的相关概念

- 总体 $(\text{population})$：研究对象的全体，是我们研究的对象

- 样本 $(\text{sample})$：从总体中抽取的一部分个体，是我们实际观察到的数据

- 个体 $(\text{individual})$：组成总体的每一个对象

- 随机变量 $(\text{random variable})$：常用 $\text{ r.v. }$ 表示

- $r.v. X$：表示随机变量 $X$

- $f,F$：表示随机变量的密度函数和分布函数

- $X_1,X_2,\cdots,X_n\; \text{i.i.d.} \sim F$ 表示 $X_1,X_2,\cdots,X_n$ 是独立同分布 $\text{(independent and identically distributed)}$ 的随机变量，且分布函数为 $F$

    - 若有密度函数 $f$ 也可以表示为 $X_1,X_2,\cdots,X_n\; \text{i.i.d.} \sim f$
    
    - 若样本可视为 $X$ 的观察值,那么也可以记为 $X_1,X_2,\cdots,X_n \;\text{i.i.d.} \;X$

- 样本空间 $(\text{sample space})$：所有可能的样本的集合, 记为 $\mathscr{X}$

> [!NOTE]
> 样本的两重性：样本既是随机变量，又是观察值
>> 在抽样之前，样本是随机变量，是未知的；在抽样之后，样本是已知的，是观察值


- 统计模型 $(\text{statistical model})$：确定了样本的分布就确定了统计模型(统计模型就是样本分布)

- 统计推断 $(\text{statistical inference})$：根据样本推断总体的性质

- 参数和参数空间 $(\text{parameter and parameter space})$：统计模型中未知的常数，用 $\theta$ 表示，$\Theta$ 表示参数空间
    
- 样本分布族 $(\text{sample distribution family})$：样本的分布的集合，用 $\mathscr{F}$ 表示

  - 统计模型每取一个参数就会得到一个样本分布


## 统计量

### 定义 : 样本算出来的量称为统计量 $(\text{statistic})$, 是样本的函数

- 统计量只与样本有关, 不依赖于总体参数

    - 100 也是统计量, 是样本的常函数
    - $\sum X_i,\prod X_i$ 都是统计量


- 因为样本具有两重性, 所以统计量也具有两重性

### 常用统计量

- 样本均值 $(\text{sample mean}) : \overline{X} = \frac{1}{n}\sum X_i$

- 样本方差 $(\text{sample variance}) : S^2 = \frac{1}{n-1}\sum (X_i - \overline{X})^2$

- 样本矩 $(\text{sample moment})$

    - 样本 $k$ 阶原点矩 $a_{n,k} = \frac{1}{n}\sum\limits_{i=1}^n X_i^k$
    - 样本 $k$ 阶中心矩 $m_{n,k} = \frac{1}{n}\sum\limits_{i=1}^n (X_i - \overline{X})^k$
        
        - $m_{n,2} = \frac{n-1}{n}S^2$

- $X,Y$ 的协方差 $(\text{sample covariance}) :S_{XY} = \text{cov}(X,Y) = \frac{1}{n}\sum (X_i - \overline{X})(Y_i - \overline{Y})$

- 次序统计量 $(\text{order statistic})$ 

    - $X_{(1)} \leq X_{(2)} \leq \cdots \leq X_{(n)}$

    - 中位数: $m_{\frac{1}{2}} = \begin{cases} X_{(n/2+1)} & if \; n \; \text{is even} \\ \frac{1}{2}(X_{(n/2)} + X_{(n/2+1)}) & if \; n \; \text{is odd} \end{cases}$
    - 极值($\text{extremum of sample}$): 极小值:$X_{(1)},极大值:X_{(n)}$ 

    - 样本$p$分位数($\text{sample p-fractile}$): $X_{\left([p(n+1)]\right)}$

    - 样本极差($\text{sample range}$): $R = X_{(n)} - X_{(1)}$


### 经验分布函数 $(\text{empirical distribution function})$

$$
F_n(x) = \begin{cases} 0 & x \leq X_{(1)} \\ \frac{k}{n} & X_{(k)} < x \leq X_{(k+1)} \\ 1 & x > X_{(n)} \end{cases}
$$

单调,不减,左连续函数

若记示性函数

$$
I_A(x) = \begin{cases} 1 & x \in A \\ 0 & x \notin A \end{cases}
$$

则 $F_n(x)=\frac{1}{n}\sum I_{(-\infty,x)}(X_i)$

$$
F_n(x)\xrightarrow{P} F(x)
$$

并且有

$$
P\left(\lim\limits_{n\to\infty}\sup\limits_x |F_n(x) - F(x)| =0 \right) = 1
$$
