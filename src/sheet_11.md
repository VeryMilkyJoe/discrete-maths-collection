# Exercise Sheet 11

#### 101) Each element of $\mathbb{Q}(\sqrt{2}, \sqrt{3})$ can be uniquely represented in the form $a + b\sqrt{2} + c \sqrt{3} + d\sqrt{6}$ where $a,b,c,d \in \mathbb{Q}$. Therefore it can be identified with a quadruple $(a,b,c,d) \in \mathbb{Q}^4$. Determine the quadruple corresponding to $(a + b\sqrt{2} + c \sqrt{3} + d\sqrt{6})(a' +  b' \sqrt{2} + c' \sqrt{3} + d' \sqrt{6})$.
We mark and sort the summands according to their square root factor:
$$
\color{green}{aa'} + \color{gold}{ab'\sqrt{2}} + \color{blue}{ac'\sqrt{3}} + \color{pink}{ad'\sqrt{6}} + \color{gold}{b\sqrt{2}a'} + \color{green}{b\sqrt{2}b'\sqrt{2}} + \color{pink}{b\sqrt{2}c'\sqrt{3}} + \color{blue}{b\sqrt{2}d'\sqrt{6}} + \\
\color{blue}{c\sqrt{3}a'} + \color{pink}{c\sqrt{3}b'\sqrt{2}} + \color{green}{c \sqrt{3} c'\sqrt{3}} + \color{gold}{c\sqrt{3}d'\sqrt{6}} + \color{pink}{d\sqrt{6}a'} + \color{blue}{d\sqrt{6} b'\sqrt{2}} + \color{gold}{d\sqrt{6} c' \sqrt{3}} + \color{green}{d\sqrt{6} d' \sqrt{6}}
$$

Thus the quadrupel is the following:
$$
(\color{green}{aa'} + \color{green}{b\sqrt{2}b'\sqrt{2}} + \color{green}{c \sqrt{3} c'\sqrt{3}} + \color{green}{d\sqrt{6} d' \sqrt{6}},\\
\color{gold}{ab'\sqrt{2}} + \color{gold}{b\sqrt{2}a'} +
\color{gold}{c\sqrt{3}d'\sqrt{6}} + \color{gold}{d\sqrt{6} c'}, \\
\color{blue}{ac'\sqrt{3}} + \color{blue}{b\sqrt{2}d'\sqrt{6}} + \color{blue}{d\sqrt{6} b'\sqrt{2}} + \color{blue}{c\sqrt{3}a'}, \\
\color{pink}{ad'\sqrt{6}} + \color{pink}{b\sqrt{2}c'\sqrt{3}} + \color{pink}{c\sqrt{3}b'\sqrt{2}} + \color{pink}{d\sqrt{6}a'})
$$

#### 102) Show that the set $\{a+b\sqrt{2}|a,b \in \mathbb{Q}\}$ with the usual addition and multiplication is a field.

