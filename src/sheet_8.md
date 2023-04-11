# Exercise Sheet 8

#### 71) Let $(F)_{n \geq 0}$ be the Fibonacci sequence, i.e. $F_0 = 0, F_1 = 1, F_{n+1} = F_n + F_{n-1}$. Prove $gcd(F_{n+2}, F_n) = 1$.
We proceed by induction:

* Base case: 
    $F_2 = F_1 + F_0 = 0 + 1 = 1$ and $gcd(F_2, F_0) = 1$ since $gcd(1,0) = 1$.

* IH: $gcd(F_{n+2}, F_n) = 1$ holds for $n \in \mathbb{N}$.

* Induction step:
    We are now interested in $gcd(F_{n+3}, F_{n+1})$ which is equivalent to $gcd(F_{n+2} + F_{n+1}, F_{n+1})$ and since $gcd(a+bm, b) = gcd(a,b)$, $gcd(F_{n+2} + F_{n+1}, F_{n+1}) = gcd(F_{n+2}, F_{n+1})$. This again is equivalent to $gcd(F_{n+1} + F_{n}, F_{n+1})$ and by the same argument as before $gcd(F_{n+1} + F_{n}, F_{n+1}) = gcd(F_n, F_{n+1})$ which is equivalent to $gcd(F_n, F_{n+1} + F_n)$ by the same argument again, which is $gcd(F_n, F_{n+2})$ by definition of the Fibonacci sequence, thus $gcd(F_{n+3},F_{n+1}) = gcd(F_n, F_{n+2})$ which is 1 by IH.
    
#### 72) Prove that there exist infinitely many primes which are solutions of the equation $p \equiv 3$ mod $4$.

Proof by contradiction: 
Assume there are only finitely many such primes:
$$
\mathcal{p}_1, \dots \mathcal{p}_n \text{ for some } n \in \mathbb{N}$. 
$$
We consider the number:
$$
x = 4\mathcal{p_1}\cdot \mathcal{p}_2 \cdots \mathcal{p_n} -1
$$
We distinguish as follows
* case 1: x is prime
    by definition of $\mathcal{p}_1, \dots \mathcal{p}_n$, 
    $4 \mathcal{p_1}\cdot \mathcal{p}_2 \cdots \mathcal{p_n}  \equiv 0$ mod $4$, therefore
    $4 \mathcal{p_1}\cdot \mathcal{p}_2 \cdots \mathcal{p_n} -1 \equiv 3$ mod $4$. 
    Now, since $x$ is prime, there are $n+1$ primes which satisfy the equation. Contradiction!

* case 2: x is not prime
    Then, there exist $q_1, \dots , q_m$, such that $q_i \in \mathbb{P}$, where $1 \leq i \leq m$ and $q_1 \cdot q_2 \cdots q_m = x$.
    $x$ has to be odd, since $x \equiv 3$ mode $4$, thus $q_i \neq 2$ holds for all $1 \leq i \leq m$. 
    There has to be some $q_i$ such that $q_i \equiv 3$ mod $4$, else $\forall j: q_j \equiv 1$ mod 4 would have to hold, thus $x \equiv 1$ mod $4$ would have to hold.
    
    Now, $q_i \neq p_j$ holds forall $1 \leq j \leq n$, else $\exists j$ such that $q_i = p_j$, thus $q_i |x$ (by definition of $q_i$) and $q_i | x+1$ since $pj | x+1$.

    Therefore, there exist $n+1$ primes which satisfy the equation namely $\mathcal{p}_1, \dots \mathcal{p}_n$ and $q_i$.
    
#### 73) Find (without using a computer) the last two digits of $2^{1000}$.

We can find the last two digits by:
$$
2^{1000} \text{ mod } 100
$$

We cannot apply Euler's theorem since $gcd(2,100) \neq 1$. 
But $gcd(25,2) = 1$ and $\varphi(25) = 20$.
So: 
$$
2^{20} \equiv 1 \text{ mod } 25
$$
therefore
$$
(2^{20})^{50} \equiv 1^{50} \text{ mod } 25
$$
Additionally we know $2^2 + 2^{998}$ and $2^2 = 0$ mod $4$.
We can therefore define the following system of congruence equations:
$$
2^{1000} \equiv 0 (4) \\
2^{1000} \equiv 1 (25)
$$
We can then apply the Chinese Remainder Theorem to find $2^{1000}(100)$, i.e. $2^{1000}(4 \cdot 25)$.

We remind ourselves of the Chinese Remainder Theorem:
$$
x \equiv \sum_{j=1}^{r} \frac{m}{m_j} \cdot bj a_j (m) \text{, with } b_j = (\frac{m}{m_j})^{-1} (m_j)
$$

We apply $x = 2^{1000}, a_1 = 0, a_2 = 1, m = 100, m_1 = 4, m_2 = 25$: 
$$
2^{1000} \equiv \frac{100}{25} \cdot 19 \cdot 1 (100) + \frac{100}{4} \cdot 1 \cdot 0 (100)
$$
$$
2^{1000} \equiv 4 \cdot 19 (100) 
$$
$$
2^{1000} \equiv 76 (100) 
$$
Hence the last two digits are $76$.

