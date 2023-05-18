# Exercise Sheet 10

#### 91) Let $K$ be a field and $p(x) \in K[x]$ a polynomial of degree $m$. Prove that $p(x)$ cannot have more than $m$ zeros in $K$ (counted with multiplicities).
*Hint: Use the fact that $K[x]$ is a factorial ring.*

Firstly we recall:
$$
\begin{align}
p(a) = 0 &\ \Leftrightarrow (x-a) | p\\
\text{"$a$ has an $n$-fold zero"} &:\Leftrightarrow (x-a)^n | p
\end{align}
$$

By $K[x]$ being a factorial ring, $p$ can be written as:
$$
p = u \prod_i p_i, \quad i \geq 0
$$
We can partition this product as follows:
$$
p = u \prod_i (x-a_i)^{ni} \cdot \prod q
$$
where the left product represents the product of all $n$-fold zeros of $p$, where each $(x-a_i)$ is irreducible and the right product represents the remaining factors of $p$.
Additionally,
$$
\prod_i (x-a_i)^{ni} | p
$$
by construction. Hence, the degree of the left side has to be smaller or equal to the degree of the right side, otherwise $p$ would be zero. This means the degree of the left side is smaller or equal to $m$. Since the left side represents the amount of zeros in $p$ this means the number of zeros in $p$ has to be less or equal to $m$.

#### 92) Let $R$ be a ring and $(I_j)_{j \in J}$ be a family of ideals of $R$. Prove that $\bigcap_{j \in J} I_j$ is an ideal of $R$.

We recall:
I is an ideal of $R$ iff:
1) $I \neq \emptyset$: Since $0$ is contained in any ideal by definition, it will also be in the cut of ideals.

3) $\forall x,y \in I: x -y \in I$:
    Since $\forall j \in J: I_j$ is an ideal: by definition of the cut operation $\forall a,b \in I_j$, $a +(-b) \in I_j$ as $I_j$ is an ideal.
    As this holds for any $I_j$, $a+ (-b) \in I$.
5) $\forall i \in I, r \in R: i \cdot r \in I \land r \cdot i \in I$
    Assume an arbitrary $r \in R$ and $i \in I$, then forall $j \in J, x \in I_j$ and $r \cdot x \in I_j$ by $I_j$ being an ideal. Thus $r \cdot i \in I$ by definition of the cut operation.
    The same argument holds for $I \cdot r$.

#### 93) Let $R$ be a ring and $I,J$ two ideals of $R$. Does this imply that $I \cup J$ is an ideal of $R$?

No, we provide a counterexample:

Let $R = (\mathbb{Z}, +)$, $I = 2 \mathbb{2}$ and $J = 3 \mathbb{Z}$, then
    $2 \in I$ thus $2 \in I \cup J$, and
    $3 \in J$, thus $3 \in I \cup J$.

But $2+3 \not \in 2\mathbb{Z} \cup 3\mathbb{Z}$ since $5 \not \in 2\mathbb{Z}$ and $5 \not \in 3\mathbb{Z}$.

#### 94) Let $R$ be a ring and $I$ be an ideal of $R$. Then $(R/ I,+)$ is the quotient group of $(R,+)$ over $(I,+)$. Define a multiplication on $R/I$ by
$$
(a+I)\cdot (b+I) := (ab)+I
$$
**Prove that this operation is well-defined, i.e. that**

$$
\left.
  \begin{array}{lr}
    &a+I = c+I \\
    \text{and } &b+I  = d+I
  \end{array}
\right\} \Longrightarrow (ab) + I = (cd) +I.
$$

Assume, $a,b,c,d$ such that $a + I = c + I$ and $b + I = d + I$.

By $a + I = c + I$, we know $(a+I) - (c+I) = I$ (since $I$ is the neutral element in the quotient group).

But additionally by definition of addition in $R/I$, $(a+I) - (c+I) = (a-c) + I$ and $(a-c) + I = I \Leftrightarrow (a-c) \in I$.
Thus $a-c \in I$ and similarly $(b-d) \in I$.
Now by ideal properties: $b(a-c) \in I$ and $c(b-d) \in I$ and by subgroup properties: $b(a-c) + c(b-d) \in I$, i.e. $ba-bc+bc-bd = ab - bd \in I$.
Therefore, $ab + I = cd + I$.
**Furthermore, show that $(R/I,+,\cdot)$ is a ring.**
* **$(R/I, +)$ is abelian:**
    This follows directly from $(R,+)$ being abelian and $I$ being a normal subgroup.
