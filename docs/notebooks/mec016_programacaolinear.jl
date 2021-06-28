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

Suponha que cada projeto de predição precise de um time de 3 cientistas de dados e cada projeto de dashboard precise de um time de 2 cientistas de dados durante 6 meses. Suponha, ainda, que esta empresa tenha um total de 15 cientistas de dados.

##### O que podemos dizer sobre a receita máxima da empresa em um semestre?
"""

# ╔═╡ 4f1886ef-db42-487a-a7ec-254f657e526c
md"""

$3{x_1} + 2{x_2} \le 15$

"""

# ╔═╡ cf967427-56d9-4de9-a680-3453f20d06e0
begin
	f(x) = (15 - 3*x)/2
	x = 0:0.5:6
	plot(x, f.(x), framestyle = :origin)
end

# ╔═╡ 00dc308b-0a5d-4b2e-b773-9432a546ed0b
begin
	g(x, c) = (c - 20*x)/15
	plot(x, g.(x, 300), framestyle = :origin)
end

# ╔═╡ 7d4c4b14-b55a-4afd-a2db-878398c42d92
md"""
# Caso 3

Suponha que cada projeto de predição precise de um time composto por 3 cientistas de dados e 4 desenvolvedores backend e cada projeto de dashboard precise de um time de 2 cientistas de dados e 5 desenvolvedores backend durante 6 meses. Suponha, ainda, que esta empresa tenha um total de 15 cientistas de dados e 20 desenvolvedores backend.

##### O que podemos dizer sobre a receita máxima da empresa em um semestre?
"""

# ╔═╡ 8216cf50-c1c9-49a6-b7d8-a3b591629207
md"""

$3{x_1} + 2{x_2} \le 15$

$4{x_1} + 5{x_2} \le 20$


"""

# ╔═╡ Cell order:
# ╟─34844c90-6f60-4bc6-bf5d-f959022c0301
# ╟─4bf1fe9c-d5e9-11eb-1220-47bdd226c268
# ╟─ebc7992f-a260-4a31-b3e1-93375a15332b
# ╟─1d0cde37-0a96-42a3-8bea-8b828ed65c4d
# ╟─b68eafec-c9c6-4bc9-96fe-724115d1cb51
# ╟─14611fd9-89b1-451a-b58c-d62d4c3e0e94
# ╟─4f1886ef-db42-487a-a7ec-254f657e526c
# ╠═cf967427-56d9-4de9-a680-3453f20d06e0
# ╠═00dc308b-0a5d-4b2e-b773-9432a546ed0b
# ╠═7d4c4b14-b55a-4afd-a2db-878398c42d92
# ╠═8216cf50-c1c9-49a6-b7d8-a3b591629207