#### 74) Consider the ring $\mathbb{Z}[i] = \{a + b_i | a,b \in \mathbb{Z} \}$ (addition and multiplication taken from $\mathbb{C}$) and determine a $gcd(19 + 5i, 16-6i)$.

*Hint: you may assume without proof, that $\mathbb{Z}[i]$ with $n(a+bi) = a^2 + b^2$ is a Euclidian ring. Now find $q,r$ in $u = qv + r$ by determining $\frac{u}{v}$ in $\mathbb{Z}[i]$ and rounding real and imaginary part.*

We apply the Euclidian algorithm, since $\mathbb{Z}[i]$ is a Euclidian ring. 

$$
\begin{align}
19 + 5i &= (1+i) (16 -6i) + (-3-5i)\\
16 - 6i &= (-1 + 3i) \cdot (-3i -5i) + (-2-2i)\\
-3i - 5i &= (2+i) \cdot (-2-2i) + (-1+i)\\
-2-2i &= (0 + 2i) \cdot (-1 + i) + 0
\end{align}
$$

Thus $-1+i$ is a gcd of $19+5i$ and $16-6i$. 

#### 75) Which of the following mappings is well defined?
a) $f : \mathbb{Z}_m \rightarrow \mathbb{Z}_m, \bar x \mapsto \bar{x^2}$ 
    We show $f$ is well defined by showing that for any $x,y$ with $\bar x \equiv \bar y$, $\bar{x^2} \equiv \bar{y^2}$ holds.
    We thus assume
    $\bar x \equiv \bar y$, i.e. $\exists k (x = km +y)$.
    We compute an $l$ such that $x^2 = lm + y^2$.
    Since we know $x = km +y$ for some $k$, we can write: 
    $$
    (km + y)^2 = lm +y^2\\
    (km)^2 + 2kmy + y^2 = lm +y \\
    (km)^2 + 2kmy = lm \\
    k^2m+2ky = l
    $$
    Since we computed an $l$ such that $x^2 = lm+y$, we have shown $\bar{x^2} \equiv \bar{y^2}$ for any $x,y$, such that $\bar x \equiv \bar y$.

b) $g: \mathbb{Z}_m \rightarrow \mathbb{Z}_m$, $\bar x \mapsto \bar{2^x}$
    For all $m > 1$, $\bar0 = \bar m$ but $\bar{2^0} = \bar 1$ and $\bar{2^m} \neq \bar 1$, thus $\bar{2^0} = \bar 1$ and $\bar{2^m} \neq \bar 1$, thus $\bar{2^0} \neq \bar{2^m}$, but $\bar0 = \bar m$.
    
#### 76) Use the Chinese remainder theorem to solve the following system of congruence relations:
$$
3x \equiv 12(13) \mathit{\dagger}, \quad 5x \equiv 7(22)\clubsuit, \quad 2x \equiv 3 (7) \heartsuit.
$$
* $\dagger$: we can divide $3$ and $12$ by $3$, $13$ remains as $ggT(13,3) = 1$.
* $\clubsuit$: we calculate times $9$ since $5^{-1} = 9$ in $\mathbb{Z}_{22}$
* $\heartsuit$: times $4$ since $2^{-1} = 4$ in $\mathbb{Z}_7$
Thus we get:
$$
x \equiv 4(13) \mathit{\dagger}, \quad x \equiv 19(22)\clubsuit, \quad x \equiv 5 (7) \heartsuit.
$$
Now since, $ggT(13,22) = ggT(13,7) = ggT(22,7) = 1$, 
we can apply the Chinese Remainder Theorem:
$$
\begin{align}
x \equiv &\frac{2002}{13} \cdot b_1 \cdot 4 \ (2002) \ + \\
&\frac{2002}{22} \cdot b_2 \cdot 19 \ (2002) \ + \\
&\frac{2002}{7} \cdot b_3 \cdot 5 \ (2002)
\end{align}
$$
where 
$$
\begin{align}
b_1 &= (\frac{2002}{13})^{-1} (13) = 154^-1 (13)  = 6\\
b_2 &= (\frac{2002}{22})^{-1} (22) = 91^{-1} (22) = 15\\
b_3 &= (\frac{2002}{7})^{-1} (7) = 286^{-1} (7) = 6
\end{align}
$$
thus
$$
\begin{align}
x &\equiv 154 \cdot 6 \cdot 4 + 91 \cdot 15 \cdot \cdot 19 + 286 \cdot 6 \cdot 5 \ (2002) \\
x &\equiv 173 \ (2002)
\end{align}
$$

