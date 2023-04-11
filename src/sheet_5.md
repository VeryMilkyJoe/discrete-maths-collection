# Exercise Sheet 5

#### 41) Let $s_{n,k}$ be the Stirling numbers of the first kind. Prove $s_{n,2} = (n-1) H_{n-1}$ for $n \geq 2$, where $H_n = \sum_{k=1}^n \frac{1}{k}$.

By definition: $s_{n,k} = s_{(n-1, k-1)} + (n-1) s_{(n-1,k)}$

We proceed by induction on $n$:
    * Base case: $n=2$, then $s_(2,2) = 1! H_1 \Leftrightarrow 1 = 1$
    * Induction Hypothesis: $s_{(n,2)} = (n-1)! H_{n-1}$
    * Induction step: 
        $$
        s_{(n+1,2)} = n! H_n \Leftrightarrow s_{(n,1)} + n s_{(n,2)} = n! H_n \Leftrightarrow
        $$
        by IH and $s_{(n,1)} = (n-1)(n-2) \times \dots \times 1$
        $$
        \Leftrightarrow (n-1)! + n (n-1)! H_{n-1} = n! H_n \Leftrightarrow (n-1)! + n! H_{n-1} = n! H_n \Leftrightarrow
        $$
        now we divide by $n!$
        $$
        \Leftrightarrow \frac{1}{n} + H_{n-1} = H_n \Leftrightarrow \frac{1}{n} + \sum_{k=1}^{n-1} \frac{1}{k} = H_n \Leftrightarrow \sum_{k=1}^{n} \frac{1}{k} = H_n \Leftrightarrow H_n = H_n
        $$
        
#### 42) Let $S_{n,k}$ be the Stirling numbers of the second kind, that is, the number of partitions of the set $\{1,2, \dots, n\}$ into $k$ (non-empty subsets). Set $F_k(x) := \sum_{n \geq k} S_{n,k} x^n$. Prove that: 
$$
F_1(x) = \frac{x}{1-x}
$$

First, $S_{(n,1)} = 1$ since there is only one way to partition a set into size $1$ subsets.
Thus:
$$
F_1 (x) = \sum_{n \geq 1} x^n = x \sum_{n \geq 0} x^n = x \frac{1}{1-x} = \frac{x}{1-x}
$$

**and**
$$
F_2(x) = \frac{x^2}{(1-x)(1-2x)}
$$

$$
F_2(x) = \sum_{n \geq 2} S_{n,2} x^n = \sum_{n \geq 2} (2^{n-1} - 1) x^n = \sum_{n \geq 2} 2^{n-1} x^n - x^n =
$$
we apply an index shift
$$
= \sum_{n \geq 1} 2^nx^{n+1} - x^{n+1} = (\sum_{n \geq 1} 2^n x^{n+1})^\dagger - (\sum_{n \geq 1} x^{n+1})^\heartsuit =
$$
$$
= \frac{2x^2}{1-2x} - \frac{x^2}{1-x} = \frac{2x^2(1-x)}{(1-2x)(1-x)} - \frac{2x^2-2x^3-x^2+2x^3}{(1-2x)(1-x)} = \frac{x^2}{(1-x)(1-2x)},
$$
where
$$
\dagger = \sum_{n \geq 1} x^{n+1} = x^2 \sum_{n \geq 0} x^n = x^2 \frac{1}{1-x} = \frac{x^2}{1-x}
$$
and
$$
\heartsuit =  \sum_{n \geq 1} 2^n x^{n+1} = 2x^2 \sum_{n \geq 0} 2^n x^n = 2x^2 \frac{1}{1-2x} = \frac{2x^2}{1-2x}
$$
**Furthermore, show that the functions $F_k(x)$ satisfy the recurrence relation $F_k(x) = \frac{x}{1-kx}F_{k-1}(x)$** 
we start with the right hand side:
$$
\frac{x}{1-kx}F_{k-1}(x) = \frac{x}{1-kx} \sum_{n \geq k-1} S_{n,k-1} x^n =
$$
we replace by the series for the generating function:
$$
x \sum_{n \geq 0} k^n x^n \sum_{n \geq k-1} S_{n,k-1} x^n =
$$
we apply the cauchy product with $a_i = S_{i,k-1}, b_j = k^j$
$$
x \sum_{n \geq k-1} \sum_{i=k-1}^n S_{i, k-1} k^{n-i} x^n =
$$
drag the x into the sum and use the lemma: $S_{n+1,k+1} = \sum_{j=k}^n (k+1)^{n-j} S_{j,k}$
$$
\sum_{n\geq k-1} S_{n+1,k} x^{n+1}=
$$
we apply an index shift in the sum
$$
\sum_{n \geq k} S_{n,k} x^n
$$

