# Fourier级数

## 函数的 $\text{Fourier}$ 级数展开

### 周期是 $2\pi$ 的函数的 $\text{Fourier}$ 级数展开
- 规定 $f(x)$ 是 $[-\pi,\pi]$ 上的周期函数并且 $\text{Riemann}$ 可积或者在反常积分意义下可积(直接称为可积),然后把 $f$ 的定义延拓到 $\mathbb{R}$

- $$\{1,\sin x,\cos x,\sin 2x,\cos 2x,\cdots,\sin nx,\cos nx,\cdots\}$$
    是任意长度为 $2\pi$ 的区间上的正交函数系 

- 若 
    - $$f(x)=\frac{a_0}{2} + \sum\limits_{n=1}^{\infty}(a_n\cos nx+b_n\sin nx)$$
        - 则
    - $$a_n=\frac{1}{\pi}\int_{-\pi}^{\pi}f(x)\cos nx dx \quad n=0,1,\cdots$$
    - $$b_n=\frac{1}{\pi}\int_{-\pi}^{\pi}f(x)\sin nx dx \quad n=1,2,\cdots$$
    - 称为 $\text{Euler-Fourier}$ 公式,右侧的级数称为 $f(x)$ 的 $\text{Fourier}$ 级数, $a_n,b_n$ 称为 $\text{Fourier}$ 系数

- 定义 $S_m(x)=\frac{a_0}{2} + \sum\limits_{n=1}^{m}(a_n\cos nx+b_n\sin nx)$,称为 $\text{Fourier}$ 级数的部分和


### 正弦级数和余弦级数
- 若 $f(x)$ 是奇函数,那么有

    - $$a_n=0 \quad n=0,1,2,\cdots$$

    - $$b_n=\frac{2}{\pi}\int_{0}^{\pi}f(x)\sin nx dx \quad n=1,2,\cdots$$

    - 于是 $f(x)\sim \sum\limits_{n=1}^{\infty}b_n\sin nx$

        - 形如 $\sum\limits_{n=1}^{\infty}b_n\sin nx$ 的级数称为正弦级数


- 若 $f(x)$ 是偶函数,那么有
    
    - $$b_n=0 \quad n=1,2,\cdots$$
    
    - $$a_n=\frac{2}{\pi}\int_{0}^{\pi}f(x)\cos nx dx \quad n=0,1,2,\cdots$$
    
    - 于是 $f(x)\sim \frac{a_0}{2} + \sum\limits_{n=1}^{\infty}a_n\cos nx$
    
        - 形如 $\frac{a_0}{2} + \sum\limits_{n=1}^{\infty}a_n\cos nx$ 的级数称为余弦级数


### 任意周期的函数的 $\text{Fourier}$ 级数展开
- 若 $f(x)$ 是 以 $2T$ 为周期的函数,那么有
    
    - $$f(x)\sim \frac{a_0}{2} + \sum\limits_{n=1}^{\infty}(a_n\cos \frac{\pi}{T}nx+b_n\sin \frac{\pi}{T}nx)$$

    - $$a_n=\frac{1}{T}\int_{-T}^{T}f(x)\cos \frac{\pi}{T}nx dx \quad n=0,1,\cdots$$
    
    - $$b_n=\frac{1}{T}\int_{-T}^{T}f(x)\sin \frac{\pi}{T}nx dx \quad n=1,2,\cdots$$


## $\text{Fourier}$ 级数的收敛判别法

### $\text{Dirichlet}$ 积分

- $$\frac{1}{2}+\sum\limits_{n=1}^m \cos n\theta = \frac{\sin \frac{2m+1}{2}\theta}{2\sin \frac{\theta}{2}}$$

- $$\begin{align*} S_m(x)  &= \frac{1}{\pi}\int_{-\pi}^{\pi}f(x+u)\frac{\sin \frac{2m+1}{2} u}{\sin\frac{u}{2}}du \\ &= \frac{1}{\pi}\int_0^\pi [f(x+u)+f(x-u)] \frac{\sin \frac{2m+1}{2} u}{\sin\frac{u}{2}}du \end{align*}  $$

- 记 $\varphi_\sigma(u,x)= f(x+u)+f(x-u) -2\sigma(x)$,  则 $f(x)$ 的傅里叶级数收敛于 $\sigma(x) \iff$ 极限

    - $$\lim\limits_{m\to\infty} \int_0^\pi \varphi_\sigma(u,x) \frac{\sin \frac{2m+1}{2} u}{\sin\frac{u}{2}}du = 0$$


### $\text{Riemann}$ 引理及其推论

#### 定理 16.2.1 $\text{Riemann}$ 引理
- $\psi(x)$ 是闭区间 $[a,b]$ 上可积或者绝对可积的函数,则有 
    
    - $$\lim\limits_{n\to\infty} \int_a^b \psi(x)\cos nx dx = \lim\limits_{n\to\infty} \int_a^b \psi(x)\sin nx dx = 0$$


