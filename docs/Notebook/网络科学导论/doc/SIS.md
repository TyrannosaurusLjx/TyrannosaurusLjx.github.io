# SIS 模型

> [!NOTE]
> 与 SIR 的区别就是感染后个体康复以后不处于移除态,可以继续被感染

设定 $\gamma$ 为感染后康复的概率, $\beta$ 为感染概率

$$
\begin{align}
\frac{ds}{dt} &= -\beta s i + \gamma i \\
\frac{di}{dt} &= \beta s i - \gamma i
\end{align}
$$