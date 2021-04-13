### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# ╔═╡ 6f2eb322-c7e1-4676-a90e-532781733d6c
begin 
	using Images
	load("img/exp/potraiz.png")
end

# ╔═╡ ff2babc8-53f3-4da3-9e6a-06bb1bdfca3f
using Plots

# ╔═╡ 3648e4be-9977-11eb-1caa-256e67a4a1ca
md""" 
# Potenciação e Radiciação

Até o momento, já vimos que existe uma relação entre a operação de soma (ou adição) e a operação de subtração. Considerando os números negativos, uma subtração pode ser interpretada como uma adição entre um número e o oposto aditivo do outro número.:

$$6 - 5 = 6 + (-5)$$



Também vimos que há uma relação entre a multiplicação e a divisão, pois podemos considerar uma divisão como o produto de um número e o inverso multiplicativo do outro.

$$8 ÷ 2 = 8 * \frac{1}{2}$$

Também é intuitivo perceber que uma multiplicação pode ser vista como uma sequência de somas:

$ 5 × 7 = 7 + 7 + 7 + 7 + 7 $

(somar 7 cinco vezes)

Agora, vamos introduzir duas outras operações e ver como elas se relacionam com o que já conhecemos.

"""

# ╔═╡ a9408f25-52d6-4f53-a7b9-d1205d1e7a7b
md"""
## Potenciação

Podemos começar a entender a **potenciação** como a operação que multiplica um número por ele mesmo uma determinada quantidade de vezes. Essa quatidade determinada de vezes, a gente chama de potência ou expoente.


###### Notação:

Se eu quero dizer que o número 2 está multiplicado por ele mesmo 3 vezes, usamos $2^3$ para representar esta operação. **Leitura: 2 elevado a 3; 2 elevado ao expoente 3; ou 2 elevado à terceira potência**.

Em $a^b$ (a elevado a b), chamamos:
* **a** de base
* **b** de expoente


"""

# ╔═╡ 633ad8f0-2a42-4ff5-916e-6a441e4d3675
md"""#### Pergunta: Quanto vale $2^0$?

Por definição, diremos que qualquer número *diferente de zero* elevado ao expoente 0 resulta em 1. Assim: 

$$2^0 = 1$$ 

É importante notar que 0 (zero) elevado a qualquer expoente positivo resulta em zero. Veremos operações com expoentes negativos no futuro.


"""

# ╔═╡ ce29919e-24ec-44f8-abbb-174532c7acce
# operação de exponenciação em Julia
2^0

# ╔═╡ 533f86db-bd9a-4600-bf04-a3b165aab395
3^4

# ╔═╡ 69ea2f99-7016-47d3-a00d-ab51629f09b6
md"""
## Radiciação

Podemos começar$^1$ a entender a radiciação como é a operação que busca um número que quando multiplicado por ele mesmo uma quantidade de vezes igual ao índice da raiz resulta no número dentro da raiz.

###### Notação

Em $\sqrt[\leftroot{-3}\uproot{3}p]{a}$, temos que:
* **a** é o radicando
* **p** é o índice da raiz
* O símbolo $\sqrt{-}$ é chamado de radical

Quando o radicando não é especificado, entendemos implicitamente que é o número 2. 

###### Exemplos

a) $\sqrt{9} = 3$, pois $3 \times 3 = 9$

b) $\sqrt[\leftroot{-3}\uproot{3}3]{125} = 5$, pois $5 \times 5 \times 5 = 125$

c) $\sqrt[\leftroot{-3}\uproot{3}5]{32} = 2$, pois $2 \times 2 \times 2 \times 2 \times 2 = 32$


Repare que existe uma relação entre a potenciação e a radiciação:

A) $\sqrt{9} = 3  \Longleftrightarrow 3 \times 3 = 9 \Longleftrightarrow 3^2 = 9$

B) $\sqrt[\leftroot{-3}\uproot{3}3]{125} = 5 \Longleftrightarrow 5 \times 5 \times 5 = 125 \Longleftrightarrow 5^3 = 125$

C) $\sqrt[\leftroot{-3}\uproot{3}5]{32} = 2 \Longleftrightarrow 2 \times 2 \times 2 \times 2 \times 2 = 32 \Longleftrightarrow 2^5 = 32$

"""

