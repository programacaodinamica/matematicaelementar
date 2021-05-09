### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# ╔═╡ 1508bfdb-d44f-4b79-a7d6-21f88fa6ec35
using Images

# ╔═╡ 97f1b0a6-af78-11eb-3e5d-ffe676421179
md""" 
# Relações
"""

# ╔═╡ fd7159ea-0da0-4928-a21e-6e16fa86e415
md"""
Uma *relação binária* é uma forma de associar elementos de dois conjuntos segundo algum critério. A [representação que já conhecemos](https://matematica.pgdinamica.com/geometria/009planocartesiano.html) e que usaremos para escrever esta associação é o **par ordenado**.

Assim, uma relação pode ser vista como um subconjunto do produto cartesiano entre dois conjuntos. O critério utilizado para associação nos permite identificar quais pares ordenados fazem parte da relação.

Observe o exemplo abaixo. Em roxo, temos $A × B$ e em azul, temos uma relação entre os elementos de $A$ e de $B$


"""

# ╔═╡ 0d35a940-86a8-44d6-9c55-084b1f862142
load("img/relacoes/relacoes1.jpg")

# ╔═╡ 3107a1aa-8eff-4e4f-8982-0ff92f97daa1
md"""
Perceba que **os conjuntos** cujos elementos iremos associar **podem ser iguais**. Por exemplo, podemos tomar o produto cartesiano do conjunto de todos os usuários do Instagram consigo mesmo e definir diversas relações como abaixo.
"""


# ╔═╡ 9ff684bd-3325-4f37-8c4b-3330a078e35b
load("img/relacoes/relacoes2.jpg")

# ╔═╡ 39dfd392-d058-4db1-b6f9-f5fab1f0d15e
md"""
## Intervalos

Intervalos são subconjuntos contínuos da reta Real. Podem ser fechados, quando incluem os seus extremos; ou abertos, quando os excluem. Não é ncessário seguir a mesma regra para od sois extremos, podemos ter intervaloes fechados à esquerda/direita e abertos à esquerda/direita.

Ou seja, dados dois números $a \in \mathbb{R}$ e $b \in \mathbb{R}$, com a < b. Podemos definir intervalos tomando todos os números compreendidos entre $a$ e $b$ e, possivelmente, os próprios números $a$ e $b$.

* Intervalo fechado $[a, b]$ = $\{x \in \mathbb{R} | a ≤ x ≤ b\}$
* Intervalo aberto $(a, b)$ = $\{x \in \mathbb{R} | a < x < b\}$
* Intervalo aberto em $a$ e fechado em $b$ = $(a, b]$ = $\{x \in \mathbb{R} | a < x ≤ b\}$
* Intervalo fechado em $a$ e aberto em $b$ = $[a, b)$ = $\{x \in \mathbb{R} | a ≤ x < b\}$


Exemplos:
"""

# ╔═╡ 18e06542-98e5-49ea-9765-540fdf240609
load("img/relacoes/relacoes3.jpg")

# ╔═╡ abd45e7d-a5e9-4a9c-850d-adf05e1c9308
md"""
Podemos definir relações em $\mathbb{R}^2$, o resultado do produto cartesiano $\mathbb{R} \times \mathbb{R}$, que conhecemos como o [Plano Cartesiano](https://matematica.pgdinamica.com/geometria/009planocartesiano.html).
"""

# ╔═╡ 0bacaa78-567c-4a22-a60b-d5839687148c
load("img/relacoes/relacoes4.jpg")

# ╔═╡ Cell order:
# ╟─1508bfdb-d44f-4b79-a7d6-21f88fa6ec35
# ╟─97f1b0a6-af78-11eb-3e5d-ffe676421179
# ╟─fd7159ea-0da0-4928-a21e-6e16fa86e415
# ╟─0d35a940-86a8-44d6-9c55-084b1f862142
# ╟─3107a1aa-8eff-4e4f-8982-0ff92f97daa1
# ╟─9ff684bd-3325-4f37-8c4b-3330a078e35b
# ╟─39dfd392-d058-4db1-b6f9-f5fab1f0d15e
# ╟─18e06542-98e5-49ea-9765-540fdf240609
# ╟─abd45e7d-a5e9-4a9c-850d-adf05e1c9308
# ╟─0bacaa78-567c-4a22-a60b-d5839687148c
