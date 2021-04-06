### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# ╔═╡ 66c838ba-fbe5-4db6-bb76-a040ac9a42ed
using Images

# ╔═╡ a7ef7ebd-cfe3-4d24-a495-f371bfb4d08e
using Formatting

# ╔═╡ 4881e718-8e76-11eb-13cf-b118c32e8884
md"# Porcentagem"

# ╔═╡ ea874424-8e7a-11eb-26a0-6142e50510be
md"""Podemos entender um valor em porcentagem, representado ao lado do símbolo %, como uma fração cujo denominador é 100 e o numerador é igual ao número ao lado do símbolo % (o valor da porcentagem)

Exemplos:

a) 10% corresponde à fração $\frac{10}{100}$

b) 7,5% corresponderia à fração $\frac{7,5}{100}$ 

Contudo, vimos que uma fração é uma razão entre dois números inteiros e 7,5 não é inteiro. Então se quisermos olhar 7,5% como uma fração podemos multiplicar e dividir o denominador por um mesmo valor até termos uma razão entre inteiros. Por exemplo, aplicar uma aliquota de 7,5% de imposto sobre um salário de 1100 reais, corresponde a R\$82,50. 

De maneira equivalente, poderíamos ter multiplicado 1100 pela fração $\frac{3}{40}$.

"""

# ╔═╡ 2bb10d72-9156-4d81-abb0-0ef57fdaa412
load("img/fracoes/porcentagem2.jpg")

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

# ╔═╡ 231cd191-0274-4d71-9a24-dd278fadb382
md"""
## Comunicando com porcentagem

Quem me segue pelo Instagram ([@hallpaz](https://instagram.com/hallpaz)), pode ter visto um story com a mensagem abaixo, compartilhado enquanto eu jogava Mortal Kombat 11.
"""

# ╔═╡ ebb34083-7029-49cf-8e25-fd450ff70558
load("img/mk11percent.jpeg")

# ╔═╡ 204ab4d7-c1b0-4022-a483-de57e8fb6dbc
md"""
##### Como o jogo calculou o percentual de desempenho mostrado?
"""

# ╔═╡ 1dd3e29c-8e7d-11eb-0399-03376263e10d
md"""
Suponha uma situação em que temos 10 jogadores em um jogo. Ao final de cada partida, cada jogador recebe uma pontuação e, num dado momento temos o seguinte resultado acumulado:

| jogador | pontos |
| :-----: | :-----:|
| J1 	  | 1000   |
| J2 	  | 900    |
| J3 	  | 800    |
| J4 	  | 700    |
| J5 	  | 600    |
| J6 	  | 500    |
| J7 	  | 400    |
| J8 	  | 300    |
| J9 	  | 200    |
| J10 	  | 100    |

Depois de algumas partidas, eu alcanço a soma de 250 pontos.

| jogador  | pontos |
| :-----:  | :-----:|
| (...)    | (...)  |
| J8 	   | 300    |
| Hallison | 250    |
| J9 	   | 200    |
| J10 	   | 100    |

Para comunicar este resultado, podemos olhar o ranking de cima para baixo, a partir dos melhores, ou de baixo para cima, a partir dos piores jogadores.

Temos que o meu desempenho no jogo foi melhor que 2 jogadores dentre os 10 que jogaram$^1$ e pior que o desempenho dos demais 8 jogadores.

**Olhando de baixo para cima**, pode-se dizer que eu estou junto aos **20% piores** jogadores:

$\frac{2}{10} = \frac{20}{100} = 20\%$


**Olhando de cima para baixo**, pode-se dizer que eu estou junto aos **80% melhores** jogadores:

$\frac{8}{10} = \frac{80}{100} = 80\%$

 $^1$ *poderíamos considerar 11 jogadores, incluíndo o jogador que recebe o resultado, mas preferimos manter a conta mais simples. Em uma situação com muitos jogadores, como o exemplo abaixo, o impacto de somar ou subtrair 1 jogador é muito pequeno quando analisado em porcentagem.*

"""


# ╔═╡ 3a42fb9c-8e7e-11eb-1692-11ddafe43b00
md"""
###### Usando um exemplo com números maiores: 

Suponha que temos 854.732 jogadores de Mortal Kombat 11. Neste cenário, Hallison soma 25.000 pontos. No entanto, 689.432 jogadores realizam mais de 25.000 pontos. Como comunicar o desempenho de Hallison em relação ao total de jogadores de MK11?
"""

# ╔═╡ 8c04f714-8e7e-11eb-2ea4-b7d1ce17faa7
md"""
Olhando de cima para baixo (entre os melhores), temos que:

$\frac{689432}{854732} = 80.66\%$

**Estaria entre os 80.66% melhores!**

"""

# ╔═╡ d56710bc-8e7f-11eb-0367-45dc1a016f45
md"""
Olhando de baixo para cima (entre os piores) temos:

$\frac{854732 - 689432}{854732} = 0.1934 = 19.34\%$

ou, ainda, poderíamos ter calculado:

$100\% - 80.66\% = 19.34\%$

O que é o numericamente **equivalente a estar entre os 19.34% piores**. Contudo, comunicar que você está entre os melhores, ainda que não seja no topo, pode ter um impacto mais motivacional xD
"""


# ╔═╡ aaf42716-e1f0-4ea2-84f7-3584f2b980a5
load("img/fracoes/porcentagem1.jpg")

# ╔═╡ Cell order:
# ╟─4881e718-8e76-11eb-13cf-b118c32e8884
# ╟─ea874424-8e7a-11eb-26a0-6142e50510be
# ╟─2bb10d72-9156-4d81-abb0-0ef57fdaa412
# ╟─b33ab3f6-8e76-11eb-11e4-fff27d9eb14d
# ╠═70c27c80-8e7c-11eb-119a-6b02ecaf203c
# ╟─8e7cc320-8e7c-11eb-227e-e30e4ce88a8e
# ╠═8bfd8512-8e7c-11eb-13d0-91a932a561b1
# ╟─addd5da6-8e7c-11eb-201b-6b858bff12af
# ╠═d0077374-8e7c-11eb-130f-ef7380832c8d
# ╟─66c838ba-fbe5-4db6-bb76-a040ac9a42ed
# ╟─231cd191-0274-4d71-9a24-dd278fadb382
# ╟─ebb34083-7029-49cf-8e25-fd450ff70558
# ╟─204ab4d7-c1b0-4022-a483-de57e8fb6dbc
# ╟─1dd3e29c-8e7d-11eb-0399-03376263e10d
# ╟─3a42fb9c-8e7e-11eb-1692-11ddafe43b00
# ╟─a7ef7ebd-cfe3-4d24-a495-f371bfb4d08e
# ╟─8c04f714-8e7e-11eb-2ea4-b7d1ce17faa7
# ╟─d56710bc-8e7f-11eb-0367-45dc1a016f45
# ╟─aaf42716-e1f0-4ea2-84f7-3584f2b980a5
