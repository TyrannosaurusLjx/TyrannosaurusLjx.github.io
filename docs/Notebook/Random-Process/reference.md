# reference

## 示性函数
- 定义: $\mathbb{I}_A(\omega)=\begin{cases}1,\omega\in A\\0,\omega\notin A\end{cases}$
    - 输入为一个随机变量,随机变量取值为下标集合$A$,输出为$1$ ,不然输出为$0$
    - 输出也是一个随机变量
- $E\mathbb{I}_A=1\times P(A)+0\times P(A^c)=P(A)$,也就是说$\mathbb{I}_A$的期望就是事件:输入随机变量取值在下标集合$A$中"的概率


## 1_Skript_2.pdf
- $\alpha_i=p_0(i)=p(X_0=i)$
    - $\alpha = (\alpha_i)_{i\in \mathcal{E}}$
- $\lambda_i=\lambda(i)$表示状态$i$的分布,(分布在状态$i$的可能性)

- Lemma 2.6.5. Let $i \in E$ be any state. The following conditions are equivalent:
    - (1) State $i$ is aperiodic.
    - (2) There is $N \in \mathbb{N}$ such that for every natural number $n>N$ we have $p_{i i}^{(n)}>0$.
    
    - 这个引理和书本注记4.2 等同
        - $\forall i,\exists m\in\mathbb{N},s.t.\forall n\geq m$

        - $$p_{ii}^{(nd_i)}>0$$
    - 引理证明中提到的number theory 可能在于$\gcd\{n_1,n_2,\cdots,n_s\}=1\implies\exists k_1,k_2,\cdots,k_s,s.t.k_1n_1+k_2n_2+\cdots+k_sn_s=1$,然后使用数学归纳法证明


- $f_i:=p_i(\exists n,s.t.X_n=i|X_0=i)$
    - $i$常返$\iff f_i=1$
    - $i$瞬时$\iff f_i<1$
- $B_k:=\#\{n:X_n=i\}$,表示到达状态$i$的次数
    - $p_i(B_k)=f_i^k$(Markov 性)

## [StocProc](https://www.math.pku.edu.cn/teachers/lidf/course/stochproc/stochprocnotes/html/_book/index.html)

- 
    





## 定理证明思路

### Markov 链
- 定理 4.1 
    - $p_{ij}^{(m)},p_{ji}^{(n)}>0\implies p_{jj}^{(m+n)}\geq p_{ij}^{(m)}p_{ij}^{(n)}>0$
    - $A$是给定数集,若$d_1=\gcd A,d_2\mid a ,\forall a\in A\implies d_2\mid d_1$

- 定理 4.2

- 定理 4.3
    - 如果有一个路径经过了常返状态$i$(由 Markov 的性质,相当于从$i$出发),那么**路径上的每一个状态一定都能到达状态$i$**,若不然有$j,s.t.i\to j,j\not\to i$,那么从此以后再也不能回到状态$i$了,与常返矛盾


- 定理 4.4 
    - 定理 4.2 给出

- 定理 4.5 
    - $p(A\cap B|C)=p(A|C)p(B|A\cap C)$
    - $p_{jj}^{(n)}=\sum\limits_{k=1}^n f_{jj}^{(k)}p_{jj}^{(n-k)}$
        - 从状态$j$出发回到状态$j$的概率等于,第一次回到状态$j$的概率乘以从第一次回到状态$j$之后再回到状态$j$的概率(Markov 性)
    - 交换求和的部分最好是一个一个写出来观察,不是很显然


