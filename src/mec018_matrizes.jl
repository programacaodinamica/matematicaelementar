### A Pluto.jl notebook ###
# v0.14.8

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 5516caf1-8b20-4d5e-b542-02f0dce6cd01
using Plots, Images, LinearAlgebra

# ╔═╡ efde35e6-ebc3-11eb-1eed-55ae081ac4db
md"""
# Matrizes

Podemos entender uma matriz como uma forma de representar um conjunto de valores em um formato parecido com uma tabela. Uma matriz A $n \times m$ é uma matriz que tem $n$ *linhas* e $m$ *colunas*. Quando $n = m$, dizemos que a matriz é **quadrada**.

###### Exemplos:

a)

$$\begin{pmatrix}
 1 & 2\\
 3 & 4

\end{pmatrix}$$

b) uma matriz quadrada em que os elementos da diagonal são iguais a 1 e os demais elementos, iguais a zero, é chamada de matriz **identidade**.

$$\begin{pmatrix}
 1 & 0 & 0\\
 0 & 1 & 0\\
 0 & 0 & 1

\end{pmatrix}$$

c) Matrix $2 \times 3$ (2 linhas e 3 colunas)

$$\begin{pmatrix}
 1 & 0 & 3\\
 0 & 2 & 0\\

\end{pmatrix}$$

d) Matriz $1 \times 4$

$$\begin{pmatrix}
 1 \\
 4 \\
 7 \\
 9 \\

\end{pmatrix}$$

"""

# ╔═╡ ac9844bd-4508-41cd-8184-05b9ebceba18
md"""
## Operações com matrizes

Seja M uma matriz

$$\begin{pmatrix}
 a_{11} & a_{12} & a_{13}\\
 a_{21} & a_{22} & a_{23}\\
 a_{31} & a_{32} & a_{33}

\end{pmatrix}$$


### Soma e subtração

Para realizar soma e subtraçao de matrizes, precisamos que as matrizes tenham a mesma quantidade de linhas e de colunas. Sejam A e B duas matriz compatíveis, então o resultado da soma A + B vai ser uma matriz em que cada entrada da matriz na posição i,j tem a seguinte forma:

$$c_{ij} = a_{ij} + b_{ij}$$

Exemplos:


$$\begin{pmatrix}
 1 & 2\\
 3 & 4
\end{pmatrix} + 

\begin{pmatrix}
 -7 & 7\\
 1 & 0

\end{pmatrix} =

\begin{pmatrix}
 -6 & 9\\
 4 & 4

\end{pmatrix}$$


Obs: a **matriz nula** é o elemento neutro da soma de matrizes. Matriz nula é a matriz em que todas as entradas são zero.

$$\begin{pmatrix}
 1 & 2\\
 3 & 4
\end{pmatrix} + 

\begin{pmatrix}
 0 & 0\\
 0 & 0

\end{pmatrix} =

\begin{pmatrix}
 1 & 2\\
 3 & 4

\end{pmatrix}$$

"""

# ╔═╡ 5ba0184a-a5b5-4fc2-999e-6c9e50eb8008
begin 
	A = [
		1 2
		3 4
	]
	B = [
		-7 7
		1 0
	]
end

# ╔═╡ 6f76b0fd-2559-41cc-af9b-07744a231d58
A + B

# ╔═╡ 0ff952bf-4a21-4928-b142-d5ce125b4b45
md"""
### Transposição

Uma operação específica de matrizes, que não vimos semelhante até o momento, é a operação de transposição. A matriz transposta de uma matriz $A$ é a matriz $A^{T}$ e as entradas de $A^{T}$ são iguais às entradas de $A$ com as posições de linhas e colunas invertidas.

###### Exemplos

A transposta da matriz $$\begin{pmatrix}
 1 & 0 & 3\\
 0 & 2 & 0\\

\end{pmatrix}$$ é a matriz $$\begin{pmatrix}
 1 & 0 \\
 0 & 2 \\
 3 & 0
\end{pmatrix}$$


"""

# ╔═╡ f2c3641a-b74d-4073-9121-6435fa002dea
transpose(A)

# ╔═╡ 82143165-ea72-4956-aae3-0c2700add346
transpose(A + B)

# ╔═╡ 3c6b6481-bb61-4f25-9985-f952ca1c117d
md"""
### Multiplicação

A multiplicação entre duas matrizes $A$ e $B$ não é igual à multiplicaçnao de seus elementos correspondentes, tal como fizemos na soma. Para multiplicar duas matrizes $A$ e $B$, precisamos que o número de colunas de $A$ seja igual ao número de linhas de $B$. Seja $C = A \times B$, se A for $n \times m$ (n linhas e m colunas) e $B$ for uma matriz que tem $m \times p$ (m linhas e p colunas), então a matriz $C$ será $n \times p$ ($n$ linhas e $p$ colunas) e cada entrada $i, j$ de $C$ tem a forma:

$$c_{ij} = \sum_{k=1}^m(a_{ik} * b_{kj})$$

###### Exemplos:


$$\begin{pmatrix}
 1 & 2\\
 3 & 4
\end{pmatrix} \times 

\begin{pmatrix}
 -7 & 7\\
 1 & 0

\end{pmatrix} =

\begin{pmatrix}
 -5 & 7\\
 -17 & 21

\end{pmatrix}$$

"""

# ╔═╡ 0104e44a-4fa0-4121-ab7c-8ba1d92f4bbd
A * B

