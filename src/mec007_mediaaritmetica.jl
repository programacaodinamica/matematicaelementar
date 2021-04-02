### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# ╔═╡ 6a9155c5-e0a4-4406-9801-a8add213f2bb
using Images, Plots

# ╔═╡ 6122fbfd-53e2-4bfe-b902-c2a0373aa82c
md"""
# Médias Aritmética, Ponderada e Móvel como medidas relativas
"""

# ╔═╡ d90e3d6e-9797-4d0c-90be-fe8cd65c95ee
md"""Nós já vimos algumas formas de medidas relativas como frações e porcentagens. Este tipo de medida nos permite avaliar *uma quantidade em relação a um todo* e é muito útil, por exemplo, quando precisamos realizar comparações e comunicar resultados.

As médias também cumprem esse papel de criar medidas relativas entre valores. Todos esses conceitos que estamos vendo são muito importantes na construção e compreensão de estatísticas.

"""

# ╔═╡ a0ff676c-93d3-11eb-0186-87f60fcd525e
md"""## 1. Média Aritmética

A média aritmética também referida como média simples ou apenas média é uma forma de medida relativa que pode levar em consideração multiplos valores. Para calculá-la, devemos somar todos os valores e, então, dividir o resultado da soma pela quantidade de valores somados.

EXEMPLOS:

a) Média entre 2 e 8: $ (2 + 8) \div 2 = 4$

a) Média entre 12, 7, 9, 13 e 8: $ (12 + 7 + 9 + 13 + 8) \div 5 = $(sum([12, 7, 9, 13, 8])/5) $

Repare que podemos escrever a operação com a notação usada em frações:

c) Média entre 132, -22 e 76 = $ \frac{132 + (-22) + 76}{3} = \frac{186}{3} = $(186 ÷ 3) $

d) [PIB](https://pt.wikipedia.org/wiki/Lista_de_pa%C3%ADses_por_PIB_nominal) vs [PIB per capta](https://pt.wikipedia.org/wiki/Lista_de_pa%C3%ADses_por_PIB_nominal_per_capita): 

"""

# ╔═╡ 5ae31568-4955-4b05-9ec8-5cad4cd9fe28
md"""## 2. Média Ponderada (ou Média Aritmética Ponderada)

A média aritmética simples constrói um novo valor dando a mesma importância a todos os valores envolvidos na operação. No entanto, às vezes, precisamos atribuir graus de relevância diferentes aos valores envolvidos. Isto é feito por meio de *pesos*, números que usamos para multiplicar os valores envolvidos na média antes de somá-los. Por exemplo, para calcular o resultado de uma pessoa em um vestibular, precisamos agregar as notas de todas as provas em um único valor para a classificação - o que nos indica que faremos uma média. Contudo, é comum que essa agregação leve em consideração a área acadêmica pleiteada pela pessoa. 

EXEMPLOS:

**d)** No vestibular do [Instituto Militar de Engenharia](http://www.ime.eb.mil.br/pt/) (IME), a nota de matemática costuma ter uma relevância maior que as demais disciplinas, enquanto física e química também tem *pesos* maiores que português e inglês.

Digamos que o peso de matemática (M) seja 3, de física (F) e química (Q) sejam 2 e de português (P) e inglês (I) sejam 1, respectivamente. Poderíamos calcular a nota final da pessoa como:

$ \frac{3×M + 2×F + 2×Q + 1×P + 1×I}{3 + 2 + 2 + 1 + 1} = \frac{3×M + 2×F + 2×Q + P + I}{9}$

Se Kael T'challa obtém as notas da tabela a seguir:


| Matemática | Física 	  | Química 	| Português | Inglês 	 |
|:----------:|:----------:|:-----------:|:---------:|:----------:|
| 4,5 		 | 7,0 	 	  | 	6,7	    | 9,2 	    | 8,5 	   	 |

então a nota do Kael é: $ \frac{3×4,5 + 2×7,0 + 2×6,7 + 9,2 + 8,5}{9} = 6,51 $


**e)** Conversão de imagens em cores para escala de cinza
* Wikipedia: [Nível de cinza](https://pt.wikipedia.org/wiki/N%C3%ADvel_de_cinza)
* International Telecommunication Union ([ITU-R BT.601-7](https://www.itu.int/dms_pubrec/itu-r/rec/bt/R-REC-BT.601-7-201103-I!!PDF-E.pdf))
"""

