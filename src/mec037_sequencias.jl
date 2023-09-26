### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# ╔═╡ 4e2ed8fa-57d6-11ee-13e6-e7c69644d3fd
md"""
# Sequencias Finitas e Infinitas

Intuitivamente, poderíamos pensar nisto (1, 2, 3, 4, 5, 6, 7) como uma sequência.


# Definição

Uma sequência finita é uma função

$$f: \mathbb{N}^*_n \to \mathbb{R}$$

Exemplos: 

a) $f = \{(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7)\}$

Uma sequência infinita é uma função

$$f: \mathbb{N}^* \to \mathbb{R}$$

Exemplos:

b) $f = \{(1, 0), (2, 2), (3, 4), (4, 6), (5, 8), (6, 10), ...\}$

c) $f = \{(1, 0), (2, π), (3, 2π), (4, 3π), (5, 4π), ...\}$

Para simplificar a notação, podemos definir uma sequência especificando apenas a sua imagem. Desta forma, os exemplos acima poderiam ser reescritos como:

i) $(1, 2, 3, 4, 5, 6, 7)$

ii) $(0, 2, 4, 6, 8, 10, ...)$

iii) $(0, π, 2π, 3π, 4π, ...)$


"""

# ╔═╡ 5f049591-b041-41c5-9c8a-febee706adc7
md"""
# Lei de Formação

##### a) Por Recorrências

Exemplo Sequência de Fibonnaci

a.1) $a_1=0, a_n = a_{n-1} + a_{n-2}$

$(0, 1, 1, 2, 3, 5, 8, 13, ...)$

a.2) $a_1 = 2; a_n = 2a_{n-1} + 3;$ 

$(2, 7, 17, 37, 77, ...)$

a.3) $a_1 = 3, a_n = \sum_{k=1}^{k=n-1}{a_k}$

$$(3, 3, 6, 12, 24, 48, 96, ...)$$

##### b) Por posição dos termos

b.1) $a_n = 2^n, n ∈ \mathbb{N}^*,  n ≤ 10$ 

$(2, 4, 8, 16, 32, 64, 128, 256, 512, 1024)$

b.2) $a_n = sen(n\frac{π}{2})$

$$(1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0, 1,...)$$



##### c) Por propriedade dos termos

c.1) A sequência dos 8 primeiros números primos positivos em ordem crescente.

$$(2, 3, 5, 7, 11, 13, 17, 19)$$

c.2) A sequência dos divisores positivos do número 24 em ordem crescente.

$$(1, 2, 3, 4, 6, 8, 12, 24)$$

"""

# ╔═╡ Cell order:
# ╟─4e2ed8fa-57d6-11ee-13e6-e7c69644d3fd
# ╟─5f049591-b041-41c5-9c8a-febee706adc7
