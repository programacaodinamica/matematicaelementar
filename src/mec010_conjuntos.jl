### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# ╔═╡ bb86d73a-a3ca-11eb-234e-0990b0527d0d
md""" # Conjuntos
"""

# ╔═╡ 74082994-292f-4ff7-953c-449f9ca77124
md"""
### Conjunto, elemento e pertinência

1. Letras do alfabeto
2. Jogadores de um time de futebol
3. Estados que compõem o Brasil
4. Símbolos de um sistema numérico
5. Contos escritos por Machado de Assis

Cada parte individual dentro do agrupamento (conjunto) é um elemento do conjunto.

Dizemos que um elemento pertence ao conjunto se ele faz parte deste agrupamento. Caso contrário, dizemos que o elemento não pertence ao conjunto.

* Relação de pertinência é representada pelo símbolo ∈

"""

# ╔═╡ caefc41f-c271-440b-a98d-0902060b27da
md"""
### Descrição de conjuntos 

Nos exemplos acima descrevemos conjuntos a partir de propriedades que seus elementos têm que respeitar.

Podemos também enumerar os elementos de um conjuntos:

1. Ex: letras do alfabeto = $\{a, b, c, d, e, f, g, h, i, j , k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z \}$

2. Números pares entre 0 e 200 inclusive: $\{0, 2, 4, 6, ..., 198, 200\}$


Por descrição
1. Animes = $\{x | x$ é um anime $\}$

2. \{c | c é um município brasileiro \}
3. \{x | x é o resultado de um jogo do campeonato brasileiro de 2019\}

"""

# ╔═╡ a49946f8-f95b-4848-afa0-9c279c08f7c9
md"""

A = {x | x é um anime }

Naruto ∈ A?

=> Sim. É verdade que Naruto ∈ A.

Karatê Kid ∈ A ?

=> Não. Karatê Kid ∉ A


"""

# ╔═╡ df3f6c8a-567e-4680-92d5-f413b984e5d7
md"""
### Subconjuntos

B = { x | x é um anime shounen }

* Naruto ∈ B. 
* Naruto ∈ A
* B ⊂ A. 
* A ⊃ B
* {Naruto} ⊂ B ⊂ A
* {Naruto} ⊂ A

M = { x | x é um vídeo sobre machine learning no Youtube}

N = { y | y é um vídeo gravado pela Kizzy e publicado no Youtube}

N ⊂ M ? 

=> Não! N ⊄ M


"""

# ╔═╡ aff54249-1552-42f7-8e47-644dde91c7fb
md"""
##### Listando todos os subconjuntos de um conjunto
W = {7, 9, 10}

Subconjuntos de W são:

* {}, {7}, {9}, {10}, {7, 9}, {7, 10}, {9, 10}, {7, 9, 10}
"""

# ╔═╡ 71124dde-02d7-4d0c-88d3-fc75e96051b0
md"""
##### Pra conferir se está entendendo

A = {{1, 2, 3}, 1, 2, 3}

B = {1, 2, 3}

A = {B, 1, 2, 3}

{1, 2, 3} ∈ A

{1, 2, 3} ⊂ A


"""

# ╔═╡ ca4e38ef-4a87-4567-8604-546bff47a87f
md"""
### Operações
"""

# ╔═╡ 9b8bd5f4-9453-420c-bb49-a3421fdca0a1
md"""
#### União de conjuntos

O resultado da união entre dois conjuntos é um novo conjunto com todos os elementos que pertencem ao primeiro conjunto e todos os elementos que pertencem ao segundo conjunto.

A ∪ B = { x | x ∈ A ou x ∈ B}

Exemplo:

A = {1, 2, 3, 4};
B = {2, 4, 6, 8}

A ∪ B = {1, 2, 3, 4, 6, 8}

"""

# ╔═╡ 27a4f8ec-8871-4647-9f84-0fd6ae6d6c98
md"""
**Note que A ⊂ A ∪ B; e também B ⊂ A ∪ B.**
"""

