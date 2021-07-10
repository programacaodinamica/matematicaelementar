### A Pluto.jl notebook ###
# v0.14.8

using Markdown
using InteractiveUtils

# ╔═╡ 34844c90-6f60-4bc6-bf5d-f959022c0301
using Images, Plots

# ╔═╡ 4bf1fe9c-d5e9-11eb-1220-47bdd226c268
md"""
# Programação Linear
"""

# ╔═╡ 2267e1d1-a367-412c-8198-90689126d8f6
begin
	total_ds = 15
	total_bk = 20
	total_fe = 8
	ds1 = 3
	ds2 = 2
	bk1 = 6
	bk2 = 5
	fe1 = 4
	fe2 = 3
	p1 = 20
	p2 = 15
	"Variáveis para cada caso analisado"
end

# ╔═╡ ebc7992f-a260-4a31-b3e1-93375a15332b
md"""
#### Caso 1 
Uma empresa que presta consultoria e realiza serviços com ciência de dados e inteligência artificial possui como principais produtos a realização de projetos de predição e a estruturação de dashboards inteligentes para apoio à decisão. Os projetos de predição custam, em média R\$200.000,00 (duzentos mil reais) enquanto os projetos de dashboards inteligentes, custam R\$150.000,00 (cento e cinquenta mil reais). 
"""

# ╔═╡ 1d0cde37-0a96-42a3-8bea-8b828ed65c4d
md"""
##### O que nós podemos afirmar sobre a receita da empresa?

* A receita é não negativa, ou seja, é maior que ou igual a zero.
* Considerando que seja feito ao menos um projeto por mês, a receita deve ser pelo menos R\$150.000,00

Vamos chamar de:
*  ${x_1}$ a quantidade de projetos de predição realizados 
*  ${x_2}$ a quantidade de projetos de dashboards inteligentes realizados

A receita bruta da empresa, dividida por 10.000, é dada por:

$R(x_1, x_2) = 20{x_1} + 15{x_2}$

"""

# ╔═╡ b68eafec-c9c6-4bc9-96fe-724115d1cb51
md"""
##### Qual é a receita máxima que a empresa pode ter?

Não havendo qualquer restrição sobre a quantidade de projetos que podem ser realizados, a receita é ilimitada, logo o máximo é infinito (não existe máximo).
"""

# ╔═╡ 14611fd9-89b1-451a-b58c-d62d4c3e0e94
md"""
# Caso 2

Suponha que cada projeto de predição precise de um time de $ds1 cientistas de dados e cada projeto de dashboard precise de um time de $ds2 cientistas de dados durante 6 meses. Suponha, ainda, que esta empresa tenha um total de $total_ds cientistas de dados.

##### O que podemos dizer sobre a receita máxima da empresa em um semestre?
"""

# ╔═╡ 4f1886ef-db42-487a-a7ec-254f657e526c
md"""

$3{x_1} + 2{x_2} \le 15$

"""

# ╔═╡ 1a18f697-a33b-44b7-bc8e-9323928d20cb
# Vamos definir uma função para visualizar restrições
function plotregion(x, f, clabel="")
	plot(x, f.(x), fillrange = zeros(size(x)), fillalpha = 0.35, c = 1, 
		label = clabel, framestyle = :origin, xlabel=md"x1", ylabel=md"x2")
end

# ╔═╡ cf967427-56d9-4de9-a680-3453f20d06e0
begin
	f(x) = (total_ds - ds1*x)/ds2
	x = 0:0.5:5
	plotregion(x, f, "restrição de CD")
end

# ╔═╡ 19329685-1f54-4df9-ac59-e77731c6434b
md"""

Vimos que a receita da empresa depende de 2 variáveis: a quantidade de projetos do tipo 1 ($x_1$) e a quantidade de projetos do tipo 2 ($x_2$). É isto que representa a equação $R(x_1, x_2) = 20{x_1} + 15{x_2}$. 

Por conta disto, para visualizar um gráfico que nos mostra a evolução da receita com estas variáveis, precisaríamos de uma representação em 3 dimensões. Contudo, para um **valor fixo de receita**, podemos fazer um gráfico de como ($x_1 \times x_2$) que nos mostra uma **curva de nível** do lucro, isto é, combinações de $x_1$ e $x_2$ que resultam na mesma quantidade de receita.

Seja **r** um valor fixo de receita, temos que:

$$r = 20x_1 + 15x_2$$
$$x_2 = \frac{r - 20x_1}{15}$$

**Ou seja, a curva de nível para uma receita fixa é dada por uma reta.**

"""