* **$(R/I, \cdot)$ is a semigroup, i.e. satisfies associativity:**
    We show associativity by repeatedly applying the definitions of the respective $+$ and $\cdot$ operations:
    $((a+I) \cdot (b+I)) \cdot (c+I) =$
    $(ab + I) \cdot (c+I) = abc + I = (a+I) \cdot (bc + I) =$
    $(a+I) \cdot ((b+I) \cdot (c+I))$
* **distributivity:**
    We show distributivity by repeatedly applying the definitions of the respective $+$ and $\cdot$ operations:
    $(a+I) \cdot ((b+I) + (c +I )) =$
    $(a+I) \cdot ((c+b) + I) = a(c+b) + I = (ac +ab) + I =(ac + I) + (ab + I) =$
    $(a+I) \cdot (c + I) + (a + I) \cdot (b+I)$
#### 95) Let $U = \{\bar0, \bar2, \bar4\} \subseteq \mathbb{Z}_6$. Show that $U$ is an ideal $\mathbb{Z}_6$.
Let $R = (\mathbb{Z}_6,+,\cdot)$:
We recall, $U$ is an ideal of $R$ iff
1) $U \neq \emptyset$
    $U \neq \emptyset$
2) $\forall x,y \in U: x + (-y) \in U$

| $-$      | $\bar 0$ | $\bar 2$ | $\bar 4$ |
| -------- | -------- | -------- | -------- |
| $\bar 0$ | $\bar 0$ | $\bar 4$ | $\bar 2$ |
| $\bar 2$ | $\bar 2$ | $\bar 0$ | $\bar 4$ |
| $\bar 4$ | $\bar 4$ | $\bar 2$ | $\bar 0$ |

3) $\forall u \in U, r \in R: u \cdot r \in U \land r \cdot u \in U$

| $\cdot$  | $\bar 0$ | $\bar 2$ | $\bar 4$ |
| -------- | -------- | -------- | -------- |
| $\bar 0$ | $\bar 0$ | $\bar 0$ | $\bar 0$ |
| $\bar 1$ | $\bar 0$ | $\bar 2$ | $\bar 4$ |
| $\bar 2$ | $\bar 0$ | $\bar 2$ | $\bar 0$ |
| $\bar 3$ | $\bar 0$ | $\bar 0$ | $\bar 0$ |
| $\bar 4$ | $\bar 0$ | $\bar 2$ | $\bar 4$ |
| $\bar 5$ | $\bar 0$ | $\bar 4$ | $\bar 2$ |

All conditions are satisfied, thus $U$ is an ideal of $R$.

**Is it a subring as well?**
Conditions 1) and 2) show $U$ is a subgroup of $R$.
In 3) we showed $U$ is closed under multiplication.

**Does it have a $1$-element?**
In 3) one can see the multiplicative identity, namely $\bar 4$.

#### 96) Show that $(\mathbb{Z}[x], +, \cdot)$ is a ring and that $1 \neq (\{x, x+2\})$.

Let $i$ be an arbitrary element such that $i \in (\{x, x+2\})$, we can rewrite $i = i_1 x + i_2(x+2)$.
Now let $i_2 = i_2'x + c$, where $c$ is some constant factor, this means
$$
p = p_1 x + (p_2'x+c)(x+2) = p_1 x + p_2'x^2 + cx + 2p_2'x + 2c
$$
we can partition this product into factors of $x$ and constant factors:
$$
p = x(p_1 + p_2' + 2p_2' x + c) + 2c
$$

Now, assume $p = 1$, then $(p_1 + p_2' + 2p_2' x + c) = 0$ has to hold, but $2c \neq 1$. Contradiction!

*Remark: It can be showen that a principal deal which is generated by $a_1,a_2,\dots,a_k$ can be alternatively generated by $gcd(a_1,a_2, \dots, a_k)$. Therefore this example shows that $\mathbb{Z}[x]$ is a ring where not every ideal is a principal ideal. As a consequence, $\mathbb{Z}[x] cannot be a Euklidian ring.*

#### 97) Prove: If $(R,+,\cdot)$ is a ring and $I_1$, $I_2$ two of its ideals, then
$$
\begin{align}
I_1 + I_2 &:= \{a+b| a \in I_1, b \in I_2\} \text{, and} \\
I_1 * I_2 &:= \{a_1 b_1 + a_2 b_2 + \cdots + a_n b_n | n \geq 1, a_i \in I_1, b_i \in I_2 \text{ for } 1 \leq i \leq n\}
\end{align}
$$
**are ideals as well.**
Let $I' = I_1 + I_2$, then:
1) $I' \neq \emptyset$
    by $I_1 \neq \emptyset$ and $I_2 \neq \emptyset$, $I' \neq \emptyset$ by construction.
