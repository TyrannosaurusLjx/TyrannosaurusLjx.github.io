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