# ╔═╡ a4fe83f2-d775-4351-8459-0a22368e27aa
g(x, r) = (r - p1*x)/p2

# ╔═╡ 00dc308b-0a5d-4b2e-b773-9432a546ed0b
begin
	labels = []
	isolines = []
	for r in 60:10:120
		push!(isolines, g.(x, r))
		push!(labels, "lucro=$r")
		
	end
	plot(x, isolines, framestyle = :origin, linestyle = :dash, 
			xlabel="x1", ylabel="x2", labels=permutedims(labels))
end

# ╔═╡ 35ee3a69-51dd-4128-8bac-537954570aea
begin
	plot(x, f.(x), fillrange = zeros(size(x)), fillalpha = 0.35, c = 1, 
			label = "restricoa", framestyle = :origin, xlabel=md"x1", ylabel=md"x2")
	plot!(x, isolines, framestyle = :origin, linestyle = :dash, 
				xlabel="x1", ylabel="x2", labels=permutedims(labels))
end

# ╔═╡ c0454701-0b30-4516-9d37-83ad4519da2c
md"""
#### Conclusão do caso 2
Pelo gráfico, percebemos que **é mais vantajoso para a empresa investir em fazer mais projetos do tipo 2**, pois a receita máxima aconteceria se ela pudesse alocar todos os seus cientistas de dados para realizar 7,5 projetos do tipo 2 em um semestre.
"""

# ╔═╡ 7d4c4b14-b55a-4afd-a2db-878398c42d92
md"""
# Caso 3

Suponha que cada projeto de predição precise de um time composto por $ds1 cientistas de dados e $bk1 desenvolvedores backend e cada projeto de dashboard precise de um time de $ds2 cientistas de dados e $bk2 desenvolvedores backend durante 6 meses. Suponha, ainda, que esta empresa tenha um total de $total_ds cientistas de dados e $total_bk desenvolvedores backend.

##### O que podemos dizer sobre a receita máxima da empresa em um semestre?
"""

# ╔═╡ 8216cf50-c1c9-49a6-b7d8-a3b591629207
md"""

Agora, temos 2 restrições:

$3{x_1} + 2{x_2} \le 15$

$4{x_1} + 5{x_2} \le 20$


"""

# ╔═╡ 0fd72f37-45f1-4f1f-b1e5-02e76d5d5b08
h(x) = (total_bk - bk1*x)/bk2

# ╔═╡ b2894e6c-f739-452e-98fe-18ef462f09ab
plot(x, [f.(x), h.(x)], fillrange = zeros(size(x)), fillalpha = 0.35, 
		labels = ["Cientista de Dados" "Backend"], 
		framestyle = :origin, xlabel=md"x1", ylabel=md"x2")

# ╔═╡ 4df95a5d-786c-46eb-9328-4e8d1ed86489
md"""
## Ainda é melhor investir no projeto de tipo 2?
"""

# ╔═╡ 1b4e4294-d875-417c-808b-fbc90e01be80


# ╔═╡ 7c67b764-aac7-4e86-98a4-fcb12fcd1bd6
begin
	plot(x, [f.(x), h.(x)], fillrange = zeros(size(x)), fillalpha = 0.35, 
		labels = ["Cientista de Dados" "Backend"], 
		framestyle = :origin, xlabel=md"x1", ylabel=md"x2")
	plot!(x, isolines, framestyle = :origin, linestyle = :dash, 
				xlabel="x1", ylabel="x2", labels=permutedims(labels))
end