2) $\forall x,y \in I': x + (-y) \in I'$
    we can write $x$ as $a_1+b_1$ and $y$ as $a_2 + b_2$, then $x + (-y) = (a_1+b_1) - (a_2 + b_2) = a_1 -a_2 + b_1 - b_2$,
    and since $a_1,a_2 \in I_1$ , $a_1 - a_2 \in I_1$ by $I_1$ being an ideal.
    Similarly, since $b_1,b_2 \in I_2$ , $b_1 - b_2 \in I_2$ by $I_2$ being an ideal.
    Therefore, by definition $(a_1 - a_2) + (b_1 - b_2) \in I'$.

3) $\forall i \in I', r \in R: i \cdot r \in I' \land r \cdot i \in I'$
    Assume arbitrary $r \in R, i \in I'$, we can rewrite $i$ by $(a+b)$ for some $a \in I_1, b \in I_2$.
    Then $r \cdot i  = r \cdot (a+b) = r \cdot a + r \cdot b$ and
    since $a \in I_1, r \in R$, $r \cdot a \in I_1$ by $I_1$ being an ideal,
    similarly, since $b \in I_2, r \in R$, $r \cdot b \in I_2$ by $I_2$ being an ideal.
    Therefore, $r \cdot a + r \cdot b \in I'$ by definition.

Since all necessary conditions hold, we conclude $I'$ is an ideal.

Let $I'' = I_1 * I_2$, then:
1) $I' \neq \emptyset$
    by $I_1 \neq \emptyset$ and $I_2 \neq \emptyset$, $I' \neq \emptyset$ by construction.
2) $\forall x,y \in I'': x + (-y) \in I''$
    we can write $x$ as $a_1 b_1+ \cdots + a_n b_n$ and $y$ as $a'_1b'_1 + \cdots + a'_m b'_m$.
    W.l.o.g. assume $n > m$:
    then $x-y = (a_1 b_1 - a'_1b'_1 + \cdots + a'_m b'_m - a_m b_m - \dots - a_n b_n)$
    then each summand takes one of two forms:
    * $a_ib_i$, where $a_i \in I_1$ and $b_i \in I_2$, or
    * $(-a_i)b_i$, where since $a_i \in I_1$ and $0 \in I_1$ (by definition), $-a_i \in I_1$ and $b_i \in I_2$.
    Thus, $(a_1 b_1 - a'_1b'_1 + \cdots + a'_m b'_m - a_m b_m - \dots - a_n b_n)$ is in $I''$.

3) $\forall i \in I'', r \in R: i \cdot r \in I'' \land r \cdot i \in I''$
    Assume arbitrary $r \in R, i \in I'$, we can rewrite $i$ by $a_1 b_1 + a_2 b_2 + \cdots + a_n b_n$ and $r \cdot i$ by $r(a_1 b_1) + \cdots + r(a_n b_n)$.
    Now, for any $a_ib_i$, $1 \leq i \leq n$:
        $r \cdot a_i$ has to hold for any $r \in R$ by $I_1$ being an ideal, therefore $r a_1 b_1 + \dots + ra_n b_n \in I''$.
Since all necessary conditions hold, we conclude $I''$ is an ideal.

#### 98) Show that the set $R = \{a+b\sqrt{2} | a,b \in \mathbb{Z}\}$ with the usual addition and multiplication is an integral domain but not a field.

*An integral domain is a commutative ring with $1$-element and no zero divisor*
* **Commutative ring:**
    We show $R \leq \mathbb{R}$:
        * $R \neq \emptyset$ trivially by $\mathbb{Z} \neq \emptyset$
        * $\forall x,y \in R: x-y \in R$:
            we can write $x = a + b \sqrt{2}$ and $y = a' + b' \sqrt{2}$ then:
            $x-y = a + b \sqrt{2} - (a' + b' \sqrt{2}) = a + b\sqrt{2} - a' - b'\sqrt{2} = a-a' + (b-b')\sqrt{2}$, where $a-a' \in \mathbb{Z}$ and $b-b'\in \mathbb{Z}$.
        * $\forall x,y \in R: x \cdot y \in R$:
            we again can write $x = a + b \sqrt{2}$ and $y = a' + b' \sqrt{2}$ then:
            $x \cdot y = (a + b \sqrt{2}) \cdot (a' + b'\sqrt{2}) = aa' + ab'\sqrt{2} + a'b\sqrt{2} + 2bb' = (aa'+2bb') + (ab' + a'b)\sqrt{2}$, where $(aa'+2bb') \in \mathbb{Z}$ and $(ab' + a'b) \in \mathbb{Z}$.
    Thus, $R$ is a ring, and $R$ is commutative by commutativity of $\mathbb{R}$.
