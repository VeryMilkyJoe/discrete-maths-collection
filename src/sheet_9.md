# Exercise Sheet 9

#### 81) Let $G$ be a finite, abelian group and $a \in G$ an element for which $ord_G(a)$ is maximal. Prove that for all $b \in G$  the order $ord_G(b)$ is a divisor of $ord_G(a)$.

Proof by contradiction:

Assume $a \in G$ for which $ord_G(a)$ is maximal and $b \in G$ where $ord_G(b) \nmid ord_G(a)$.

We denote $k = ord_G(a)$ and $l = ord_G(b)$, and can write
$$
k = \prod_{p \in \mathbb{P}} p^{\varphi_p(k)} \text{ ,and } l = \prod_{p \in \mathbb{P}} p^{\varphi_p(l)}
$$
By $l \nmid k$, there exist $p_1, \dots, p_n \in \mathbb{P}$ such that $\varphi_{p_i}(l) > \varphi_{p_i}(k)$.

Then, by definition: $lcm(k,l) = \prod_{p \in \mathbb{P}} p^{max(\varphi_p(k), \varphi_p (l))}$ which means $lcm(k,l)>k$.

This means $\exists c \in G$ such that $ord(c) = lcm(k,l)$ by

$$
\forall a,b \in G (ord(a) = r \land ord(b) = s) \Rightarrow \exists c \in G (ord(c) = lcm(r,s))
$$

We know $lcm(k,l) > k$, i.e.:
$$
lcm(ord_G(a), ord_G(b)) > ord_G(a)
$$

thus $ord_G(c) > ord_G(a)$ but $ord_G(a)$ is maximal. Contradiction!

#### 82) Let $\lambda$ and $\varphi$ denote the Carmicheal function and Euler's totient function respectively. Compute $\lambda(172872)$ and $\varphi(172872)$.
We recall the definitions of the Carmicheal and totient functions:
$$
\varphi(n) = lcm(\lambda(p_1^{r_1}) \cdot \lambda(p_2^{r_2}) \cdots \varphi(p_k^{r_k})),
\varphi(p^r) = \begin{cases} \varphi(p^r) &\text{, if } p^r = 2,3^r,4,5^r,7^r,11^r,13^r, \dots \\
                        \frac{1}{2} \varphi(p^r) &\text{, if } p^r = 8,16,32,64, \dots
\end{cases}\\
\varphi(n) = n \cdot \prod_{p | n} (1-\frac{1}{p})
$$
We apply integer factorisation to $172872$ and get
$$
172872 = 2^3 \cdot 3^2 \cdot 7^4
$$
thus
$$
\lambda(172872) = \lambda(2^3 \cdot 3^2 \cdot 7^4) = lcm(\lambda(2^3), \lambda(3^2), \lambda(7^4))
$$
we calculate the respective Carmicheal values:
$$
\begin{align}
\lambda(2^3) &= \frac{1}{2} \varphi(2^3) = \frac{1}{2} 4 = 2\\
\lambda(3^2) &= \varphi(3^2) = 6 \\
\lambda(7^4) &= 7^3 \cdot 6 = 2058
\end{align}
$$
$$
lcm(2,6,2058) = 2058
$$

$$
\varphi(172872) = 172872 \cdot (1- \frac{1}{2}) \cdot (1- \frac{1}{3}) \cdot (1- \frac{1}{7}) = \\
= 172872 \cdot \frac{1}{2} \cdot \frac{2}{3} \cdot \frac{6}{7} =
172872 \cdot \frac{2}{7} = 49392
$$

#### 83) Consider an RSA cryptosystem with $n = pq$, $p$ and $q$ being odd primes with $p \neq q$. Let $N_{p,q}$ denote the number of possible pairs $(e,d)$ such that $(e,n)$ and $(d,n)$ are the public and private key respectively. Show that $N_{p,q} = \varphi(\lambda(n))$, where $\lambda$ is the Carmicheal function and $\varphi$ Euler's totient function, and that $2 \leq N_{p,q} \leq \lambda(n)/2$.