# ╔═╡ a6031ead-b698-4b47-a3fb-561ec30f5afc
md"""
# Caso 4

Suponha que cada projeto de predição precise de um time composto por $ds1 cientistas de dados, $bk1 desenvolvedores backend e $fe1 desenvolvedores front-end, e cada projeto de dashboard precise de um time de $ds2 cientistas de dados, $bk2 desenvolvedores backend e $fe2 desenvolvedores front-end durante 6 meses. Suponha, ainda, que esta empresa tenha um total de $total_ds cientistas de dados e $total_bk desenvolvedores backend e $total_fe desenvolvedores front-end.

##### O que podemos dizer sobre a receita máxima da empresa em um semestre?
"""

# ╔═╡ 91dfd92a-2db7-4315-91eb-47edb5a26503
md"""

Agora, temos 3 restrições:

$3{x_1} + 2{x_2} \le 15$

$4{x_1} + 5{x_2} \le 20$

$1{x_1} + 3{x_2} \le 10$


"""

# ╔═╡ 528e5c7c-a66f-4a85-9cb2-1c76f3a12d0c
w(x) = (10 - x)/3

# ╔═╡ f795e925-4cbc-45d2-89a2-c6c4c448bb80
plot(x, [f.(x), h.(x), w.(x)], fillrange = zeros(size(x)), fillalpha = 0.35, 
		labels = ["Cientista de Dados" "Backend" "Frontend"], 
		framestyle = :origin, xlabel=md"x1", ylabel=md"x2")

# ╔═╡ 443bd4e0-47ea-45a4-8b8a-8bd0c5d6b364
begin
	plot(x, [f.(x), h.(x), w.(x)], fillrange = zeros(size(x)), fillalpha = 0.35, 
		labels = ["Cientista de Dados" "Backend" "Frontend"], 
		framestyle = :origin, xlabel=md"x1", ylabel=md"x2")
	plot!(x, isolines, framestyle = :origin, linestyle = :dash, 
				xlabel="x1", ylabel="x2", labels=permutedims(labels))
end

# ╔═╡ Cell order:
# ╟─34844c90-6f60-4bc6-bf5d-f959022c0301
# ╟─4bf1fe9c-d5e9-11eb-1220-47bdd226c268
# ╠═2267e1d1-a367-412c-8198-90689126d8f6
# ╟─ebc7992f-a260-4a31-b3e1-93375a15332b
# ╟─1d0cde37-0a96-42a3-8bea-8b828ed65c4d
# ╟─b68eafec-c9c6-4bc9-96fe-724115d1cb51
# ╟─14611fd9-89b1-451a-b58c-d62d4c3e0e94
# ╟─4f1886ef-db42-487a-a7ec-254f657e526c
# ╟─1a18f697-a33b-44b7-bc8e-9323928d20cb
# ╠═cf967427-56d9-4de9-a680-3453f20d06e0
# ╟─19329685-1f54-4df9-ac59-e77731c6434b
# ╠═a4fe83f2-d775-4351-8459-0a22368e27aa
# ╠═00dc308b-0a5d-4b2e-b773-9432a546ed0b
# ╠═35ee3a69-51dd-4128-8bac-537954570aea
# ╟─c0454701-0b30-4516-9d37-83ad4519da2c
# ╟─7d4c4b14-b55a-4afd-a2db-878398c42d92
# ╟─8216cf50-c1c9-49a6-b7d8-a3b591629207
# ╠═0fd72f37-45f1-4f1f-b1e5-02e76d5d5b08
# ╠═b2894e6c-f739-452e-98fe-18ef462f09ab
# ╟─4df95a5d-786c-46eb-9328-4e8d1ed86489
# ╠═1b4e4294-d875-417c-808b-fbc90e01be80
# ╠═7c67b764-aac7-4e86-98a4-fcb12fcd1bd6
# ╟─a6031ead-b698-4b47-a3fb-561ec30f5afc
# ╟─91dfd92a-2db7-4315-91eb-47edb5a26503
# ╠═528e5c7c-a66f-4a85-9cb2-1c76f3a12d0c
# ╠═f795e925-4cbc-45d2-89a2-c6c4c448bb80
# ╠═443bd4e0-47ea-45a4-8b8a-8bd0c5d6b364
