---
title: Exercise Sheet 4
---

#### 31) Let $A$ be a non-empty set. Show that $A$ has as many subsets with an odd number of elements as subsets with an even number of elements.

We proceed by induction on the size of $A$ and show that $A$ has $2^{|A|-1}$ odd-sized subsets.

* Base case: $|A| = n = 1$, then $A$ has two subsets, namely $A$ and $\emptyset$, thus we have $2^{0} = 2^{n-1}$ odd-sized subsets.

* Induction hypothesis: Let $A$ be a set of size $n$, then A has $2^{n-1}$ odd-sized subsets.

* Induction step: Let $A$ be a set, such that $|A| = n+1$ and let $x \in A$. We construct a set $A'$ by $A' = A \backslash \{ x \}$.

    Then by construction of $A'$, $|A'| = n$ and thus by IH, $A'$ has $2^{n-1}$ odd-sized subsets. All possible subsets of $A$ can now be constructed through all subsets of $A'$ joined with $\{S \cup \{x\} | S \subseteq A'\}$.
    Now, for each odd-sized subset $A'_{1} \subseteq A'$, $A'_{1} \cup \{x\}$ is even sized, and on the other hand for each even-sized, subset $A'_{2} \subseteq A'$, $A'_{2} \cup \{x\}$ is odd-sized.

    The amount of odd-sized subsets of $A$ can thus be counted by taking all odd-sized subsets of $A'$, of which there are $2^{n-1}$ combined with all even-sized subsets of $A'$ which are combined with $x$ of which there are also $2^{n-1}$ thus we have $2^{n-1} + 2^{n-1} = 2^n$ odd-sized subsets.

    Since all subsets of $A$ are either even or odd, by the sum principle $|A_{even} \cup A_{odd}| = |A_{even}| + |A_{odd}|$, i.e. $2^{n+1} = 2^n + |A_{even}|$, thus $|A_{odd}| = 2^n = |A_{even}|$.

#### 32) Find the number of ways to place $n$ rooks on a $n \times n$ chessboard such that no two of them attack each other.

We observe that each of the $n$ rooks occupies one row, otherwise two rooks would attack each other.

A column can then be chosen for each rook as follows:
The first rook can be placed on any of the $n$ columns, the second can be placed on any but the column the first rook occupies, etc.

The $n$-th rook has only a single column left since $n-1$ columns are already occupied.

Thus, there are $n \times n-1 \times \dots \times 1 = n!$ ways to place the $n$ rooks on the $n \times n$ checkerboard.


#### 33) Let $p_n(k)$ be the number of permutations of $\{1,2, \dots, n\}$ having exactly $k$ fixed points. Use the method of double counting to prove the identity $\sum_{k=0}^n kp_n(k) = n!$.

We define a matrix with $n$ rows and $n$ columns such that an entry $i,j$ is defined by the number of permutations with a fixed point of size $j$ which contain $i$ as part of their fixed point.

Then each row $i$ counts the number of permutations which have $i$ as a fixed point.
The amount of permutations which have $i$ as a fixed point is $(n-1)!$ as $i$ is fixed while all other spots are permuted. Thus $\sum_{k=1}^n (n-1)! = n*(n-1)! = n!$ when we count the sum of the entries of all rows.

On the other hand, each column $j$ counts the possible permutations with a fixed point of size $j$, but it is important to note that for each fixed point of size $j$ there are $j$ entries in the column, i.e. an entry for each element of the fixed point.
Therefore the sum over columns is defined by $\sum_{k=1}^n k \times p_n(k)$.

Example with $n=3$, i.e. $\{1,2,3\}$:
Here we have $3$ fixed points of size $1$ (in column 1), namely each of the elements, and one fixed point of size $3$, where all elements are contained (column 3).


|       | 1   | 2   | 3   |
| ----- | --- | --- | --- |
| **1** | 1   | 0   | 1   |
| **2** | 1   | 0   | 1   |
| **3** | 1   | 0   | 1   |


#### 34) Let $A$ be a set of 11 positive integers such that for all $x \in A$ we have $20 \nmid x$. Prove that there are two distinct integers $a,b \in A$ such that $20 | (a+b)$ or $20 | (a-b)$.

We can create $10$ boxes such that we distribute the numbers into those boxes based on their remainder modulo $20$ as follows:

\begin{gather*}
\{1,19\}, \{2,18\}, \{3,17\}, \{4,16\}, \{5,15\}, \{6,14\}, \{7,13\}, \{8,12\}, \{9,11\},\{10\}
\end{gather*}

For each of these boxes, one can see that each of them surmount to $20$ when it contains two different numbers and their difference surmounts to $0$ when equal. As we have $11$ integers, by the pigeonhole principle at least one class will have two numbers.

Since, for each class, if there are two numbers $a,b$ assigned to the same class, we know either $20 | (a + b)$ if $a \neq b$ or $20 | (a-b)$ if $a = b$.

Thus, every set $A$ of $11$ integers such that $20 \nmid x$ for all $x \in A$ contains some $a,b$ such that $20 | (a + b)$ or $20 | (a-b)$.

#### 35) Let $n \in \mathbb{N}$, prove the identities:

\begin{gather*}
    \sum_{k=0}^{n} 2^k = 2^{n+1}-1
\end{gather*}

We count the number of bitstrings of length $n+1$ containing at least one '1'.

* *RHS:* We can construct the bitstrings of length $n+1$ containing at least one '1', by fixing a '1' at each position $k+1$, where $0 \leq k \leq n$ in the string and fixing zeros in front of the '1', then for the bits behind the '1' there are $2^k$ possibilities of setting them one or zero each.  We count each string containing at least one '1', since, if there is some '1' in the bitstring, there also exists a rightmost '1' and since we fix each possible frontmost '1' exactly once, no string is counted twice.
* *LHS:*
    There are $2^{n+1}$ possible bitstrings of length $n+1$, but the string containing only zeroes contains no '1' thus we subtract $1$ from the possible bitstrings.

**and**

\begin{gather*}
\sum_{k=1}^n (n-k)2^{(k-1)} = 2^n - n - 1
\end{gather*}

We count the number of bitstrings of length $n+1$ containing at least two '1's.

*  *LHS*: For each possible position $k$, $1 \leq k \leq n$ in the bitstring, we can place a '1' at position $k$ and place a second '1' at some position to the left of $k$ while fixing the rest of the bits toi the left of $k$ to zero guaranteeing two ones in the string, meaning there are $n-k$ possibilities to place that other '1' and for each position of that '1' to the left of $k$, we have $2^{k-1}$ possibilites to choose the bits to the right of $k$. Thus, we have $(n-k)2^{k-1}k$ possibilites for each fixed '1' at each position $k$.

* *RHS*: There are a total of 2^n bitstrings of length $n$, from which we subtract all strings with no ones, i.e. the string of only zeroes, and all strings with exactly one '1' of which there are $n$ different ones, as we can place the '1' in $n$ different positions and fix '0' in the other ones. Thus, the number of bitstrings with at least two '1's, are $2^n - n -1$.


#### 36) Let $D_n \subset S_n$ be the fixed-point-free permutations fo $\{1,2, \dots, n\}$, i.e. all permutations $\pi \in S_n$ with $\pi(i) \neq i$ for all $i$. The *derangement numbers* are defined as $d_n := |D_n|$. Prove the recurrence:

\begin{cases}
    d_n = (n-1)(d_{n-1} + d_{n-2}), & \text{for $n \geq 2$}.\\
    d_0 = 1, d_1 = 0.
\end{cases}

**using a combinatorial interpretation.**

We argue about the size of $D_n$ by counting its elements.
We know that forall derangements $(\pi(1), \dots, \pi(n)) \in D_n$ it holds that $\pi(i) \neq i$ forall $i \in \{1, \dots, n\}$.

Thus, it also holds that $\pi(n) \neq n$, i.e. we know that $\pi(n) = i$ for some $i \in \{1, \dots, n-1\}$,
we now distinguish based on the values of $\pi(i)$:

* case 1: $\pi(i) = n$, then $i$ and $n$ are mapped to each other and the number of derangements surmounts to $d_{n-2}$.
* case 2: $\pi(i) \neq n$: we can count the number of derangements by setting $\pi(n) = \pi(i)$ and derangement over $n-1$ elements, therefore the number of derangements here is $d_{n-1}$.

Since we have $n-1$ options for choosing $i$, we count:
$$
d_n = (n-1) (d_{n-1} + d_{n_2})
$$

**Furthermore, prove that this recurrence relation implies**

\begin{gather*}
d_n = n d_{n-1} + (-1)^n
\end{gather*}

and

\begin{gather*}
d_n = n! \sum_{k=0}^n \frac{(-1)^k}{k!}
\end{gather*}

We first show that $d_n = n! \sum_{k=0}^n \frac{(-1)^k}{k!}$. We count the number $d_n$ of fixed point free permutations by subtracting the number of permutations which have some fixed point from all permutations. The former are defined as follows:

\begin{gather*}
\sum_{k=1}^n \binom{n}{k} (n-k)! (-1)^{k-1}
\end{gather*}

i.e. we choose $k$ elements to fix, permute the remaining elements and apply the inclusion exclusion principle.

Then the number of derangements can be derived as follows.

\begin{gather*}
d_n = n! - \sum_{k=1}^n \binom{n}{k} (n-k)! (-1)^{k-1} = n!- \sum_{k=1}^n \frac{n!}{k!(n-k)!} (n-k)! (-1)^k-1 =
\end{gather*}

\begin{gather*}
=n! - \sum_{k=1}^n \frac{n!}{k!} (-1)^{k-1} = \sum_{k=0}^n \frac{n!}{k!} (-1)^k = n! \sum_{k=0}^n \frac{(-1)^k}{k!}
\end{gather*}

We then show $n! \sum_{k=0}^n \frac{(-1)^k}{k!} = n d_{n-1} + (-1)^n$ by induction.

* Base case: $n=1$: $1!(\frac{(-1)^0}{1!}) + 1!(\frac{(-1)^1}{1!}) = 1 \times 1 + (-1)^1 = 0 = 0$
* Induction hypothesis: $n \times d_{n-1} + (-1)^n = n! \sum_{k=0}^n \frac{(-1)^k}{k!}$

* Induction step:

\begin{align}
(n+1)d_{n} + (-1)^{n+1} &= (n+1)! \sum_{k=0}^{n+1} \frac{(-1)^k}{k!} \Leftrightarrow\\
(n+1) d_n + (-1)^{n+1} &= (-1)^{n+1} + (n+1)!\sum_{k=0}^{n} \frac{(-1)^k}{k!}
\Leftrightarrow \\ (n+1) d_n + (-1)^{n+1} &=
(-1)^{n+1} + (n+1) n! \sum_{k=0}^n \frac{(-1)^k}{k!} \Leftrightarrow\\ (n+1) d_n + (-1)^{n+1} &= (-1)^{n+1} +(n+1) d_n
\end{align}


#### 37) Compute the number of elements of the set $\{x \in \mathbb{N} \ | \ 1 \leq x \leq 100 000$ and $x$ is neither a square nor a 3rd, 4th or 5th power of some $y \in \mathbb{N}\}$.

We define the following sets:

* $S_2 = \{x \in \mathbb{N} \ | \ 1 \leq x \leq 100 000 \land \exists y \in \mathbb{N}, x = y^2\} = \{1,2,4, \dots 99856\}$, where $|S_2| = 316$.

* $S_3 = \{x \in \mathbb{N} \ | \ 1 \leq x \leq 100 000 \land \exists y \in \mathbb{N}, x = y^3\} = \{1,8,27, \dots 97336\}$, where $|S_3| = 46$.

* $S_4$ does not need to be considered as all its elements are included in $S_2$ already.

* $S_5 = \{x \in \mathbb{N} \ | \ 1 \leq x \leq 100 000 \land \exists y \in \mathbb{N}, x = y^5\} = \{1,32, \dots 100 000\}$, where $|S_5| = 10$.

We observe the intersections of the considered sets in order to apply the Inclusion-Exclusion Principle:

* $S_2 \cap S_3 = \{x \in \mathbb{N} . \ | \ 1 \leq x \leq 100 000 \land \exists y \in \mathbb{N}, x = y^6\}$, where $|S_2 \cap S_3| = 6$.
* $S_3 \cap S_5 = \{x \in \mathbb{N} . \ | \ 1 \leq x \leq 100 000 \land \exists y \in \mathbb{N}, x = y^{15}\}$, where $|S_3 \cap S_5| = 2$.

* $S_2 \cap S_5 = \{x \in \mathbb{N} \ | \ 1 \leq x \leq 100 000 \land \exists y \in \mathbb{N},  x = y^{10}\}$, where $|S_2 \cap S_5| = 3$.

The size of the set is then defined by the Inclusion-Exclusion-Principle as follows:

$|S| - |S_2| - |S_3| - |S_5| + |S_2 \cap S_3| + |S_3 \cap S_5| + |S_2 \cap S_5| - |S_2 \cap S_3 \cap S_5|$
    $= 100 000 - 316 - 46 - 10 + 6 + 2 + 3 - 1 = 99638$

#### 38)

**Let $n \in \mathbb{N}$. Prove Pascal's recurrence

\begin{gather*}
\binom{n}{k} = \binom{n-1}{k-1} + \binom{n-1}{k}
\end{gather*}

algebraically using the closed $\binom{n}{k} = \frac{n!}{k!(n-k)!}$ of the binomial coefficient**

\begin{gather*}
\frac{n!}{k!(n-k)!} = \frac{(n-1)!n}{k!(n-k)!} = (n-1)! \frac{n}{k!(n-k)!} =
\end{gather*}

\begin{gather*}
= (n-1)! \left( \frac{n-k}{k!(n-k)!} + \frac{k}{k!(n-k)!} \right)^\dagger = \frac{(n-1)!(n-k)}{k!(n-k)!} + \frac{(n-1)!k}{k!(n-k)!} =
\end{gather*}

\begin{gather*}
\frac{(n-1)!(n-k)}{k!(n-k)(n-k-1)!} + \frac{(n-1)!k}{k(k-1)!(n-k)!} = \frac{(n-1)!}{k!(n-k-1)!} + \frac{(n-1)!}{(k-1)!(n-k)!}=
\end{gather*}

\begin{gather*}
= \binom{n-1}{k} + \binom{n-1}{k-1}
\end{gather*}

Note that at $\dagger$ we simply calculated $+k-k$ which is equivalent to $0$ and thus a valid transformation.

**and prove

\begin{gather*}
\sum_{k=0}^n \binom{n}{k}^2 = \binom{2n}{n}
\end{gather*}

using a combinatorial interpretation of the binomial coefficients.**

We formulate the question *How many different subsets of size $n$ does a set of size $2n$ have?*

* $\binom{2n}{n}$: There are $\binom{2n}{n}$ possibilites to choose $n$ elements from a set of $2n$ elements.
* $\sum_{k=0}^n \binom{n}{k}^2$: We can answer the question by dividing the $2n$ elements into two sets $A,B$ of size $n$ each for which $A \cap B = \emptyset$. When we now choose $n$ elements from the original set, we can do this by choosing some from $A$ and some from $B$.

    The options for choosing are as follows:
    $0$ from $A$, $n$ from $B$: $\binom{n}{0} \binom{n}{n}$
    $1$ from $A$, $n-1$ from $B$: $\binom{n}{1} \binom{n}{n-1}$
    .
    .
    .
    $n$ from $A$, $0$ from $B$: $\binom{n}{n}\binom{n}{0}$

    Therefore, the total number of ways to choose sets of size $n$ from $A$ and $B$ is:

    \begin{gather*}
    \binom{n}{0}\binom{n}{n} + \binom{n}{1} \binom{n}{n-1} \dots + \binom{n}{n}\binom{n}{0}
    \end{gather*}

    We observe that $\binom{n}{0} = \binom{n}{n}$, $\binom{n}{1} = \binom{n}{n-1}$, etc., therefore we can write:

    \begin{gather*}
    \binom{n}{0}^2+\binom{n}{1}^2 + \dots + \binom{n}{n}^2,
    \end{gather*}

    i.e.

    \begin{gather*}
    \sum_{k=0}^2 \binom{n}{k}^2
    \end{gather*}

    Since both formulas answer the same question they are equivalent according to combinatorial interpretation.

#### Let $n,m \in \mathbb{N}$. Give two proofs of the identity

\begin{gather*}
\sum_{k=0}^{n} \binom{m+k}{k} = \binom{n+m+1}{m+1}
\end{gather*}

**one by induction:**

* Base case: $n=1$


\begin{gather*}
\binom{m}{0} + \binom{m+1}{1} = \binom{m+2}{m+1} \Leftrightarrow
\end{gather*}

by Pascal's rule:

\begin{gather*}
\Leftrightarrow 1 + \binom{m+1}{1} = \binom{m+1}{m} + \binom{m+1}{m+1} \Leftrightarrow 1+ \binom{m+1}{1} = \binom{m+1}{m} + 1 \Leftrightarrow
\end{gather*}

\begin{gather*}
\Leftrightarrow \binom{m+1}{1} = \binom{m+1}{m}
\end{gather*}

which holds by symmetry ($\binom{n}{k} = \binom{n}{n-k}$)

* Induction hypothesis:

\begin{gather*}
\sum_{k=0}^{n} \binom{m+k}{k} = \binom{n+m+1}{m+1}
\end{gather*}

holds for $n=i, i \in \mathbb{Z}_{+}$.

* Induction step: we start with the LHS:

\begin{gather*}
\sum_{k=0}^{n+1} \binom{m+k}{k} =
\end{gather*}

we extract the first summand and apply the induction hypothesis:

\begin{gather*}
= \binom{n+m+1}{n+1} + \binom{n+m+1}{m+1} =
\end{gather*}

by symmetry ($n = n+m+1, k = n+1$)

\begin{gather*}
= \binom{n+m+1}{m} + \binom{n+m+1}{m+1}=
\end{gather*}

by Pascal's rule

\begin{gather*}
= \binom{n+m+2}{m+1}
\end{gather*}


**and one by combinatorial interpretation:**
*Hint: Consider 0-1 sequences and group them according to the position of the last 1.*

We count the number of bitstrings of length $n+m+1$ with exactly $m+1$ $'1'$s.

* *RHS:*
    We choose $m+1$ positions out of $n+m+1$ possible ones to place the $m+1$ $'1'$s.
* *LHS:*
    We consider the position of the last $'1'$ in the bitstring at $m+k+1$, then $n-k$ bits are $'0'$ after $m+k+1$. $k$ bits out of the possible $m+k$ positions can be $'0'$, i.e. $\binom{m+k}{k}$ possibilities to set the remaining bits exist. Taking the sum for all possible positions of the last $'1'$ from $m+1$ to $m+n+1$ yields all bitstrings of length $m+n+1$ with $m+1$.

#### 40) Prove that for all complex numbers $x$ and all $k \in \mathbb{N}$ we have:

\begin{gather*}
\binom{-x}{k} = (-1)^k \binom{x+k-1}{k}
\end{gather*}

We know for complex numbers $x$:

\begin{gather*}
\binom{-x}{k} = \frac{-x^{\underline{k}}}{k!} =
\end{gather*}

where $x^{\underline{k}}$ denotes the falling factorials, defined by: $x^{\underline{k}} = x * (x-1)* \dots * (x-k+1)$.

\begin{gather*}
= \frac{(-x)(-x-1)\times \dots \times (-x-k+1)}{k!} =
\end{gather*}

we can extract $-1$ from each factor, meaning we extract $k$ times $(-1).

\begin{gather*}
= \frac{(-1)^k (x) (x+1) \times \dots \times (x+k-1)} =
\end{gather*}

we now expand by $\frac{(x-1)!}{(x-1)!}$, which is equivalent to $1$.

\begin{gather*}
= (-1)^k \frac{(x)(x+1) \times \dots \times (x+k-1)(x-1)!}{k!(x-1)!} =
\end{gather*}

we observe that the numerator is equivalent to $(x+k-1)!$ which is then equivalent to the right hand side by definition of the binomial coefficient.

\begin{gather*}
(-1)^k \frac{(x+k-1)!}{k!(x-1)!} = (-1)^k \binom{x+k-1}{k}
\end{gather*}