**and solve the recurrence.**
Starting with:
$$
F_k(x) = \frac{x}{1-kx} F_{k-1}(x)
$$
we substitute repeatedly:

$$
F_k(x) = \frac{x}{1-kx} \frac{x}{1-(k-1)x}  F_{k-2}(x)
$$
we apply the substitution until the last term $F_1$
$$
F_k(x) = \frac{x^{k-1}}{(1-kx)(1-(k-1)x) \cdots (1-2x)} F_1(x)
$$
we substitute the definition of $F_1 = \frac{x}{1-x}$ and multiply it into the term.
$$
F_k(x) = \frac{x^{k}}{(1-kx)(1-(k-1)x)\cdots (1-2x) (1-x)} 
$$
#### 43) Prove the following identity:
$$
x^n = \sum_{k=0}^{n} S_{n,k} (x)_{k} \quad (n \geq 0)
$$
We proceed by induction:
* Base case: $n=1$
$$
x^1 = S_{1,0} (x)_0 + S_{1,1} (x)_1 = 0 + 1 \times x
$$

* Induction hypothesis:
For any case $n=1, i \in \mathbb{N}$:
$$
x^n = \sum_{k=0}^n S_{n,k}(x)_k
$$

* Induction step:
We show that the statement holds by starting with the left hand side
$$
x^n = x \times x^{n-1} =
$$
Let $i = n-1$, we apply the induction step for $i+1=n$:
$$
= x \sum_{k=0}^{n-1} S_{n-1,k} (x)_{k} = 
$$
we start the sum at 1 since $S_{n-1,0}$, thus the first summand does not affect the sum's value 

$$
= \sum_{k=1}^{n-1}S_{n-1,k} (x)_k x =
$$

by $x_{k+1} = x_k (x-k) = x \times x_k - kx_k$ we get $x \times x_k = x_{k+1} + k x_k$ by transforming the equation, which we can apply as follows:

