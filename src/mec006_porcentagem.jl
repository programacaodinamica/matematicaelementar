### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ 4881e718-8e76-11eb-13cf-b118c32e8884
md"# Porcentagem"

# ╔═╡ ea874424-8e7a-11eb-26a0-6142e50510be
md"""Podemos entender um valor em porcentagem, representado ao lado do símbolo %, como uma fração cujo denominador é 100 e o numerador é igual ao número ao lado do símbolo % (o valor da porcentagem)

Exemplos

1.

10% corresponde à fração $\frac{10}{100}$

7,5% corresponderia à fração ${7,5}{100}$ Contudo, vimos que uma fração é uma razão entre dois números inteiros e 7,5 não é inteiro. Então se quisermos olhar 7,5% como uma fração podemos multiplicar e dividir o denominador por um mesmo valor até termos uma razão entre inteiros$

"""

# ╔═╡ b33ab3f6-8e76-11eb-11e4-fff27d9eb14d
md"""Um desconto de 10% em cima de um produto que custa 100 reais corresponderia a um valor final de 90 reais """

# ╔═╡ 70c27c80-8e7c-11eb-119a-6b02ecaf203c
# valor inicial - desconto
100 - 100 * 10 / 100

# ╔═╡ 8e7cc320-8e7c-11eb-227e-e30e4ce88a8e
md"""Um imposto de 10% em cima de um produto que custa 100 reais corresponderia a um valor final de 110 reais"""

# ╔═╡ 8bfd8512-8e7c-11eb-13d0-91a932a561b1
# valor inical + imposto
100 + 100 * 10 / 100

# ╔═╡ addd5da6-8e7c-11eb-201b-6b858bff12af
md"""Incrementar em 10% e depois decrementar em 10% não resulta no valor inicial, porque estamos tomando uma porcentagem em relação a valores diferentes"""

# ╔═╡ d0077374-8e7c-11eb-130f-ef7380832c8d
begin
	valor = 100
	# incrementado em 10 %
	incrementado = valor + valor * 10 / 100
	final = incrementado - incrementado * 10 / 100
	final
end

# ╔═╡ 1dd3e29c-8e7d-11eb-0399-03376263e10d
10 jogadores

j1 = 1000 pontos
j2 = 900 pontos
j3 = 800 pontos
j4 = 700 pontos
j5 = 600 pontos
j6 = 500 pontos
j7 = 400 pontos
j8 = 300 pontos
------ Hallison - 250 pontos---
j9 = 200 pontos
j10 = 100 pontos

Hallison - 250 pontos

Hallison - melhor que 2 jogadores dentre 10

2/10 = 20/100 = 20%


Hallison - pior que 8 jogadores dentre 10

8/10 = 80/100 = 80%


# ╔═╡ 3a42fb9c-8e7e-11eb-1692-11ddafe43b00
Se tivessémos 854.732 jogadores de MK11

Hallison - 25.000 pontos

porém 689.432 jogadores com mais de 25.000 pontos

Como comunicar o desempenho de Hallison em relação ao total de jogadores de MK11?

# ╔═╡ 8c04f714-8e7e-11eb-2ea4-b7d1ce17faa7
689432/854732

# ╔═╡ abfc0aa8-8e7e-11eb-27a5-419266926705
# 80,66%
n = 0.8066
# estou entre os 80,66% melhores

# ╔═╡ d56710bc-8e7f-11eb-0367-45dc1a016f45
854732 - 689432

# ╔═╡ f5634492-8e7f-11eb-0d41-575acd3da4ee
165300/854732

# ╔═╡ 17e63aa8-8e80-11eb-12b9-11c91f765e54
menores = 0.1934
# 19,34 %
# estou entre os 19,34% piores

# ╔═╡ 6d7000a8-8e80-11eb-22bc-29a903f3dd0b


# ╔═╡ Cell order:
# ╠═4881e718-8e76-11eb-13cf-b118c32e8884
# ╠═ea874424-8e7a-11eb-26a0-6142e50510be
# ╠═b33ab3f6-8e76-11eb-11e4-fff27d9eb14d
# ╠═70c27c80-8e7c-11eb-119a-6b02ecaf203c
# ╠═8e7cc320-8e7c-11eb-227e-e30e4ce88a8e
# ╠═8bfd8512-8e7c-11eb-13d0-91a932a561b1
# ╠═addd5da6-8e7c-11eb-201b-6b858bff12af
# ╠═d0077374-8e7c-11eb-130f-ef7380832c8d
# ╠═1dd3e29c-8e7d-11eb-0399-03376263e10d
# ╠═3a42fb9c-8e7e-11eb-1692-11ddafe43b00
# ╠═8c04f714-8e7e-11eb-2ea4-b7d1ce17faa7
# ╠═abfc0aa8-8e7e-11eb-27a5-419266926705
# ╠═d56710bc-8e7f-11eb-0367-45dc1a016f45
# ╠═f5634492-8e7f-11eb-0d41-575acd3da4ee
# ╠═17e63aa8-8e80-11eb-12b9-11c91f765e54
# ╠═6d7000a8-8e80-11eb-22bc-29a903f3dd0b