#### 76) Use the Chinese Remainder Theorem to solve the following system of congruence relations:
$$
5x \equiv 8(32) \mathit{\dagger}, 
\quad 14x \equiv 2(22)\clubsuit, 
\quad 9x \equiv 3 (15) \heartsuit.
$$
* $\dagger$: we calculate times $13$ since $5^{-1} = 13$ in $\mathbb{Z}_{32}$
* $\clubsuit$: we divide by $2$, then  calculate times $8$ since $7^{-1} = 7$ in $\mathbb{Z}_{11}$
* $\heartsuit$: we divide by $3$, then calculate times $2$ since $3^{-1} = 2$ in $\mathbb{Z}_5$

$$
x \equiv 8(32) \mathit{\dagger}, 
\quad x \equiv 8(11)\clubsuit, 
\quad x \equiv 2 (5) \heartsuit.
$$

Since $gcd(32,11) = gcd(11,5) = gcd(32,5) = 1$, we apply the CRT with $m = 32 \cdot 11 \cdot 5 = 1760$.

$$
\begin{align}
x \equiv &\frac{1760}{32} \cdot b_1 \cdot 8 \ (1760) \ + \\
&\frac{1760}{11} \cdot b_2 \cdot 8 \ (1760) \ + \\
&\frac{1760}{5} \cdot b_3 \cdot 2 \ (1760)
\end{align}
$$
where 
$$
\begin{align}
b_1 &= (\frac{1760}{32})^{-1} (32) = 55^-1 (32)  = 7\\
b_2 &= (\frac{1760}{11})^{-1} (11) = 160^{-1} (11) = 2\\
b_3 &= (\frac{1760}{5})^{-1} (5) = 352^{-1} (5) = 3
\end{align}
$$
thus 
$$
\begin{align}
x \equiv &55 \cdot 7 \cdot 8 \ (1760) \ + \\
&160 \cdot 2 \cdot 8 \ (1760) \ + \\
&352 \cdot 3 \cdot 2 \ (1760)
\end{align}
$$
$$
\begin{align}
x \equiv 3080 + 2560 + 2112 \equiv 712 \ (1760)
\end{align}
$$

#### 78) Let $(n,e) = (3233,49)$ be a public RSA key. Compute the decryption key $d$.

We know $d = 49^{-1} (v)$, where $v = lcm(p-1, q-1) = \frac{(p-1)(q-1)}{gcd(p-1,q-1)}$.
And we know $n = q\cdot p= 3233$, where $p,q \in \mathbb{P}, q \neq 2, p \neq 2$ and $p \neq q$. 

We simply try primes and divide $3233$ by them, checking whether the resulting number is prime.

We get: $3233 = 53 \cdot 61$.

We then calculate $gcd(52,60)$ by the Euclidian algorithm:
$$
\begin{align}
60 &= 52 \cdot 1 + 8\\
52 &= 8 \cdot 6 + 4\\
8 = 4 \cdot 2 + 0
\end{align}
$$

Hence, $\frac{52 \cdot 60}{4} = 780$.
Therefore, $d = 49^{-1} (780)$, meaning 
$$
d \cdot 49 \equiv 1 (780)
$$
we conclude $d = 589$.

#### 79) Use the key of exercise 78) to encrypt the string $\mathtt{"COMPUTER"}$. Decompose the string into blocks of length $2$ and apply the mapping $\mathtt{A} \mapsto 01, \mathtt{B} \mapsto 02, \dots \mathtt{Z} \mapsto 26$.
$$
\mathtt{CO} \mapsto 0315, \quad 0315^{49} \ (3233) = 2701 \\
\mathtt{MP} \mapsto 1316, \quad 1316^{49} \ (3233) = 2593 \\
\mathtt{UT} \mapsto 2120, \quad 2120^{49} \ (3233) = 0371 \\
\mathtt{ER} \mapsto 0518, \quad 0518^{49} \ (3233) = 1002 \\
$$
Thus the encrypted string is: $2701 2593 0371 1002$.

#### 80) Let $(e,n)$ and $(d,n)$ be Bob's public and private RSA key, respectively. Suppose that Bob receives an encrypted message $c$ which is also caught by an eavesdropper. The eavesdropper wants to find out the original message $m$ and has the idea to send Bob a message and ask him to sign it. How can this idea be used to find out $m$?

*Hint: Pick a random integer $r$ and consider the message $r^{e}c$ mod $n$.*

We choose an arbitrary integer $r$, such that $gcd(r,n) = 1$ consider the message $x = r^{e} \cdot c \ (n)$.

We know for any $a_j$, $a_j \equiv a_j^{e \cdot d} \ (n)$, $E(a_j) = (a_j \text{ mod } n)$, and $D(b_j) = (b_j^d \text{ mod } n)$. 

The signed message from bob is then of the form:
$$
x^d \equiv (r^{e} \cdot c)^d \equiv (r^{e})^d \equiv c^d \equiv r \cdot c^d \ (n)
$$
we simply need to calculate $x \cdot r^{-1}$ to get $c^d$, which in turn we can use to calculate $m(n)$. Note, that $x \cdot r^{-1}$ exists since we chose $r$ such that $gcd(r,n) = 1$.



