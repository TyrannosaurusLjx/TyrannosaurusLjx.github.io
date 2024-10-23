# SIR 模型

> [!NOTE]
> 这里设定每个被感染的个体感染其他个体的概率都相同,为$\beta$ 
> 个体以固定的概率$\gamma$变成移除状态 (R)

用小写字母表示比例: $s=\frac{S}{N}$, $i=\frac{I}{N}$, $r=\frac{R}{N}$

$$
\begin{aligned}
\frac{ds}{dt} &= -\beta s i \\
\frac{di}{dt} &= \beta s i - \gamma i \\
\frac{dr}{dt} &= \gamma i
\end{aligned}
$$

移除人数的稳态解为

$$
r = 1-s_0 e^{-\frac{\beta}{\gamma}t}
$$

通常假设 $s_0 = 1,$ 记 $\lambda  = \beta /\gamma$ 为基本再生数, 则
$$
r = 1- e^{-\lambda t}
$$

> [!NOTE]
> $\lambda$ 表示一个个体咋恢复之前能感染的其他个体的数目, 如果 $\lambda > 1$ 则疫情会爆发, 否则疫情会消失 (1 是临界值)