$$
= \sum_{k=1}^{n-1} S_{n-1,k}( (x)_{k+1} + k(x)_k ) = \sum_{k=1}^{n-1} S_{n-1,k} (x)_{k+1} +  S_{n-1,k} k(x)_k  = \sum_{k=1}^{n-1} S_{n-1,k} (x)_{k+1} + \sum_{k=1}^{n-1} S_{n-1,k} k (x)_k =
$$
let $k' = k+1$, we set $k+1 = k'$:
$$
= \sum_{k'=2}^{n} S_{n-1,k'-1} (x)_{k'} + \sum_{k=1}^{n-1} S_{n-1,k} k (x)_k =
$$
since $S_{n-1,0} = S_{n-1,n} = 0$:
$$
= \sum_{k=1}^{n} S_{n-1,k-1} (x)_{k} + \sum_{k=1}^{n} S_{n-1,k} k (x)_k = \sum_{k=1}^{n} S_{n-1,k-1} (x)_{k} + k S_{n-1,k} (x)_k = \sum_{k=1}^{n} (S_{n-1,k-1} + k S_{n-1,k}) (x)_k =
$$
this is the definition of the recurrence relation of the Stirling numbers of the second kind:
$$
= \sum_{k=1}^{n} S_{n,k} (x)_k = \sum_{k=0}^{n} S_{n,k} (x)_k
$$

#### 44) Let $A,B$ be two finite sets with $|A| = n$ and $|B| = k$. How many injective mappings $f: A \rightarrow B$ are there?

We assume $k \geq n$ since otherwise no mapping is possible. For the first element in $n$, there are $k$ possibilities. 
For the second one, $k-1$, etc...
For the last element in $n$ there are still $k-(n-1)$ choices, thus we have $k(k-1)\times \dots \times (k-n+1)$ mappings, this is the falling factorial $k^{\underline{n}}$ which surmounts to 
$$
\frac{k!}{(k-n)!}
$$
**Furthermore, show that the number of surjective mappings $f: A \rightarrow B$ equals $k!S_{n,k}$.**

Assume $n \geq k$, otherwise no such mapping is possible. 
We want all possible partitions of $A$ into $k$ non-empty subsets which are calculated by $S(n,k)$. For each of these non-empty partitions of elements in $A$ we select one item in $B$ for the elements in the subset of $A$ to map to.
For the first partition we have $k$ options from $B$, $k-1$ for the second, etc. and for the last element in $B$, 1 option remains. Thus $k!$ options per partitioning exist, i.e. $k!S_{n,k}$.

#### 46) Compute:
$$
a_n = \sum_{k=0}^{n} k^2
$$
using generating functions:
Firstly, we know:
$$
\sum_{n \geq 0} z^n = \frac{1}{1-z}
$$
we take the derivative, applying the quotient rule and the chain rule
$$
\sum_{n \geq 0} n z^{n-1} = \frac{1'(1-z) - 1(1-z)'}{(1-z)^2}
$$
$$
\sum_{n \geq 0} n z^{n-1} = \frac{0 - (-1)}{(1-z)^2}
$$
we multiply by $z$ in order to preserve $z^n$ on the left side
$$
\sum_{n \geq 0} n z^{n} = \frac{z}{(1-z)^2}
$$
we take the derivative, again applying quotient and chain rule
$$
\sum_{n \geq 0} n^2 z^{n-1} = \frac{z'(1-z)^2 - z ((1-z)^2)'}{(1-z)^4}
$$
$$
\sum_{n \geq 0} n^2 z^{n-1} = \frac{(1-z)^2 +2z(1-z)}{(1-z)^4}
$$
$$
\sum_{n \geq 0} n^2 z^{n-1} = \frac{1-z+2z}{(1-z)^3}
$$
$$
\sum_{n \geq 0} n^2 z^{n-1} = \frac{1+z}{(1-z)^3}
$$
we multiply by $z$
$$
\sum_{n \geq 0} n^2 z^{n} = \frac{z+z^2}{(1-z)^3}
$$
Now, let $\tilde F(z)$ be the generating function for coefficient $n^2$, of which we just calculated the generating function.
We take the sum with coefficient $1$ of which we know the GF ($\frac{1}{1-z}$) and apply the cauchy product:
$$
\sum_{i \geq 0} i^2z^n \times \sum_{j \geq 0} z^n = \sum_{n \geq 0} \sum_{k=0}^{n} k^2 z^n 
$$
Therefore:
$$
\tilde F(z) \times \frac{1}{1-z} = F(z)
$$
we substitute the previously calculated GF of $\tilde F(z)$
$$
F(z) = \frac{z+z^2}{(1-z)^3}\times \frac{1}{1-z} = \frac{z+z^2}{(1-z)^4}
$$
Now we want to compute $[z^n]F(z)$, i.e.
$$
[z^n]\frac{z+z^2}{(1-z)^4}
$$
$$
[z^n]\frac{z}{(1-z)^4} + [z^n]\frac{z^2}{(1-z)^4}
$$
we apply an index shift, to remove the $z$ and $z^2$ respectively
$$
[z^{n-1}]\frac{1}{(1-z)^4} + [z^{n-2}]\frac{1}{(1-z)^4}
$$
$$
[z^{n-1}] (1-z)^{-4} + [z^{n-2}] (1-z)^{-4}
$$
we apply the generalised binomial theorem
$$
[z^{n-1}] \sum_{n \geq 0} \binom{-4}{n}(-1)^{-4-n}+z^n + [z^{n-2}] \sum_{n \geq 0} \binom{-4}{n}(-1)^{-4-n}+z^n
$$
now for the coefficient extraction we put in the respective indices
$$
\binom{-4}{n-1}(-1)^{-4-n-1} + \binom{-4}{n-2}(-1)^{-4-n-2}
$$
we apply some arithmetic equalities regarding the powers of $-1$
$$
\binom{-4}{n-1}(-1)^{n-1} + \binom{-4}{n-2}(-1)^{n-2}
$$
when writing out the respective quotients, we can drag the factors $-1$ into the quotients
$$
\frac{(-4)(-5) \dots (-4-(n-2)) (-1)^{n-1}}{(n-1)! } + \frac{(-4)(-5) \dots (-4-(n-3)) (-1)^{n-2}}{(n-2)!} =
$$
$$
= \frac{(4)(5) \dots (n - 2 + 4)}{(n-1)!} + \frac{(4)(5) \dots (n - 3 + 4)}{(n-2)!} = \frac{(4)(5) \dots (n + 2)}{(n-1)!} + \frac{(4)(5) \dots (n + 1)}{(n-2)!} = 
$$

$$
= \binom{n+2}{3} \binom{n+1}{3} = \frac{(n+2)(n+1)n + (n+1)n(n-1)}{3!} = \frac{(2n+1)(n+1)n}{3!}
$$

#### 48) Prove the following identity: 
$$
\sum_{n \geq 0} \binom{2n}{n}z^n = \frac{1}{\sqrt{1-4z}}.
$$

We start with the right hand side:

$$
\frac{1}{\sqrt{1-4z}} = (1-4z)^{-\frac{1}{2}} = 
$$
by the generalised binomial theorem with $x = 1$ and $y=-4z$, since $x$ is $1$, only $y$ is considered. 
$$
= \sum_{n=0}^{\infty} \binom{-\frac{1}{2}}{n} (-4z)^n = \sum_{n=0}^{\infty} \binom{-\frac{1}{2}}{n} (-4)^n z^n =
$$
again, by the theorem to handle $-\frac{1}{2}$ in the upper index
$$
= \sum_{n=0}^{\infty} \frac{-\frac{1}{2} * (-\frac{1}{2} - 1) \times \dots \times (-\frac{1}{2} - n +1)}{n!} (-4^n) z^n =
$$
we extract (-\frac{1}{2}^n) from each factor
$$
= \sum_{n=0}^{\infty} (-4)^n (-\frac{1}{2}^n) \frac{1 \times 3 \times (2n - 1)}{n!} z^n = 
$$
all odds as factorials are $!!$
$$
= \sum_{n=0}^{\infty} 2^n \frac{(2n-1)!!}{n!} z^n = 
$$
since $(2n-1)!! = \frac{(2n)!}{2^n n!}$ by definition
$$
\sum_{n=0}^{\infty} 2^n \frac{\frac{(2n)!}{2^n n!}}{\frac{n!}{1}} z^n = \sum_{n=0}^{\infty} 2^n \frac{(2n)!}{2^n n! n!} z^n = \sum_{n=0}^{\infty} \binom{2n}{n} z^n
$$

#### 49) Compute
$$
[z^n] \frac{2+5z}{\sqrt{1-8z}}
$$
where $[z^n]\sum_{n \geq 0} a_n z^n := a_n$ is the coefficient extraction operator.
$$
\frac{2+5z}{\sqrt{1-8z}} = (2+5z^2) \frac{1}{\sqrt{1-8z}} =
$$
we apply the generalised binomial theorem for $(1-8z)^{-0.5}$
$$
= (2+5z^2) \sum_{k=0}^{\infty} \binom{-0.5}{k} (-8z)^k = (2+5z^2) \sum_{k\geq 0} \binom{-0.5}{k} (-1)^k 8^k z^k =
$$
$$
= 2 \sum_{k\geq 0} \binom{-0.5}{k} (-1)^k 8^k z^k + 5z^2 \sum_{k\geq 0} \binom{-0.5}{k} (-1)^k 8^k z^k =
$$

$$
= 2 \sum_{k\geq 0} \binom{-0.5}{k} (-1)^k 8^k z^k + 5 \sum_{k\geq 0} \binom{-0.5}{k} (-1)^k 8^k z^{k+2} =
$$
but we want $z^k$ for coefficient extraction

$$
= 2 \sum_{k\geq 0} \binom{-0.5}{k} (-1)^k 8^k z^k + 5 \sum_{k\geq 2} \binom{-0.5}{k-2} (-1)^{k-2} 8^{k-2} z^{k} =
$$
we want the same indices in both sums so we extract the first two elements on the left sum
$$
= 2 + 8z + (2 \sum_{k\geq 2} \binom{-0.5}{k} (-1)^k 8^k z^k + 5 \sum_{k\geq 2} \binom{-0.5}{k-2} (-1)^{k-2} 8^{k-2} z^{k}  =
$$

$$
= 2 + 8z + \sum_{k\geq 2} \left(\binom{-0.5}{k} (-1)^k 8^k 2 \right) + \left( \binom{-0.5}{k-2} (-1)^{k-2} 8^{k-2} 5 \right) z^{k}  =
$$
therefore (since $(-1)^k = (-1)^{k-2}$):
$$
[z^n]= \begin{cases}
      2, & \text{if}\ k=0 \\
      8, & \text{if}\ k=1 \\
      \left(\binom{-0.5}{k} (-1)^k 8^k 2 \right) + \left( \binom{-0.5}{k-2} (-1)^{k} 8^{k-2} 5 \right)  &  \text{if}\ k \geq 2
\end{cases}
$$
#### 50) Solve the following recurrence using generating functions.

$a_{n+1} = 3 a_n -2$, for $n \geq 0, a_0 = 2$

$$
\sum_{n=0}^{\infty} a_{n+1} z^{n+1} = 3 \sum_{n=0}^{\infty} a_{n} z^{n+1} - 2 \sum_{n=0}^{\infty} z^{n+1} \Leftrightarrow
$$
we want $z^n$ in all of our sums
$$
\Leftrightarrow \sum_{n=1}^{\infty} a_{n} z^{n} = 3z \sum_{n=1}^{\infty} a_{n} z^{n} - 2z \sum_{n=0}^{\infty} z^{n} \Leftrightarrow
$$
we can transform the sums to their respective generating functions on the right side, the first sum is simple, for the second we need to consider that $a_n = 1$ so the generating function is $\frac{1}{1-z}$
$$
\Leftrightarrow (\sum_{n=1}^{\infty} a_{n} z^{n}) + a_0z^0 - a_0z^0 = 3z F(z) - 2 \frac{z}{1-z} \Leftrightarrow
$$
now we want each sum to start at $0$, so we add the $0$th summand to the left sum
$$
\Leftrightarrow (\sum_{n=1}^{\infty} a_{n} z^{n}) + a_0z^0 - a_0z^0 = 3z F(z) - 2 \frac{z}{1-z} \Leftrightarrow
$$
we can drag the $0$-th summand into the sum, to shift the index
$$
\Leftrightarrow (\sum_{n=0}^{\infty} a_{n} z^{n}) - a_0z^0 = 3z F(z) - 2 \frac{z}{1-z} \Leftrightarrow
$$
we again replace by the generating function
$$
\Leftrightarrow F(z) - a_0 = 3z F(z) - 2 \frac{z}{1-z} \Leftrightarrow  $$

$$
\Leftrightarrow F(z) - 3z F(z) =  - 2 \frac{z}{1-z} + a_0 
$$

$$
\Leftrightarrow F(z) - 3z F(z) = - \frac{2z}{(1-z)(1-3z)} + \frac{a_0}{1-3z} \Leftrightarrow
$$
we apply partial fraction decomposition
$$
\Leftrightarrow F(z) =  \frac{1}{1-z} - \frac{1}{1-3z} + \frac{a_0}{(1-3z)} \Leftrightarrow
$$
$$
\Leftrightarrow F(z) =  (a_0  - 1) \frac{1}{(1-3z)} + \frac{a_0}{(1-3z)} \Leftrightarrow
$$
$$
\Leftrightarrow F(z) =  (a_0  - 1) \sum_{n=0}^{\infty} 3^n z^n + \sum_{n=0}^{\infty} z^n \Leftrightarrow
$$
$$
\Leftrightarrow F(z) = \sum_{n=0}^{\infty} (((a_0  - 1)3n)+1) z^n
$$