Let $S = \{a+b\sqrt{2}|a,b \in \mathbb{Q}\}$,
* $S$ is trivially closed under addition by $\mathbb{Q}$ being a field.
* As can be shown analogously to 101), $S$ is closed under multiplication.
* Each element in $S$ has a multiplicative inverse, i.e.:
    For any $a+ \sqrt{2}b \neq 0$ there exists $c + \sqrt{2}d$ such that       $(a+\sqrt{2}b)(c + \sqrt{2}d = 1$ meaning $ac + 2bd + \sqrt{2}ad +         \sqrt{2}bc = 1$
    thus we get the set of equations:
    $$
    ad + bc = 0\\
    ac + 2bd = 1
    $$

    We can use matrices to solve this system of equations:
    $$
    \begin{bmatrix}
    a & 2b\\
    b & a
    \end{bmatrix} \cdot \begin{bmatrix}
    c \\
    d
    \end{bmatrix} = \begin{bmatrix}
    1 \\
    0
    \end{bmatrix}
    \iff \begin{bmatrix}
    c\\
    d
    \end{bmatrix}=
    \begin{bmatrix}
    a & 2b\\
    b & a
    \end{bmatrix}^{-1} \cdot
    \begin{bmatrix}
    1 \\
    0
    \end{bmatrix}
    $$
    and $$
    \begin{bmatrix}
    a & 2b\\
    b & a
    \end{bmatrix}^{-1} = \frac{1}{a^2-2b^2}\begin{bmatrix}
    a & -2b\\
    -b & a
    \end{bmatrix}^{-1}
    $$
    thus
    $$
    \begin{bmatrix}
    c \\
    d
    \end{bmatrix} = \frac{1}{a^2-2b^2} \begin{bmatrix}
    a \\
    -b
    \end{bmatrix}
    $$
    meaning $c = \frac{a}{a^2-2b^2}, d = \frac{-b}{a^2-2b^2}$ which are both in $\mathbb{Q}$ since $a = b = 0$ is not possible by construction.

    **Compute $(3-5\sqrt{2})^{-1}$.**
    $(3-5\sqrt{2})^{-1}$ is thus $c = \frac{3}{-41}, d = \frac{-5}{41}$.

#### 104) Let $K$ be a field with $char(K) = p$. Prove that $(a+b)^p = a^p + b^p$ for all $a,b \in K$.
*Hint: Use the binomial theorem and consider the equation $\binom{p}{k} = p \cdot \frac{(p-1)!}{k!(p-k)!}$ for $0 < k < p$. Show that $\binom{p}{k} \in \mathbb{N}$ implies that the fraction on the right-hand side must be an integer, too, since the factors in the denominator do not divide $p$.*
We apply the binomial theorem:
$$
(a+b)^p = \sum_{k=0}^p \binom{p}{k} a^{p-k} b^k
$$
we split the sum in order to be able to apply the next step of the hint:
$$
\binom{p}{0} a^pb^0 + \sum_{k=1}^{p-1} p\cdot \frac{(p-1)!}{k!(p-k)!} a^{p-k}b^k + \binom{p}{p}a^0 b^p = \\
= a^p + \sum_{k=1}^{p-1} p \cdot \frac{(p-1)!}{k!(p-k)!} \cdot a^{p-k} \cdot b^k + b^p
$$
Now, we know $\binom{p}{k} = p \cdot \frac{(p-1)!}{k!(p-k)!} \in \mathbb{N}$ and we know $k!(p-k)!$ does not divide $p$ as $k \leq p-1 < p$ and thus each $k (k-1) \cdots 1$ does not divide $p$, analogously this holds for $(p-k)!$'s factors. Since $p$ is prime, no number smaller than $p$ divides $p$, therefore $\frac{(p-1)!}{k!(p-k)!} \in \mathbb{N}$ as $p \in \mathbb{N}$ and $\binom{p}{k} \in \mathbb{N}$.
Thus $p \cdot \frac{(p-1)!}{k!(p-k)!}$ can be written as $p \cdot x$ where $x \in \mathbb{N}$ and thus $x \in K$ as well.

This means $px = (x + x + \dots + x) = x(1+ \dots + 1) = 0$ by definition of $char(K) = p$.

#### 105) Consider the field $\mathbb{Z}_2[x] / m(x)$ where $m(x) = x^3 + x^4 + x^3 + x +1$. Hence the residue classes module $m(x)$ are
$$
\bar{b(x)} = \bar{b_7 x^7 + b_6 x^6 + \dots + b_1x + b_0}
$$
and can be identified with a byte $b_7b_6 \dots b_1b_0$.
Compute the sum of the two bytes $10010101$ and $11001100$ in the field.
$$
\begin{align}
&10010101\\
+&11001100\\
\hline
&01011001
\end{align}
$$
no carry by addition over polynoms and xor since $\mathbb{Z}_2$.
Thus $x^6 + x^4 + x^3 +1$ mod $m(x)$.

#### 106) Show that the repetition code of order $r$ (i.e. each bit of the original word is sent $r$ times) is a linear code. Determine a generator matrix and a check matrix of this code.

We show $C$ is a linear code by defining a generating matrix of dimensions $k \times r \cdot k$ for it:
\begin{bmatrix}
1^r & 0^r & 0^r & \dots \\
0^r & 1^r & 0^r & \dots \\
0^r & 0^r & 1^r & \dots \\
\vdots & \vdots & \vdots & \ddots\\
\end{bmatrix}

and the check matrix of dimensions $(r-1)k \times (r\cdot k)$ by:

\begin{bmatrix}
m & m_0 & m_0 & \dots \\
m_0 & m & m_0 & \dots \\
m_0 & m_0 & m & \dots \\
\vdots & \vdots & \vdots & \ddots\\
\end{bmatrix}

where each $m,m_0$ represents a block of size $(r-1)\cdot r$ and $m_0$ is defined by a block of only zeros while $m$ is defined by:

\begin{matrix}
1 & 1 & 1 & \dots \\
-1 & 0 & 0 & \dots \\
0 & -1 & 0 & \dots \\
0 & 0 & -1 & \dots \\
\vdots & \vdots & \vdots & \ddots\\
\end{matrix}

each of these blocks represents a system of equations which check all $r$ bits are the same, i.e. bit $1$ is the same as bit $2$ etc.

#### 107) Four symbols have to be encoded with elements of $\mathbb{Z}_2^5$ such that the code forms a $(5,k)$ linear code ($k$ to be determined) with which $1$-bit errors can be detected and corrected. Determine a generating matrix and a check matrix of this code.

We want $d=3$ in order to be able to correct $1$ error.

$$
G = \pmatrix{
0 & 1 & 1 & 0 & 1\\
1 & 0 & 0 & 1 & 1
}
$$

$$
H = \pmatrix{
1 & 1 & 0 & 1 & 0\\
1 & 0 & 1 & 1 & 0\\
-1 & 0 & -1 & 0 & 1\\
-1 & -1 & 0 & 0 & 1\\
0 & 0 & 0 & -1 & -1
}
$$
from the system of equations:
$$
b_1 + b_2 = b_3 + b_4\\
b_1 = b_4\\
b_2 = b_3\\
b_1 + b_2 = b_5\\
b_3 + b_4 = b_5
$$





