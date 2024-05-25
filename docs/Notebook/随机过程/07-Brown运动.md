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