By definition we need to choose $e$, coprime to $lcm(p-1,q-1)$. (Since $d$ is the inverse of $e$ in $\mathbb{Z}_{\lambda(pq)}$, each $e$ has a unique $d$, thus we only count possible $e$s.)
Now $\lambda (pq) = lcm(\lambda(p), \lambda(q))$ since $p,q$ are primes.
And by $p,q$ prime, $\lambda(p) = \varphi(p) = p(1- \frac{1}{p})$ = p-1, the same holds for $q$.
Hence, $\lambda(pq) = lcm(p-1,q-1)$ and $\varphi(lcm(p-1,q-1)) counts all integers coprime to $lcm(p-1, q-1)$.
Thus $N_{p,q} = \varphi(\lambda(n))$.

Show that $2 \leq N_{p,q} < \frac{\lambda(pq)}{2}$.
*Counterexample: $p=3, q=5 \Rightarrow \varphi(\lambda (3 \cdot 5)) < \frac{\lambda(3 \cdot 5)}{2} \Rightarrow \varphi(4) < \frac{4}{2} \Rightarrow 2 < 2$*

We instead show: $2 \leq N{p,q} \leq \frac{\lambda(pq)}{2}$, i.e.
$$
2 \leq \varphi(\lambda(pq)) \leq \frac{lcm(p-1,q-1)}{2}
$$

$\varphi(\lambda(pq)) \leq \frac{\lambda(pq)}{2}$
since $\lambda(pq) = lcm(p-1, q-1)$ and $p,q$ are odd primes, $lcm(p-1, q-1)$ is even and has at least prime factor $2$, thus by 3) $\varphi(\lambda(pq)) \leq \lambda(pq) \cdot \frac{1}{2}$.

$2 \leq \varphi(\lambda(pq))$
Assuming $\varphi(\lambda(pq)) = 1$ then by definition of $\varphi$, $\lambda(p,q) = 2$. Hence, by $\lambda(pq) = lcm(p-1, q-1)$, $p-1, q-1 = 2$, i.e. $p = q = 3$.
Contradiction, we conclude $2 \leq \varphi(\lambda(pq)) \leq \frac{\lambda(pq)}{2}$.

#### 84) Show that $m|n$ implies $\lambda(m) | \lambda (n)$ where $\lambda$ denotes the Carmicheal function.

*Hint: Prove first that $a_i | b_i$ for $i = 1, \dots k$ implies $lcm(a_1,a_2,\dots , a_k) | lcm(b_1,b_2, \dots, b_k)$.*

We assume $a_i | b_i$, with $i = 1, \dots, k$.
Thus $\forall i: b_i | lcm(b_1, \dots, b_k)$, and thus by $a_i|b_i$, $a_i|lcm(b_1, \dots, b_k)$ follows.

Let
$$
\dagger := a|b \Leftrightarrow \forall p : v_p(a) \leq v_p(b) \\
\heartsuit := lcm(a,b) = \prod_{p \in \mathbb{P}} \\
\text{,where: } v_p(a) \text{ is the multiplicity of } p \text{ in the factorisation of } n.
$$

Since, forall $i$, $a_i | b_i$, by $\dagger$ every prime factor of $a_i$'s exponent is smaller or equal than $b_i$'s.
By $\heartsuit$, $lcm(a_1, \dots a_k)$ contains the largest of all prime exponents which as shown before are still smaller of equal than the maximum of all primes' exponents in $lcm(b_1, \dots, b_k)$.