# ╔═╡ 064117b6-c952-4228-813a-00e6af29b2be
md"""
Em geral, $A \times B \neq B \times A$, ou seja, **a multiplicação de matrizes não é comutativa**.

Obs: quando compatível, a **matriz identidade** é o elemento neutro da multiplicação de matrizes.


$$\begin{pmatrix}
 1 & 2\\
 3 & 4
\end{pmatrix} \times 

\begin{pmatrix}
 1 & 0\\
 0 & 1

\end{pmatrix} =

\begin{pmatrix}
 1 & 2\\
 3 & 4

\end{pmatrix}$$

"""

# ╔═╡ 4590c032-9a1a-4420-8513-8f2af631ae87
md"""
## Imagens
"""

# ╔═╡ 86410060-b4f9-468b-bf5c-ed5f543c548b
html"""<iframe width="560" height="315" src="https://www.youtube.com/embed/T9V_axU6jU8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>"""

# ╔═╡ 85540a1b-50c5-408d-bde5-7675b924af8f
img0 = [
	RGB(0.0, 0.0, 0.5) RGB(0.5, 0.0, 0.0)
	RGB(0.0, 0.5, 0.0) RGB(0.0, 0.5, 0.5)
	]

# ╔═╡ 4f9d6570-0379-4351-b35f-f0bbf4d46fad
function circulo(linhas, colunas, r)
	img = RGB.(zeros(linhas, colunas))
	for i in 1:linhas
		for j in 1:colunas
			if (i - linhas/2)^2 + (j - colunas/2)^2 - r^2 ≤ 0
				img[i, j] = RGB(1.0, 1.0, 1.0)
			end
		end
	end
	img
end

# ╔═╡ 08bd0c91-b06b-41ed-b788-911015b17a53
circulo(300, 400, 100)

# ╔═╡ 456872ff-5d5b-4533-99e0-c078daa69813
md"""
## Matrizes como funções

### Norma (comprimento de um vetor)

Podemos pensar em um ponto no espaço (por exemplo, no Plano Cartesiano) como uma matriz $V$ $n \times 1$ e, assim, podemos calcular o quadrado do comprimento do vetor que une a origem ao ponto pelo produto de $V^{T} \times V$.

###### Exemplo:


$$V = \begin{pmatrix}
 2\\
 3
\end{pmatrix}$$ 

Então: $V^{T} \times V$

$$\begin{pmatrix}
 2 & 3
\end{pmatrix}\times 

\begin{pmatrix}
 2\\
 3
\end{pmatrix} =

13$$

"""

# ╔═╡ 11541c02-8ad0-41c1-9fe1-c0be1b60a1ad
md"""
### Rotação no plano

Uma rotação de um ângulo $\theta$ no plano (em 2D) pode ser representada por uma matriz com a seguinte forma:


$$\begin{pmatrix}
 cos\theta & -sen\theta\\
 sen\theta & cos\theta
\end{pmatrix}$$

"""

# ╔═╡ c77c93c6-63d7-4811-8b4d-8eed576d371e
function rotacao(θ)
	[
	 cos(θ) -sin(θ)
	 sin(θ) cos(θ)
	]
end

# ╔═╡ c070a7c3-d38d-4bd8-a3e1-e9de28ec32c4
function quadrado(linhas, colunas, r, matriz=I)
	img = RGB.(zeros(linhas, colunas))
	for i in 1:linhas
		for j in 1:colunas
			x, y = matriz * [i - linhas/2, j - colunas/2]
			if max(abs(x), abs(y)) - r ≤ 0
				img[i, j] = RGB(1.0, 1.0, 1.0)
			end
		end
	end
	img
end

# ╔═╡ a0a37143-b6c8-44a5-80bb-e1bd5818a21d
@bind θ html"""<input type="range" min="0" max="180" value="0" id="myRange">"""

# ╔═╡ 6602d748-55cd-4811-8fdc-690a077ed0ec
"Ângulo: $θ º"

# ╔═╡ add9b83c-104d-4375-8d28-91b726b6e3e9
quadrado(300, 400, 50, rotacao(θ/180 * π))

# ╔═╡ Cell order:
# ╠═5516caf1-8b20-4d5e-b542-02f0dce6cd01
# ╟─efde35e6-ebc3-11eb-1eed-55ae081ac4db
# ╟─ac9844bd-4508-41cd-8184-05b9ebceba18
# ╠═5ba0184a-a5b5-4fc2-999e-6c9e50eb8008
# ╠═6f76b0fd-2559-41cc-af9b-07744a231d58
# ╟─0ff952bf-4a21-4928-b142-d5ce125b4b45
# ╠═f2c3641a-b74d-4073-9121-6435fa002dea
# ╠═82143165-ea72-4956-aae3-0c2700add346
# ╟─3c6b6481-bb61-4f25-9985-f952ca1c117d
# ╠═0104e44a-4fa0-4121-ab7c-8ba1d92f4bbd
# ╟─064117b6-c952-4228-813a-00e6af29b2be
# ╟─4590c032-9a1a-4420-8513-8f2af631ae87
# ╟─86410060-b4f9-468b-bf5c-ed5f543c548b
# ╠═85540a1b-50c5-408d-bde5-7675b924af8f
# ╠═4f9d6570-0379-4351-b35f-f0bbf4d46fad
# ╠═08bd0c91-b06b-41ed-b788-911015b17a53
# ╟─456872ff-5d5b-4533-99e0-c078daa69813
# ╟─11541c02-8ad0-41c1-9fe1-c0be1b60a1ad
# ╠═c77c93c6-63d7-4811-8b4d-8eed576d371e
# ╠═c070a7c3-d38d-4bd8-a3e1-e9de28ec32c4
# ╠═a0a37143-b6c8-44a5-80bb-e1bd5818a21d
# ╠═6602d748-55cd-4811-8fdc-690a077ed0ec
# ╠═add9b83c-104d-4375-8d28-91b726b6e3e9