# ╔═╡ 221944ec-ca9f-4365-bd96-068d8e3614e5
md"""
#### Interseção de conjuntos

O resultado da interseção entre dois conjuntos é um novo conjunto com todos os elementos que pertencem simultaneamente ao primeiro e ao segundo conjunto.

A ∩ B = { x | x ∈ A **e** x ∈ B}

Exemplo:

A = {1, 2, 3, 4};
B = {2, 4, 6, 8}

A ∩ B = {2, 4}



"""

# ╔═╡ 89f1cdb7-57f0-4b05-b147-b12d359f45b5
md"""
**Note que (A ∩ B) ⊂ A; assim como (A ∩ B) ⊂ B.**
"""

# ╔═╡ 0759bc8c-c2d2-48b8-aa8d-986bd589df8f
md"""
A interseção pode ser vazia.

A = { x | x é ímpar }
B = { x | x é par }

A ∩ B = {}

{} ⊂ A, {} ⊂ B

"""

# ╔═╡ 18930678-7412-4600-bf5e-3961b34418b5
md"""
#### Diferença de conjuntos A - B (ou A\B)

A - B = { x | x ∈ A e x ∉ B}

Exemplo:

A = {1, 2, 3, 4}; B = {2, 4, 6, 8}

A - B = {1, 3}

"""

# ╔═╡ 24ca69d9-8b73-4068-9612-749d46df82f8
begin
	A = Set(1:100)
	B = Set(50:2:150)
end

# ╔═╡ 64a742b6-b243-4c76-a786-d92321782c11
A ∩ B

# ╔═╡ 4366046a-14fa-4f2a-8ab6-ef23588db920
A ∪ B

# ╔═╡ 4a6fde66-3599-46c9-8576-0fc9b8a9c60b
20 ∈ A

# ╔═╡ 2f612662-c488-470d-9dc8-bf6305690d45
20 ∈ B

# ╔═╡ 55728a01-072c-4fe0-9fb4-a3499d3d3e32
Set([1, 2, 3]) ⊆ A

# ╔═╡ 8fef7e6c-df1b-487c-bdc3-2be21516ae5f
(A ∩ B) ⊆ A && (A ∩ B) ⊆ B

# ╔═╡ a4a01f15-6d93-4cd5-b613-dbe885f491cd
(A ∪ B) ⊇ A && B ⊆ (A ∪ B)

# ╔═╡ ce0d8100-3557-4843-b286-efd5dd76e609
# diferença
setdiff(A, B)

# ╔═╡ Cell order:
# ╟─bb86d73a-a3ca-11eb-234e-0990b0527d0d
# ╟─74082994-292f-4ff7-953c-449f9ca77124
# ╟─caefc41f-c271-440b-a98d-0902060b27da
# ╟─a49946f8-f95b-4848-afa0-9c279c08f7c9
# ╟─df3f6c8a-567e-4680-92d5-f413b984e5d7
# ╟─aff54249-1552-42f7-8e47-644dde91c7fb
# ╟─71124dde-02d7-4d0c-88d3-fc75e96051b0
# ╟─ca4e38ef-4a87-4567-8604-546bff47a87f
# ╟─9b8bd5f4-9453-420c-bb49-a3421fdca0a1
# ╟─27a4f8ec-8871-4647-9f84-0fd6ae6d6c98
# ╟─221944ec-ca9f-4365-bd96-068d8e3614e5
# ╟─89f1cdb7-57f0-4b05-b147-b12d359f45b5
# ╟─0759bc8c-c2d2-48b8-aa8d-986bd589df8f
# ╟─18930678-7412-4600-bf5e-3961b34418b5
# ╠═24ca69d9-8b73-4068-9612-749d46df82f8
# ╠═64a742b6-b243-4c76-a786-d92321782c11
# ╠═4366046a-14fa-4f2a-8ab6-ef23588db920
# ╠═4a6fde66-3599-46c9-8576-0fc9b8a9c60b
# ╠═2f612662-c488-470d-9dc8-bf6305690d45
# ╠═55728a01-072c-4fe0-9fb4-a3499d3d3e32
# ╠═8fef7e6c-df1b-487c-bdc3-2be21516ae5f
# ╠═a4a01f15-6d93-4cd5-b613-dbe885f491cd
# ╠═ce0d8100-3557-4843-b286-efd5dd76e609
