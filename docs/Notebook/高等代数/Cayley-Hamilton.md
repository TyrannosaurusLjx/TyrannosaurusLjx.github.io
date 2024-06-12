# Cayley-Hamilton

- Cayley-Hamilton 定理: 矩阵的特征多项式是它的一个零化多项式

- 设 $A$ 是 $n$ 阶可逆矩阵,则存在 $n-1$ 次多项式 $g(x),s.t. A^{-1} = g(A)$, 存在 $n-1$ 次多项式 $h(x),s.t. A^* = h(A)$

  - 令 $f(\lambda) = \lambda^n + a_1\lambda^{n-1} + \cdots + a_{n-1}\lambda + a_n$ 是 $A$ 的特征多项式, 由 $a_n = (-1)^n\det A\neq 0$ ,得到 $A^{-1} = -\frac{1}{a_n} (A^{n-1} +  a_1 A^{n-1} + \cdots + a_{n-1} I_n)$

  - 当 $A$ 可逆的时候,如上有 $A^* = (-1)^{n-1}(A^{n-1} + a_1 A^{n-1} + \cdots + a_{n-1} I_n)$

    - 当 $A$ 奇异,取一列 $\{t_k\}\in Q,s.t.t_k\to 0$ 则

      - $$(t_kI+A)^* = f_{t_k}(\lambda) = (-1)^{n-1}( (A+t_kI)^{n-1} + a_1 (A+t_kI)^{n-1} + \cdots + a_{n-1} I_n)$$

      - 令 $k\to\infty$ ,利用多项式的连续性就得到了 $A^* = h(A)$

- $AX=XB$ 型方程的解

  - 设 $A$ 是 $n$ 阶矩阵, $B$ 是 $m$ 阶矩阵, 若 $A,B$ 没有相同的特征值,则 $AX=XB$ 只有零解

    - 令 $f(\lambda)=|\lambda I-A|,$ 则 $O = f(A)X=Xf(B)$ 又 $f(B)\neq O$,所以 $X=O$
