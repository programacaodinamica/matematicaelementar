### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ de75b3ae-0cdb-11ec-39b2-0b18f53daf36
md"""
# Análise Combinatória

## Vídeo da aula

Você pode acessar, gratuitamente, a gravação da última semana aqui neste site. Se você acha este trabalho relevante, [considere apoiar o nosso canal como membro](https://youtube.com/join) e tenha acesso a *todas* as gravações das aulas ao vivo nas categorias **ESPRESSO** e **CAPUCCINO**. 

###### ▶️ [Gravação da aula de 3 de setembro de 2021](https://youtu.be/UYYmBiZdo4M)

"""

# ╔═╡ 76ca6d51-469e-4f43-8603-92687d2aeb1a
# representação de números inteiros
typemin(Int32)

# ╔═╡ 24e194cb-6a03-4f66-bf49-4999ce6700e7
typemax(Int32)

# ╔═╡ 4811bf45-bd23-4c14-bd94-7b3fa824b715
md"""
#### Arranjo com repetição

Seja M um conjunto com m elementos, isto é, $M = \{a_1, a_2, ..., a_m\}$. Chamamos **arranjo com repetição** dos $m$ elementos, tomados $r$ a $r$, toda r-upla ordenada **(sequência de tamanho r)** formada com elementos de $M$ **não necessariamente distintos**.
"""

# ╔═╡ b75c5029-48e1-49ff-805d-5810fec87040
md"""
Total de sequências possíveis:
$$m^r$$

Exemplo:
###### Quantas cores é possível representar com 24 bits?

Resposta: $2^{24}$
"""

# ╔═╡ ea4cfe4a-d927-4f96-929c-165f4a9d9c19
md"""
## Arranjo

Seja $M$ um conjunto com $m$ elementos, isto é, $M = {a_1, a_2, ..., a_m}$. Chamamos de arranjo dos $m$ elementos tomados $r$ a $r$ ($1 ⩽ r ⩽ m$) a qualquer r-upla (sequência de $r$ elementos) formada com elementos de $M$, **todos distintos**.
"""

# ╔═╡ 85b0ef0f-dcd5-4198-8e16-98791a54c3f0
md"""
Quantidade total de sequências distintas:

$$\frac{m!}{(m-r)!}$$
"""

# ╔═╡ 287c078a-2ea9-4927-b2e1-b64d5fa63ced
md"""

###### Quantos divisores positivos o número 23456 tem?

![](https://raw.githubusercontent.com/programacaodinamica/matematicaelementar/main/src/img/combinatoria1.png)
"""

# ╔═╡ a28071f2-fac6-4543-b006-4110d04e6615
md"""

#### Permutação
Seja M um conjunto com m elementos, isto é, $M = \{a_1, a_2, ..., a_m\}$. Chamamos de
permutação dos m elementos a todo arranjo em que $r = m$.

Total de permutações:
$$m!$$

**Exemplo**:

![](https://raw.githubusercontent.com/programacaodinamica/matematicaelementar/main/src/img/combinatoria0.png)

"""

# ╔═╡ a532231b-0635-4f1f-b224-b29c9cdeab51
md"""

#### Combinação

Seja $M$ um conjunto com $m$ elementos, isto é, $M = {a_1, a_2, ..., a_m}$. Chamamos de combinações dos $m$ elementos, tomados $r$ a $r$, aos subconjuntos de $M$ constituídos de r elementos.

![](https://raw.githubusercontent.com/programacaodinamica/matematicaelementar/main/src/img/combinatoria2.png)
"""

# ╔═╡ ff498eb4-b943-4629-ad49-a8a6622ca573
md"""
###### De quantas formas diferentes podemos jogar na Mega Sena?
"""

# ╔═╡ Cell order:
# ╟─de75b3ae-0cdb-11ec-39b2-0b18f53daf36
# ╠═76ca6d51-469e-4f43-8603-92687d2aeb1a
# ╠═24e194cb-6a03-4f66-bf49-4999ce6700e7
# ╟─4811bf45-bd23-4c14-bd94-7b3fa824b715
# ╟─b75c5029-48e1-49ff-805d-5810fec87040
# ╟─ea4cfe4a-d927-4f96-929c-165f4a9d9c19
# ╟─85b0ef0f-dcd5-4198-8e16-98791a54c3f0
# ╟─287c078a-2ea9-4927-b2e1-b64d5fa63ced
# ╟─a28071f2-fac6-4543-b006-4110d04e6615
# ╟─a532231b-0635-4f1f-b224-b29c9cdeab51
# ╟─ff498eb4-b943-4629-ad49-a8a6622ca573
