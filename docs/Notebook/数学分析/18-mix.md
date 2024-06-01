# 杂项

## 可积性理论

- 可积的充要条件

    - 有界函数在闭区间上可积
        
        - $\iff \text{对任何划分P,当分点足够细的时候} \sum \omega_i\Delta x_i = 0$

        - $\iff \forall \varepsilon>0,\exists P,s.t.\sum\limits_{P} \omega_i\Delta x_i < \varepsilon$

        - $\iff f$ 的不连续点集是零测的

        - $\iff \forall \varepsilon>0,\delta > 0$ 使得那些使得振幅 $\omega_i>\varepsilon$ 的区间长度 $\sum \Delta x_i < \delta$
            - 即振幅不能任意小的区间长度可以任意小


## mix

---
> [!NOTE]
> 调和级数不等式
>> $$\frac{1}{n+1} \leq \ln\frac{n+1}{n} \leq \frac{1}{n}$$
>>> $$1+\frac{1}{2}+\cdots+\frac{1}{n} \geq \ln (n + 1)$$

- $$\lim\limits_{n\to\infty} \sum\limits_{k=1}^n \frac{1}{k} = \ln  n + \gamma$$ 

---
> [!NOTE]
> 平均值定理

> $a_n\to a\implies \frac{\sum\limits_{k}^n a_k}{n}\to a$

> $a_n\to a\implies \sqrt[n]{\prod\limits_{k=1}^n a_k}\to a$

> $\lim f(x)=A \implies \frac{1}{x}\int_0^x f(t)\mathrm{d}t\to A$

- $$\lim\limits_{n\to\infty} (a_n-a_{n-1})=a \implies \lim\limits_{n\to\infty} \frac{a_n}{n} = a$$

- $$\lim\limits_{n\to\infty} \frac{a_n}{a_{n-1}} = a \implies \lim\limits_{n\to\infty} \sqrt[n]{a_n} = a$$

> [!EXAMPLE]
> 计算 $\lim\limits_{n\to\infty} \frac{\sqrt[n]{n(n+1)\cdots (2n-1)}}{n}$
>> 令 $a_n = \frac{n(n+1)\cdots (2n-1)}{n^n}$, $\frac{a_n}{a_{n-1}}\to \frac{4}{e}$, 所以 $\sqrt[n]{a_n}\to \frac{4}{e}$

> [!NOTE]
> 平均就算差,开方就算比

---

> $\lim\limits_{n\to\infty}\frac1{n^{k+1}}\left(1^k+\cdots+n^k\right)=\int_0^1x^k\mathrm{d}x=\frac1{k+1}$

- $$1^k + 2^k+\cdots + n^k \sim \frac{1}{k+1}n^{k+1}$$

> [!EXAMPLE]
> $\lim\limits_{n\to\infty}\frac{\ln n}{\ln(1^{2022}+2^{2022}+\cdots+n^{2022})}=\lim\limits_{n\to\infty}\frac{\ln n}{2023\ln n+\ln\frac1{n^{2023}}(1^{2022}+2^{2022}+\cdots+n^{2022})}=\frac1{2023}$

---

> [!NOTE]
> 极限压缩定理
>> 若 $\exists r\in (0,1),s.t. |X_{n+1}-a|leq r |X_n-a|$, 则 $\lim\limits_{n\to\infty} X_n = a$

> [!EXAMPLE]
> 设 $x_{n+1}=\cos x_n,x_1\in[0,\frac\pi3]$,证明$\lim_n\to\infty x_n$ 存在且极限为$\cos x-x=0$ 的根
>> 考虑$f(x)=\cos x-x$,$f^\prime ( x) = \sin x- 1\leq 0$ 单减 , 因此有唯一解,设 $\cos a= a$。由于
>> $$|x_{n+1}-a|=|\cos x_n-a|=|\cos x_n-\cos a|=|\sin\xi|\cdot|x_n-a|$$
>> 而由于$\xi\in[0,\frac\pi3]$,$|\sin\xi|<\frac{\sqrt3}2$,因此$|x_n-a|\to 0$

---

- 压缩映射定理

    - 若存在 $r\in (0,1),s.t. |x_{n+1}-x_n|\leq r|x_n-x_{n-1}|$, 则数列 $\{x_n\}$ 收敛

- 导数判断压缩映射

    - 若 $a_{n+1}=f(a_n)$, $f^\prime(x)\leq r<1$, 则 $\{a_n\}$ 收敛

> [!EXAMPLE]
> 如 $a_{n+1}=\cos a_n,a_1\in[0,\frac\pi3]$ 

---

- 一致连续

    - 闭区间上的连续函数一致连续

    - 开区间上的连续函数一致连续 $\iff$ 函数在端点的极限存在(有限)
    
        - 这是充要条件


- 判定
    - 给定函数 $f$ 和区间 $I$ (可以无穷)

        - 若函数满足 $\text{Lip}$ 条件,则函数一致连续

            - $\exists M,s.t.\forall x,y\in I,|f(x)-f(y)|\leq M|x-y|$

        - 进一步,若导函数有界,则函数一致连续

            - $|f^\prime(x)|\leq M$

> [!NOTE]
> 这两个条件都是充分的,比如函数 $f(x)=\sqrt{x},x\in[0,1]$ 是一致连续的,但导函数无界































