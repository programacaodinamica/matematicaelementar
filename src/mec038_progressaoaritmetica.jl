### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# ╔═╡ 358425e0-02f1-496a-a105-9000056d3f0c
using Images

# ╔═╡ 60d1c8e4-5d82-11ee-0a49-690a423df579
md"""
# Progressão Aritmética

**Definição:** Progressão Artimética (P.A.) é uma sequência da pela fórmula de recorrência seguinte:

$$\begin{cases}
      a_1 = a \\
      a_n = a_{n-1} + r, n \in N, n \ge 2 \\
    \end{cases}$$

Obs: $a$, $r$ são números reais quaisquer. $r$ é chamado de razão da P.A.

Exemplos de P.A.

i) $(1, 2, 3, 4, 5, 6, ...)$

ii) $(π, 3π, 5π, 7π, 9π, ...)$

iii) (4, 3.5, 3, 2.5, 2, 1.5, 1, ...)

iv) (7, 7, 7, 7, 7, 7, 7, ...)

obs: $(π, 3π, 5π, 7π, 9π, ...) ≠ (3π, 5π, 7π, 9π, ...)$

i) e ii) são P.A. crescentes; iii) é descrescente; iv) é constante.


"""

# ╔═╡ 1eb324a7-a7f1-437d-b67f-0655e0292c39
md"""

Outra Notação:

$(x, x + r, x + 2r, x + 3r)$

"""

# ╔═╡ 0bed694a-921e-42e8-a8e1-f1ceaed06347
md"""
##### Teorema

Seja uma P.A. de primeiro termo $a_1$ e razão $r$. Então:

$a_2 = a_1 + r$
$a_3 = a_2 + r$
$a_4 = a_3 + r$
$a_5 = a_4 + r$
$...$
$a_n = a_{n-1} + r$

Somando todos os termos:

$a_2 + a_3 + ... + a_n = a_1 + a_2 + a_3 + ... + a_{n-1} + (n-1)r$ 

O n-ésimo termo da P.A. pode ser expresso por:

$a_n = a_1 + (n-1)r$


"""

# ╔═╡ 65bd33b3-3d0c-48bd-8f45-f3af50ed890b
md"""
## Soma dos $n$ primeiros termos de uma P.A.

$S_n = na_1 + \frac{n(n-1)}{2}r$

Exercício: prove por indução finita que este resultado é válido.

"""

# ╔═╡ a8b6234a-0d78-42c2-b522-7159af566c5b
load("img/soma_pa.png")

# ╔═╡ Cell order:
# ╠═358425e0-02f1-496a-a105-9000056d3f0c
# ╟─60d1c8e4-5d82-11ee-0a49-690a423df579
# ╟─1eb324a7-a7f1-437d-b67f-0655e0292c39
# ╟─0bed694a-921e-42e8-a8e1-f1ceaed06347
# ╟─65bd33b3-3d0c-48bd-8f45-f3af50ed890b
# ╟─a8b6234a-0d78-42c2-b522-7159af566c5b