Hence, $lcm(a_1, \dots, a_k) | lcm(b_1, \dots, b_k$.
Let $n = \prod_{i = 1}^{r} p_i^{n_i}$ and $m = \prod_{i=1}^r p_i^{n_i}$ and  $m | n$.
Then, $p_i^{m_i} | p_i^{n_i}$ forall $i = 1, \dots, r$, now by the hint we showed to hold and by definition of the Carmicheal function: $\lambda(p_i^{n_i}) = p_i^{n_i-1} (p_i -1)$ all exponents in the prime factorisation of $m$ as well as $n$ are reduced , hence forall $p_i^{m_i}, p_i^{n_i}$ where $p_i^{m_i} | p_i{n_i}$, $\lambda(p_i^{n_i}) | \lambda(p_i^{m_i})$ also holds.

Thus, $lcm(\lambda(p_1^{m1}), \dots, \lambda(p_r^{mr})) | lcm(\lambda(p_1^{n1}) , \dots , \lambda(p_r^{nr}))$, holds by the hint which we proved.

#### 85) Let $\mathbb{Z}[i] = \{a + bi | a,b \in \mathbb{Z}\}$ where $i = \sqrt(-1)$. Show that $\mathbb{Z}[i]$ is a subring of $(\mathbb{C},+,\cdot)$.

$\mathbb{Z}[i]$ is a subring of $(\mathbb{C},+,\cdot)$ if it is a nonempty subset of $\mathbb{C}$ and

$\forall z_1, z_2 \in \mathbb{Z}[i] z_1 - z_2 \in \mathbb{Z}[i]$, and
$z_1 \cdot z_2 \in \mathbb{Z}[i]$, where $z_1 = a_1 + b_1i, z_2 = a_2 + b_2i$.

* $\mathbb{Z}[i]$ is trivially nonempty
* Assume $z_1,z_2 \in \mathbb{Z}[i]$, then
    * $z_1 - z_2$ = $(a_1 + b_1i) - (a_2 + b_2i) = $a_1-a_2 + (b_1 - b_2 i)$ thus the resulting coefficients are both in $\mathbb{Z}[i]$.
    * $z_1 \cdot z_2$ = $(a_1 + b_1i) \cdot (a_2 +b_2i) = a_1a_2 - b1b2 + (a_1b_2 + a_2b1)i$, where, again the resulting coefficients are both in $\mathbb{Z}[i]$.

**Determine its group of units $(\mathbb{Z}[i]^*, \cdot)$**
Let $a+bi$ be a unit in $\mathbb{Z}[i]$, then trivially $a$ and $b$ cannot both be zero.
Additionally $\exists c,d \in \mathbb{Z}$ such that $(a+bi)(c+di) = 1+0i$, meaning
$$
ac + adi + cbi -bd = 1 + 0i
$$
thus $ac-bd = 1$ and $ad +cb = 0$. Hence:
$$
c = \frac{ad}{b} \Rightarrow a(-\frac{ad}{b}) - bd = 1 \Rightarrow a^2d+b^2d = -b \Rightarrow  d = \frac{-b}{a^2+b^2}
$$
now
$$
\frac{a(-\frac{b}{a^2+b^2})}{b} = \frac{\frac{ab}{a^2+b^2}}{\frac{b}{1}} = \frac{ab}{a^2b + b^3} = \frac{a}{a^2+b^2} = c
$$

Now let $n = a^2+b^2$, we know $n >0$ and $n \in \mathbb{Z}$, since $c,d \in \mathbb{Z}$, $n |a$ and $n |b$, there are $x,y \in \mathbb{Z}$ such that $a = nx$ and $b = ny$:
$$
n = (nx)^2 + (ny)^2 \Leftrightarrow n = n2(x^2+y^2) \Leftrightarrow 1 = n(x^2+y^2)
$$
This means, either
* $n = 1$ , or
* (x^2 + y^2) = 1$, w.l.o.g. we assume $x = 0, y = 1$, then $a = 0$ by $nx = a$ and $b = n$ by $ny = b$ but $n = a^2 +b^2 = 0 +n^2$, thus $n = n^2$, meaning $n$ can only be $1$.

Hence, in any case $a^2+b^2 = 1$, meaning either $a^2 = 1, b^2 = 0$ or $a^2 = 0, b^2 = 1$.
We conclude, the units of $\mathbb{Z}[i]$ are $\{1, -1, i, -\}$.

**Is $\mathbb{Z}[i]$ an integral domain?**
Yes, as it is a subring of $(\mathbb{C},+,\cdot)$ and $(\mathbb{C},+,\cdot)$ is an integral domain.

#### 86) Let $(R,+,\cdot)$ be an integral domain. Two elements $a$ and $b$ are associated if there is a unit $r\in R^*$ such that $a = br$. Show that two elements $x,y \in R$ are associated iff $x | y$ and $y | x$.

* $\Rightarrow$: We assume arbitrary $x,y \in R$ that are associated:
    Then $x | y$ trvially, since $rx = y$ by definition. Additionally since $r \in R^*$, we take the multiplicative inverse $r^{-1}$ to show $y|x$, as $x = y \cdot r^{-1}$.

* $\Leftarrow$: We assume arbitrary $x,y \in R$ such that $x|y$ and $y|x$:
    Then, $\exists c_1: x \cdot c_1 = y$ and $\exists c_2: y \cdot c_2 = x$ thus $y = c_1 \cdot c_2$. Since $R$ is an integral domain, we can cancel $y$ and get $1 = c1 \cdot c_2$ therefore $c_1$ and $c_2$ are units as they are each other's multiplicative inverses.

#### 87) Let $(R,+,\cdot)$ be an integral domain. Show that $x \in R$ is a unit iff it is a divisor of every $a \in R$.

* $\Rightarrow$: We assume an arbitrary $x \in R^*$.
    Then $\exists $x^{-1}: x \cdot x^{-1} = 1$. We know $x |y$ in $R$ iff $\exists t \in R : tx = y$.
    Now, forall $a \in R: a = a \cdot x \cdot x^{-1}$.
    Therefore we can satisfy $\exists t \in R : tx = a$, namely $t = a \cdot x^{-1}$, meaning $x|a$ holds for all $a \in R$.
* $\Leftarrow$: We assume an arbitrary $x \in R$ such that $\forall a \in R: x |a$
    This holds specifically for $a = 1$, meaning $x | 1$, this means $\exists t: t \cdot x = 1$ but by definition $t = x^{-1}$. Thus $x$ is a unit.

#### 88) Let $(R,+,\cdot)$ be a Euclidian ring and let its Euclidian function be denoted by $n$. Show that $n(x) = n(1)$ for all units $x$ of $R$.
We recall the properties of $n$ in $R$:
$$
\forall a,b \in R: b \neq 0: \exists q,r \in R:\\
\heartsuit: a = bq+r \text{ with } n(r) < n(b) \text{ or } r = 0\\
\dagger: \quad \forall a,b \in R\backslash \{0\}: n(a) \leq n(ab)
$$

Let $x$ be a unit, then $1 = x \cdot x^{-1}$.
As $1$ divides any element in $R$, $n(1) \leq n(x) = n(1x)$, by $\dagger$.

$x|1$ since $1 = x \cdot x^{-1}$, thus
$n(x) \leq n(x \cdot x ^{-1}) = n(1)$ by $\dagger$ thus $n(x) = n(1)$.


**Prove, moreover, if $x,y \in R$ and $y$ is a unit, then $n(xy) = n(x)$.**
$$
n(x) \leq n(xy)
$$
holds trivially by $\dagger$.

By $y$ unit $y \cdot y^{-1} \cdot x = x$. By $\dagger$:
$$
n(y \cdot x) \leq n(y\cdot x \cdot x^{-1}) = n(x)
$$
Thus $n(xy) = n(x)$.

#### 89) List all irreducible polynomials up to degree $4$ over $\mathbb{Z}_3$.

We recall: *A nonzero, nonunit $a \in R$ is irreducible iff $a=bc$ with $b,c \in R$ means that either $b$ is unit or $c$ is unit.*

All linear polynoms $p \in \mathbb{Z}_3$ are irreducible since one of the factors of $p$ has to be constant and the possible constant factors in $\mathbb{Z}_3$ are $1,2$ which are both unit ($1 \cdot 1 = 1$, $2 \cdot 2 = 1$).

Thus the irreducible polynoms in $\mathbb{Z}_3$ of degree $1$ are: $x, 2x, x+1, x+2, 2x+1, 2x+2$.

For a polynomial $p \in \mathbb{Z}_3$ with degree $>1$, $p$ cannot have a constant factor as we argued before, thus we need to check whether $p$ has a linear factor, i.e. if $p$ has no zeroes.

 A polynomial in $\mathbb{Z}_3$ has no zeroes iff $ax^3 +bx^2 + cx + d \neq 0$, which in turn holds if:

* $d \neq 0$ for the case of $x = 0$
* $a+b+c+d \neq 0$ for the case of $x = 1$
* $2a + b + 2c + d \neq 0$ for the case of $x = 2$

Now, we can generate all irreducible polynomials in $\mathbb{Z}_3$ with degree $geq 2$ by setting all possible values for $a,b,c,d$ such that the conditions are satisfied:

* a = 0, b = 1, c = 0, d = 1: $x^2 + 1$
* a = 0, b = 1, c = 1, d = 2: $x^2 + x + 2$
* a = 0, b = 1, c = 2, d = 2: $x^2 + 2x + 2$
* a = 0, b = 2, c = 1, d = 1: $2x^2 + x + 1$
* a = 1, b = 0, c = 2, d = 1: $x^3 + 2x + 1$
* a = 1, b = 0, c = 2, d = 2: $x^3 + 2x + 2$
* a = 1, b = 1, c = 0, d = 2: $x^3 + x^2 + 2$
* a = 1, b = 1, c = 2, d = 1: $x^3 + x^2 + 2x + 1$
* a = 1, b = 2, c = 0, d = 1: $x^3 + 2x^2 + 1$
* a = 1, b = 2, c = 1, d = 1: $x^3 + 2x^2 + x + 1$
* a = 1, b = 2, c = 2, d = 2: $x^3 + 2x^2 + 2x + 2$
* a = 2, b = 0, c = 1, d = 1: $2x^3 + x + 1$
* a = 2, b = 0, c = 1, d = 2: $2x^3 + x + 2$
* a = 2, b = 1, c = 0, d = 2: $2x^3 + x^2 + 2$
* a = 2, b = 1, c = 1, d = 1: $2x^3 + x^2 + x + 1$
* a = 2, b = 2, c = 0, d = 1: $2x^3 + 2x^2 + 1$
* a = 2, b = 2, c = 1, d = 2: $2x^3 + 2x^2 + x + 2$
* a = 2, b = 2, c = 2, d = 2: $2x^3 + 2x^2 + 2x + 2$

#### 90) Decompose $x^4 + x^3 + 1$ into irreducible factors over $\mathbb{Z}_2$.

We try to find non-unit, i.e. non-constant, factors of $p := x^4 + x^3 + 1$.
Since $p$ has degree $4$ it can either be a product of two quadratic factors or one linear and one cubic factor.
* case 1: $x^4 +x^3 +1 = b \cdot d$ and w.l.o.g. $b$ is linear, we know either
    * $b = x$, but $\frac{x^4 +x^3 +1}{x}$ does not result in an element from $\mathbb{Z}_2$, or
    * $b = x+1$ but again $\frac{x^4 +x^3 +1}{x}$ does not result in an element from $\mathbb{Z}_2$.
* case 2: $x^4 +x^3 +1 = b \cdot d$ where $b$ and $d$ are quadratic, irreducible polynomials, these are
    * $x^2+1$ but $x^2+1$ does not divide $p$ cleanly in $\mathbb{Z}_2$.
    * $x^2+x+1$ but this does not divide $p$ either.

We conclude, there exists no factorisation of $x^4+x^3+1$ in $\mathbb{Z_2}$.
