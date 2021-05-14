### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# ╔═╡ 9eeed4e9-4f3e-443d-96c3-260008f5772d
begin
	using Images
	md"""
	### Pergunta a relação ilustrada abaixo representa uma função?
	"""
end

# ╔═╡ 358dafb6-b4f8-11eb-0dcc-f5ac4c2a4cf7
md"""
# Introdução Funções
"""

# ╔═╡ f713a04f-0b6c-43c2-8381-0c935304cb0c
md"""
Informalmente, vamos começar entendendo uma função como "uma coisa que *transforma* (associa) uma coisa noutra coisa, sem deixar dúvidas."

Exemplos:

1. Função **suco** (de fruta) que transforma uma fruta num suco da mesma fruta.
2. Função **"fala inglês?"** que "transforma" uma pessoa na resposta *SIM* ou *NÃO*
3. Função **cotação** que tranforma um valor em dólar para um valor em real.
4. Função que recebe um tipo de grão e responde com quantas *ml* se faz um café
5. Função que recebe uma imagem e responde se há um gato ou não
6. Função que recebe uma imagem de um animal e responde o nome do animal


"""

# ╔═╡ 6885d53a-4db7-4405-a7a6-f88732cfb797
md"""
Mais formalmente, uma **função** é uma **relação** em que **para todo** elemento $x$ do primeiro conjunto (domínio) existe **um único** elemento $y$ do segundo conjunto (imagem).

Exemplo:

a) Função suco (de fruta) que transforma uma fruta num suco da mesma fruta.

A = {x | x é uma fruta da qual é possível fazer suco}
B = {y | y é um suco de fruta}


Esta relação é uma função, pois para cada fruta, há um único suco (o suco da própria fruta).

---

b)A relação seguidor definida na [aula anterior](https://matematica.pgdinamica.com/notebooks/mec012_relacoes.html) dentro do Instagram.

Esta relação não é uma função, porque cada pessoa pode seguir muitas outras pessoas. Então **não existe um único** $y$ (perfil do instagram) para cada $x$ (perfil do instagram).

---
c)Função *"fala inglês?"* que "transforma" uma pessoa na resposta SIM ou NÃO.

A = { x | x é uma pessoa nascida no Brasil }

B = {"Sim", "Não"}


De fato, é uma função, pois para todo pessoa nascida no Brasil, em um dado momento (o momento da pergunta), existe uma única resposta: ou a pessoa responde que fala inglês ("Sim") ou não ("Não").

---

d) Função que liga ou desliga uma lâmpada (move o interruptor).

Primeiro, precisamos modelar o problema, entender quem são os conjuntos e que relação estamos definindo.

Seja $T$ o conjunto de estados possíveis para uma lâmpada, podemos usar "lig" para representar o estado "ligada" e "Des", para o estado "Desligada". Temos que:

$$T = \{Lig, Des\}$$

Tomando o produto cartesiano de T consigo mesmo, temos:
$$T × T = \{(Lig, Lig), (Lig, Des), (Des, Lig), (Des, Des) \}$$

A função, portanto, fica definida como a relação que associa um estado ao estado oposto.

$$f = \{("ligada", "desligada"), ("desligada", "ligada")\}$$

---

e) A relação preço

Seja **S** um supermercado à sua escolha. Seja $A = \{ x | x $ é um produto dentro do supermercado S hoje $\}$ e $\mathbb{Q}$ o conjunto dos números racionais.

Seja R uma relação entre $A$ e $\mathbb{Q}$, de modo que R representa o preço do produto no dia.

**R é uma função?**

Neste caso, sim, pois dentro de um mesmo supermercado:
1. Todo produto tem um preço.
2. Não pode existir dois preços diferentes pro mesmo produto.

Contudo, observe que se perguntássemos "qual o preço de um produto" sem o contexto do local, não teríamos uma função, pois o mesmo produto pode ter preços diferentes em locais diferentes.

"""

# ╔═╡ 1390ee63-d84e-42fe-ba1f-61b80424e2ef
load("img/relacoes/relacaocirculo.jpg")

# ╔═╡ Cell order:
# ╟─358dafb6-b4f8-11eb-0dcc-f5ac4c2a4cf7
# ╟─f713a04f-0b6c-43c2-8381-0c935304cb0c
# ╟─6885d53a-4db7-4405-a7a6-f88732cfb797
# ╟─9eeed4e9-4f3e-443d-96c3-260008f5772d
# ╟─1390ee63-d84e-42fe-ba1f-61b80424e2ef