# ╔═╡ 6c266629-21bc-4e62-a4d0-cd6f52c2a8dd
begin
html"""
<iframe width="560" height="315" src="https://www.youtube.com/embed/_3VcRHwZpPU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
"""
end

# ╔═╡ 9df249e3-7d63-4cb0-8c57-e1d29b88d63b
# Red (vermelho), Green (verde), Blue (azul)
R, G, B = 10, 20, 228

# ╔═╡ 8bacf077-1eca-46b8-acdb-f44f0f01d463
begin
	# média ponderada 0.299R 0.587G 0.114B
	c1 = 0.299*R + 0.587*G + 0.114*B
	# média simples
	c2 = (R + G + B)/3
end

# ╔═╡ 768bbf06-60f5-484b-935f-d7372b4dc77b
RGB(R/255, G/255, B/255)

# ╔═╡ 6221c5fb-9e37-4c48-b4f7-29ad37a7fe5a
RGB(c1/255, c1/255, c1/255), RGB(c2/255, c2/255, c2/255)

# ╔═╡ b54b386d-5ce7-40a3-a107-f82a084fedb9
md"""## 3. Média Móvel (ou Média Aritmética Móvel)

O que caracteriza uma média móvel é a necessidade de analisar uma quantidade fixa de valores que estão distribuídos, geralmente, ao longo do tempo ou do espaço. O termo passou a estar em evidência nos noticiários devido à pandemia do Coronavírus. Todo dia, há novas medidas de casos de pessoas infectadas e pessoas que morreram devido à doença. Podemos analisar a evolução desses números em pequenos espaços de tempo, também chamados de *janelas de medição* fazendo uma média, por exemplo, dos números considerando apenas os últimos 7 dias (1 semana).

Perceba que à medida que o tempo passa, essa janela de medição se move, pois amanhã excluiremos os dados do dia mais distante que usamos para a média de hoje e adicionaremos os dados que ainda serão coletados no dia de amanhã. O cálculo da média móvel dentro do intervalo considerado pode ser uma média simples ou uma média ponderada. Geralmente, quando nada é dito, é uma média simples, pois não há razão a priori para se atribuir um peso diferente para os valores.

Também podemos pensar em média móvel em relação ao espaço. Por exemplo, a média de infecções e óbitos na região Sul do país pode ser bem diferente da região Centro-Oeste.

Repare que a vantagem da média móvel é conseguir ter uma ideia agregada dos valores, tal como uma média, mas que ainda permita entender como que localmente (no espaço ou no tempo) aquele valor se compara com outros momentos ou espaços. Se fizéssemos uma média com todos os valores, perderíamos esta noção.

"""

# ╔═╡ d43e27be-9f4a-4fbe-81f5-edcdd1037ddf
begin
	x = 1:30; y = rand(30)
	plot(x, y)
end

# ╔═╡ eebf8438-64cc-4424-89da-bc458734e355
function mediamovel(valores, janela=5)
	n = length(valores)
	mm = []
	for i in janela:n
		append!(mm, sum(valores[i-4:i])/janela)
	end
	mm
end

# ╔═╡ dc4611e8-6dd3-485b-8fc3-0fe717214895
plot([x, x[5:end]], [y, mediamovel(y)])

# ╔═╡ Cell order:
# ╟─6a9155c5-e0a4-4406-9801-a8add213f2bb
# ╟─6122fbfd-53e2-4bfe-b902-c2a0373aa82c
# ╟─d90e3d6e-9797-4d0c-90be-fe8cd65c95ee
# ╟─a0ff676c-93d3-11eb-0186-87f60fcd525e
# ╟─5ae31568-4955-4b05-9ec8-5cad4cd9fe28
# ╟─6c266629-21bc-4e62-a4d0-cd6f52c2a8dd
# ╠═9df249e3-7d63-4cb0-8c57-e1d29b88d63b
# ╠═8bacf077-1eca-46b8-acdb-f44f0f01d463
# ╠═768bbf06-60f5-484b-935f-d7372b4dc77b
# ╠═6221c5fb-9e37-4c48-b4f7-29ad37a7fe5a
# ╟─b54b386d-5ce7-40a3-a107-f82a084fedb9
# ╠═d43e27be-9f4a-4fbe-81f5-edcdd1037ddf
# ╠═eebf8438-64cc-4424-89da-bc458734e355
# ╠═dc4611e8-6dd3-485b-8fc3-0fe717214895