#### 推论 16.2.1 局部性原理
- 可积或者绝对可积的函数 $f(x)$ 在 $x$ 处的傅里叶级数是否收敛只与 $f(x)$ 在 $x$ 的一个邻域内的性质有关


    - $$\lim\limits_{m\to\infty} \int_{\delta}^\pi [f(x+u)+f(x-u)] \frac{\sin \frac{2m+1}{2} u}{\sin\frac{u}{2}}du = 0$$

    这表明级数收敛与否只与 $\int_0^\delta ...du$ 有关


#### 推论 16.2.2 
- 设函数 $\psi(x)$ 在闭区间 $[0,\delta]$ 上可积或者绝对可积,则有

    - $$\lim\limits_{m\to\infty} \int_0^\delta \psi(u)\frac{\sin \frac{2m+1}{2} u}{\sin\frac{u}{2}}du = \lim\limits_{m\to\infty} \int_0^\delta \psi(u)\frac{\sin \frac{2m+1}{2} u}{u}du$$


### $\text{Fourier}$ 级数的收敛判别法

- $\text{Dini}$ 条件
    - $\exists \delta>0,s.t. \frac{\varphi_\sigma (u,x)}{u}$ 在 $[0,\delta]$ 上可积或者绝对可积


#### 定理 16.2.2 
- 设函数 $f(x)$ 在闭区间 $[-\pi,\pi]$ 上可积或者绝对可积,且满足下列两个条件之一,那么其在 $x$ 处的傅里叶级数收敛到 $\frac{f(x+)+f(x-)}{2}$

    - $\text{Dirichlet-Jordan}$ 判别法
        - $f$ 在 $x$ 的某个邻域内是分段单调有界函数

    - $\text{Dini-Lipschitz}$ 判别法
        - $f$ 在 $x$ 处满足指数为 $\alpha\in (0,1]$ 的 $\text{Holder}$ 条件

#### 定义 16.2.1
- 分段单调就是函数在没个小区间上是单调的(连接处可以不单调)

#### 定义 16.2.2
- 设 $x$ 是 $f$ 的连续点或者第一类不连续点,若 $\forall \delta >0,\exists L>0,\alpha\in (0,1],s.t.$
    - $$|f(x\pm u)-f(x\pm)|\leq Lu^\alpha,u\in(0,\delta)$$
    - 则称 $f$ 在 $x$ 处满足指数为 $\alpha$ 的 $\text{Holder}$ 条件


#### 定理 16.2.3 $\text{Dirichlet}$ 引理
- 设 $\psi(x)$ 在 $[0,\delta]$ 上单调,则
    
    - $$\lim\limits_{p\to\infty} \int_0^\delta \frac{\psi(u)-\psi(0+)u}{u}\sin pu du = 0$$

- 或者 
    
    - $$\lim\limits_{p\to\infty} \int_0^\delta \psi(u)\frac{\sin pu}{u} du = \frac{\pi}{2}\psi(0+)$$

#### 推论 16.2.3
- 若函数 $f$ 在 $[-\pi,\pi]$ 上可积或者绝对可积,且在点 $x$ 处的单侧导数存在,或者
    - $$\lim\limits_{h\to 0+}\frac{f(x\pm h)-f(x\pm)}{h}$$
    - 存在,则 $f$ 的傅里叶极速在 $x$ 处收敛到 $\frac{f(x+)+f(x-)}{2}$

> [!NOTE]
> 若收敛.第一类不连续点处的傅里叶级数收敛到它左右极限的算数平均值

## $\text{Fourier}$ 级数的性质

### $\text{Fourier}$ 级数的分析性质

#### 定理 16.3.1
- 设 $f(x)$ 在 $[-\pi,\pi]$ 上可积或者绝对可积,则其傅里叶系数满足

    - $$\lim\limits_{n\to\infty} a_n = \lim\limits_{n\to\infty} b_n = 0$$

#### 定理 16.3.2  逐项积分
- 设 $f(x)$ 在 $[-\pi,\pi]$ 上可积或者绝对可积,则有
    - $$\int_c^xf(t)dt = \int_c^x\frac{a_0}{2}dt + \sum\limits_{n=1}^{\infty}\int_c^x\left( a_n\cos nt+b_n\sin nt \right)dt$$

> [!NOTE]
> 只要 $f(x)\sim \frac{a_0}{2} + \sum\limits_{n=1}^{\infty}(a_n\cos nx+b_n\sin nx)$,哪怕这个级数并不表示 $f(x)$ 甚至根本不收敛,它的逐项积分也能收敛到 $f(x)$ 的积分

#### 推论 16.3.1
- $\frac{a_0}{2} + \sum\limits_{n=1}^{\infty}(a_n\cos nx+b_n\sin nx)$  是某个 $[-\pi,\pi]$ 上可积或者绝对可积函数的傅里叶级数的必要条件是级数 $\sum\limits_{n=1}^\infty \frac{b_n}{n}$ 收敛











