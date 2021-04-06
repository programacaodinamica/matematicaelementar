### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# ╔═╡ bb068020-8387-11eb-16db-558d57f54f06
using Images

# ╔═╡ f2b0b9ce-8372-11eb-1d5b-b334a9e0f601
md"""# Números Inteiros

### Conjunto dos números inteiros:

$$\mathbb{Z}=\{..., -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, ...\}$$

O conjunto dos números naturais está contido no conjunto dos números inteiros. Isto é, todo número natural é um número inteiro, mas nem todo número inteiro é natural.

$$\mathbb{N} \subset \mathbb{Z}$$

Os números menores que 0 serão chamados de números negativos e os números maiores que 0 são os números positivos. 0 não é nem negativo nem positivo.

# Adição, +

As propriedades que vimos para adição em continuam $\mathbb{N}$ válidas em $\mathbb{Z}$:
1. Comutatividade
2. Associatividade
3. Fechamento
4. Elemento Neutro

Podemos, ainda, definir uma nova propriedade que é a existência do **Inverso Aditivo** (ou oposto aditivo).


### Inverso Aditivo

O inverso aditivo de um número inteiro é aquele número que quando somado a ele resulta no elemento neutro da adição. Em outras palavras é o némero que tem o mesmo valor absoluto (representa uma mesma "quantidade"), porém sinal trocado.

##### Exemplos:
"""


# ╔═╡ 14b79de8-8379-11eb-08c1-f126775e0260
# 2 é o inverso aditivo de -2.
2 + (-2) 

# ╔═╡ 21a4f3fc-8379-11eb-1d38-9177384915ee
# -2 é o inverso aditivo de 2.
-2 + (+2) 

# ╔═╡ e9f93744-8385-11eb-3ce6-593c7b7122fa
md"""Podemos observar a subtração como uma adição entre um número e o inverso aditivo de outro"""

# ╔═╡ 685e1e9a-8379-11eb-108e-f1062a96391d
7 - 5 == 7 + -5

# ╔═╡ 33110b50-8386-11eb-0d8b-71e8478ba75d
md"""Subtrair 9 de 4 é equivalente a somar 4 a -9 e resulta em -5, um número negativo, pois 9 > 4"""

# ╔═╡ 13777bbc-8386-11eb-3b67-f3690e2a4e72
4 - 9 == 4 + -9 == -5 

# ╔═╡ 253a1372-8373-11eb-0616-2fe069f08f75
md"""# Frações

Frações são construídas pela **razão entre dois números inteiros**. Em outras palavras, representam a divisão de um valor inteiro por outro, podendo representar quantidades "quebradas", valores que não são inteiros, como pedaços de uma pizza, por exemplo.

###### Exemplo:

A razão entre 2 e 5 é $\frac{2}{5}$

Se eu divido uma pizza em três fatias e pego duas, fico com $\frac{2}{3}$ da pizza

"""

# ╔═╡ 4cefc550-8388-11eb-3b5f-452027285825
fracimg = load("img/comparafracao.png")

# ╔═╡ 377cc9c6-8373-11eb-0275-e18ea05da14b
md"""# Números Racionais
A razão entre dois números inteiros pode não ser um número inteiro. Para representar números inteiros e fracionários, usamos o conjunto dos números racionais.

Podemos efetuar a divisão entre dois números inteiros subdividindo o resto em uma parte decimal.

"""

# ╔═╡ ae6fe33a-8380-11eb-0c7b-5de5151bf4cb
3/2

# ╔═╡ a5411b9e-8380-11eb-0678-836f3aed1eb8
13/8

# ╔═╡ 724efea6-8388-11eb-3c64-7b2af8907c0d
load("img/trezeoitavos.png")

# ╔═╡ 6efdb9e2-8381-11eb-2c73-f3fd1662d1a9
5/4

# ╔═╡ 81eefbfe-8388-11eb-2fb3-edb9817894ad
load("img/cincoquartos.png")

# ╔═╡ Cell order:
# ╟─bb068020-8387-11eb-16db-558d57f54f06
# ╟─f2b0b9ce-8372-11eb-1d5b-b334a9e0f601
# ╠═14b79de8-8379-11eb-08c1-f126775e0260
# ╠═21a4f3fc-8379-11eb-1d38-9177384915ee
# ╟─e9f93744-8385-11eb-3ce6-593c7b7122fa
# ╠═685e1e9a-8379-11eb-108e-f1062a96391d
# ╟─33110b50-8386-11eb-0d8b-71e8478ba75d
# ╠═13777bbc-8386-11eb-3b67-f3690e2a4e72
# ╟─253a1372-8373-11eb-0616-2fe069f08f75
# ╟─4cefc550-8388-11eb-3b5f-452027285825
# ╟─377cc9c6-8373-11eb-0275-e18ea05da14b
# ╠═ae6fe33a-8380-11eb-0c7b-5de5151bf4cb
# ╠═a5411b9e-8380-11eb-0678-836f3aed1eb8
# ╟─724efea6-8388-11eb-3c64-7b2af8907c0d
# ╠═6efdb9e2-8381-11eb-2c73-f3fd1662d1a9
# ╟─81eefbfe-8388-11eb-2fb3-edb9817894ad