* **$1$-element:**
    The one element is inherited from $\mathbb{R}$, namely $1 + 0 \sqrt{2} = 1$.
* **No zero divisor:**
    Assume there exists a non-zero zero divisor $a \in R$, meaning there is some $x \in R$ such that  $ax = 0$ and $x \neq 0$.
    We define a homomorphism $\varphi: R \mapsto \mathbb{Z}$, where $\varphi(a+b\sqrt{2}) = a^2 -2b^2$.
    We show $\varphi(x) \cdot \varphi(y) = \varphi(xy)$:
        Let $x = a'^2 - 2b'^2$ and $y = a''^2 - 2b''^2$, then:
        $\varphi(x) \cdot \varphi(y) = a'^2a''^2 - 2a'^2b''^2 - 2a''^2b'^2 + 4b'^2b''^2$
        and:
        $\varphi(xy) = (a'a'' + 2b'b'')^2 - 2(a'b'' + a''b')^2 =$
        $a'^2a''^2 + 4a'a''b'b'' + 4 b'^2b''^2 - 2a'^2b''^2 - 4a'b''a''b' - 2a''^2b'^2 =$
        $a'^2a''^2 - 2a'^2b''^2 - 2a''^2b'^2 + 4b'^2b''^2 = \varphi(x) \cdot \varphi(y)$

    Then $ax = 0$ has to hold, and $\varphi(ax) = \varphi(0)$ has to be satisfied, now by $\varphi$ being a homomorphism:
    $\varphi(a) \cdot \varphi(x) = \varphi(0) = 0$, but $\varphi(y) = 0$ only holds for $y = 0$, thus either $a = 0$ or $x = 0$. Contradiction!

* **But not a field, i.e.: $\exists a \neq 0$ such that $a$ has no multiplicative inverse.**
    $\varphi(2) = 4$, $\varphi(1) = 1$
    $\varphi(2x)$ = $\varphi(2) \cdot \varphi(x) = 4 \varphi(x)$
    Now if $2$ was unit:
    $\varphi(2x) = 1$ would have to hold, but $\varphi(2x) = 4\varphi(x) = 1$ cannot be the case since $\varphi(x) \in \mathbb{Z}$.

**Furthermore, prove that there are infinitely many units in $R$ and give three concrete examples.**

#### 99) Find all irreducible polynomials of $\mathbb{R}[x]$.
*Hint: Show first that, if a polynomial $p(x) \in \mathbb{R}[x]$ has a complex zero $a+bi$, then its conjugate $a-bi$ is a zero of $p(x)$, too. Use this fact to conclude that every polynomial of degree at least $3$ is reducible in $\mathbb{R}[x]$.*


#### 100) Show that $\sqrt{2} + \sqrt{3}$ is algebraic over $\mathbb{Q}$ and determine its minimal polynomial.

Note the definition of algebraic:
*Let $P(x)$ be monic and irreducible over $K$, with degree $deg(P) = n$ and $P(a) = 0$. Then $a$ is algebraic over $K$ and $P(x)$ is a minimal polynomial of $a$ over $K$.*

Thus, we determine whether $a = \sqrt{2} + \sqrt{3}$ is algebraic over $\mathbb{Q}$ by:

$$
\begin{align}
x   &= \sqrt{2} + \sqrt{3}\\
x^2 &= (\sqrt{2} + \sqrt{3})^2 = 2 + 2 \sqrt{6} + 3\\
x^2 - 5 &= 2 \sqrt{6}\\
(x^2 - 5)^2 &= (2 \sqrt{6})^2 = 4 \cdot 6\\
x^4 -10x^2 + 25 &= 24\\
x^4 -10x^2 + 1 &= 0\\
\end{align}
$$
Thus $f(x) = x^4 -10x^2 + 1$ has $a$ as a zero in $\mathbb{Q}$, meaning $a$ is algebraic over $\mathbb{Q}$.

Additionally $f(x)$ is the minimal polynomial of $a$ over $\mathbb{Q}$, since the minimal polynomial of $a$ has to have degree at least $4$, and it is already monic (the coefficient of the largest degree component is $1$).
