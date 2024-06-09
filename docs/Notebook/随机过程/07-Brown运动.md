# Brown运动

## Brown运动及基本性质

### Brown运动定义
- 设 $B(t)$ 是实数值随机过程,如果满足
    - 初始值: $B(0)=0$
    - 独立增量: $0<t_1<\cdots<t_k<\cdots,\implies B(t_1),B(t_2)-B(t_1),\cdots,B(t_k)-B(t_{k-1})$ 相互独立
    - 平稳增量: $0\leq s<t,\implies B(t)-B(s),B(t-s)$ 同分布
    - 正态分布: $\forall t>0, B(t)\sim N(0,\sigma^2 t)$
    则称 $B(t)$ 为参数为 $\sigma^2$ 的 Brown 运动,当 $\sigma^2=1$ 时,称为标准 Brown 运动

> [!NOTE]
> 以下若未特别说明,均指标准 Brown 运动

### Brown运动的基本性质
- $\mu(t)=E(B(t))=0$
- $Var(B(t))=E(B^2(t))=t$
- $EB(t)^m = \begin{cases} t^k(2k-1)!! & m=2k \\ 0 & m=2k+1 \end{cases}$
- $r_B(s,t)=E(B(s)B(t))=s,s<t$
> [!NOTE]
> $\forall s,t.\geq 0, r_B(s,t)=\min(s,t)$

> [!NOTE]
> 任意均值为0,自相关函数为 $r(s,t)=\min(s,t)$ 的正态过程都是 Brown 运动

- 密度函数 $p(t,x) = \frac{1}{\sqrt{2\pi t}}e^{-\frac{x^2}{2t}}$

- 设 $s<t$
    - 若 $B(s)=x$, 则 
        
        - $$p_{t|s}(y|x) = \frac{1}{\sqrt{2\pi(t-s)}}e^{-\frac{(y-x)^2}{2(t-s)}}\quad y\in\mathbb{R}$$

    - 若 $B(t)=y$, 则

        - $$p_{s|t}(x|y) = \frac{\sqrt{t}}{\sqrt{2\pi s(t-s)}} e^{-\frac{(tx-sy))^2}{2(t-s)}} \quad x\in\mathbb{R}$$

- $\text{Brown}$ 运动的曲线处处连续但处处不可微


### $\text{Brown}$ 运动变化形式

#### 定理 7.1
- 设 $X(t)$ 是实数值正态过程,若 $E(X(t))=0,r(s,t)=\min(s,t)$,则 $X(t)$ 是 $\text{Brown}$ 运动

#### 推论 7.1
- 下列过程是 $\text{Brown}$ 运动

    - 给定 $t_0\geq 0$ 定义
        
        - $X(t) = B(t+t_0)-B(t_0)$
            
            - 相当于把坐标轴的原点平移到 $(t_0,B(t_0))$ 处

    - 给定 $c>0$ 定义
        
        - $X(t)  = \frac{1}{\sqrt{c}}B(ct)$

            - 压缩时间轴

    - 定义
        
        - $X(t) = \begin{cases} tB(t^{-1}) & t>0 \\ 0 & t=0\end{cases}$


### 若干相关过程

- Brown 桥
    - $B^0(t)= B(t)-tB(1),0\leq t\leq 1$
        
        - $r(s,t)=E(B^0(s)B^0(t))=\min\{s,t\} (1-\max\{s,t\}),0\leq s,t \leq 1$
        
- 反射 Brown 运动
    - $X(t)= |B(t)|$
        
        - $EX(t)=\sqrt{\frac{2}{\pi}}t,EX^2(t)=t,t\geq 0$
        - $p(t,x)=\sqrt{\frac{2}{\pi t}}e^{-\frac{x^2}{2t}},x\geq 0$

- 几何 Brown 运动,给定 $\alpha,\beta\in \mathbb{R}$

    - $X(t)=e^{\alpha t+\beta B(t)},t\geq 0$

- 积分过程
    
    - $X(t) = \int_0^t B(s)ds\sim N(0,\frac{t^3}{3})$

        - $EX(t)=0$
        - $r_X(s,t)=\frac{s^2t}{2}-\frac{s^3}{6},s\leq t$


## 最大值分布

#### 定义 最大值
- $$M_t=\max\limits_{0\leq s\leq t}B(s)$$

    - 即 $0$ 到 $t$ 之间 $B(s)$ 的最大值

#### 定理 7.2
- $$M_t\overset{d}{=} |B(t)|$$


#### 定义 首中时
- $$T_a = \begin{cases} \inf\{t\geq 0:B(t)>a\} & a>0 \\ \inf\{t\geq 0:B(t)<a\} & a<0 \end{cases}$$
- $$T_a = \inf\{t\geq 0:B(t)=a\}$$

    - 即 $B(t)$ 首次击中 $a$ 的时刻

#### 定理 7.3
- 令 $f_a(t)$ 表示 $T_a$ 的密度函数,则

    - $$f_a(t) = \frac{|a|}{\sqrt{2\pi}t^{\frac{3}{2}}}e^{-\frac{a^2}{2t}}  ,t>0$$
    
#### 推论 7.2
- 给定 $a\in \mathbb{R}$ 
    - $$P(T_a<\infty)=1,ET_a=\infty$$

- 无论 $|a|$ 多大,总会在有限时间内到达,但是到达的时间期望是无穷大

#### 定理 7.4
- 令 $a<0<b$ 那么
    
    - $$P(T_a<T_b)=\frac{b}{b-a}$$
    - $$P(T_a>T_b)=\frac{|a|}{b-a}$$

### 推广
- $$X(t)=B(t)-bt$$

    - 是一个连续正态过程,但是不再是 $\text{Brown}$ 运动

- 考虑 $X(t)$ 的最大值和首中时

    - $\max\limits_{0\leq s\leq t}X(s)$
    - $T_{a,b}=\begin{cases} \inf\{t\geq 0:X(t)\geq a\} & a>0 \\ \inf\{t\geq 0:X(t)\leq a\} & a<0 \end{cases}$
        
        - 实际上 $T_{a,b}$ 是 $B(t)$ 首次击中 $bt+a$ 的时刻,也就是

        - $$T_{a,b} = \begin{cases} \inf\{ t\geq 0:B(t)\geq a+bt \} & a>0 \\ \inf\{ t\geq 0:B(t)\leq a+bt \} & a<0 \end{cases}$$

- 有

    - $$P(\max\limits_{0\leq s\leq t}X(s)\geq a) = P(T_{a,b}\leq t)$$

#### 定理 7.5
- $T_{a,b}$ 的密度函数为

    - $$f_{a,b}(t) = \frac{|a|}{\sqrt{2\pi}t^{\frac{3}{2}}}e^{-\frac{(a+bt)^2}{2t}}$$


## Ito 积分
- $$\int_{0}^{t} f(s) dB(s)$$

    - 是一个随机变量

#### 定理 7.7
- $\text{Brown}$ 运动的曲线是无界变差函数

    - $$\lim\limits_{n\to\infty}\sum\limits_{i=1}^{2^n} \left|B\left(\frac{i}{2^n}\right)-B\left(\frac{i-1}{2^n}\right)\right|^2 = \infty














