# 多变量线性回归

#### 正规方程法

- $\theta = (X^TX)^{-1}X^Ty$
  - 其中$X$是特征矩阵,$y$是目标变量
    - 给出最优解的$\theta$

  - 在通常的计算软件中, 计算一个矩阵的逆需要 $O(n^3)$,  当 $n$ 特别大时, 正规方程法的效率会变得很低 (因为要计算逆 $X^TX$)   
    - 这时候我们考虑使用梯度下降法




#### 多维特征
- $X=(x_1,x_2,...,x_n)$
  - $n$ 代表特征的数目
  - $x^{(i)}$ 代表第 $i$ 个训练样本,也就是特征矩阵的第 $i$ 行
  - $x_j^{(i)}$ 代表第 $i$ 个训练样本的第 $j$ 个特征值
  - 假设$h_\theta(x)=\theta_0+\theta_1x_1+\theta_2x_2+...+\theta_nx_n$,引入$x_0=1$:则$h$可以表示为$h_\theta(x)=\theta^TX$

#### 多变量梯度下降
- 代价函数$J(\theta_0,\theta_1,\cdots,\theta_n)=\frac{1}{2m}\sum\limits_{i=1}^{m}(h_\theta(x^{(i)})-y^{(i)})^2$
  - 其中$h_\theta= \theta^TX=\theta_0x_0+\theta_1x_1+\cdots+\theta_nx_n$
- 算法:$\theta_j =\theta_j-\alpha\frac{\partial}{\partial \theta_j}J(\Theta)$
  - 即:$\theta_j = \theta_j-\alpha\frac{\partial}{\partial\theta_j}\frac{1}{2m}\sum\limits_{i=1}^m(h_\theta(x^{(i)})-y^{(i)})^2=\theta_j-\alpha\frac{1}{m}\sum\limits_{i=1}^m(h_\theta(x^{(i)})-y^{(i)})x_j^{(i)}$

#### 特征缩放
- 在面对多维的问题的时候,为了保证各个特征的游动权重相同,需要对特征进行缩放
  - 一般的可以取$x_j =  \frac{x_j-\mu_j}{s_j}$,其中$\mu_j$是平均值,$s_j$是标准差
    - 利用了中心极限定理

#### 学习率
- 学习率太大可能会无法收敛,学习率太小会导致收敛速度过慢

- 画出$J(\theta)$随着迭代次数的变化,可以帮助我们选择合适的学习率