# ╔═╡ b7edf8e1-2875-4f9e-be9c-f7e446c44915
md"""
Números cujo valor absoluto seja maior que 1 podem crescer muito rápido quando elevados a expoentes positivos.
"""

# ╔═╡ 348b6cf6-c99d-4fdc-87cf-f13e3ea835f1
load("img/exp/potcresce.png")

# ╔═╡ a5a5f8b2-e2e8-469f-b9be-2da9c57af104
md"""
Números com valor absoluto entre 0 e 1 podem decrescer muit rápido quando elevados a expoentes positivos.
"""

# ╔═╡ 9ff0da1f-4bff-4faf-8730-d258845177d1
load("img/exp/potdiminui.png")

# ╔═╡ 20a5345c-39ee-41d4-b53d-fb7a88d92d9e
md"""
--------
 $^1$ Usamos a expressão "começar a entender", porque essas ideias podem ser extendidas  matematicamente de modo não tão intuitivo de contar. Por exemplo, podemos ter um número como 3,1415 elevado a um expoente como -2,71. Quando abordarmos outros assuntos da matemática essas noções farão mais sentido.

-------

"""

# ╔═╡ ea6f9a30-63d9-4b78-9022-4740d96b025e
md"""
### Para refletir

Seja *Acinetobacter* uma bactéria que se reproduz de modo que a cada minuto ela dobra a sua população. Coloca-se uma quantidade desta bactéria em um pote às 11:00h da manhã. Às 11:59h, o pote está repleto pela metade de sua capacidade desta bactéria. A que horas o pote estará completamente cheio? 

"""

# ╔═╡ e3d0fb8a-abd0-426e-9f21-5479b6deca63
md""" $1 = 2^0$

$2 = 2^1$
$4 = 2^2$
$8 = 2^3$
$16 = 2^4$
(...)

$256 = 2^8$
"""


# ╔═╡ 20a2ec89-16ff-4bdc-b5f8-3a436d34786d
md"""Resposta: ao meio dia (no minuto seguinte). A resposta independe do tamanho do pote."""

# ╔═╡ 83f64800-433a-4079-a422-1bbd502dfcae
begin
	x = 1:14
	y = map(x -> 2^x, x)
	plot(x, y)
end

# ╔═╡ Cell order:
# ╟─3648e4be-9977-11eb-1caa-256e67a4a1ca
# ╟─a9408f25-52d6-4f53-a7b9-d1205d1e7a7b
# ╟─633ad8f0-2a42-4ff5-916e-6a441e4d3675
# ╠═ce29919e-24ec-44f8-abbb-174532c7acce
# ╠═533f86db-bd9a-4600-bf04-a3b165aab395
# ╟─69ea2f99-7016-47d3-a00d-ab51629f09b6
# ╟─6f2eb322-c7e1-4676-a90e-532781733d6c
# ╟─b7edf8e1-2875-4f9e-be9c-f7e446c44915
# ╟─348b6cf6-c99d-4fdc-87cf-f13e3ea835f1
# ╟─a5a5f8b2-e2e8-469f-b9be-2da9c57af104
# ╟─9ff0da1f-4bff-4faf-8730-d258845177d1
# ╟─20a5345c-39ee-41d4-b53d-fb7a88d92d9e
# ╟─ea6f9a30-63d9-4b78-9022-4740d96b025e
# ╟─e3d0fb8a-abd0-426e-9f21-5479b6deca63
# ╟─20a2ec89-16ff-4bdc-b5f8-3a436d34786d
# ╠═ff2babc8-53f3-4da3-9e6a-06bb1bdfca3f
# ╠═83f64800-433a-4079-a422-1bbd502dfcae
