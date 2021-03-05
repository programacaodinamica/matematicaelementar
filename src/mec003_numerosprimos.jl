### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ aaf15928-7e03-11eb-34e8-c9c50e9a2943
using Images

# ╔═╡ 6b61d59a-7df8-11eb-0523-0191bdecf2bc
md"""
# Números Primos | Matemática Elementar para Computação
## Fatores de um número inteiro"""

# ╔═╡ a308f316-7df8-11eb-16f2-937a781f265d
6 * 7 * 4

# 6 - fator
# 7 - fator
# 4 - fator


# ╔═╡ e86dbbe4-7df8-11eb-1969-15d5bedebf9d
md""" 
Falar em "fatores" de uma maneira geral, tem uma certa ambiguidade, pois:

– 6, 7, 4 são fatores de 168

– 2, 3, 4, 7 também são fatores de 168"""

# ╔═╡ 7d941416-7df9-11eb-1be9-c9925b8f0279
md"""
#### Relembrando...
Divisor de um número k é aquele numero que divide k.

Exemplo: 2 é divisor de 4, pois

* 2 divide 4
* 4 é divisível por 2
* o resto da divisão de 4 por 2 é zero

*são formas equivalentes de expressar a mesma ideia.*

"""


# ╔═╡ 8346105c-7dfa-11eb-0178-97c15796976f
begin
	a = 81
	b = 9
end

# ╔═╡ 19e34efe-7dfa-11eb-154b-c34fef656eb9
eh_divisor(a, b) = a % b == 0

# ╔═╡ 6ca32396-7dfa-11eb-3901-9d1eed0f7fb1
md"""$b $(eh_divisor(a, b) ? "" : "NÃO" ) é divisor de $a !!!"""

# ╔═╡ eaec5cfc-7dfa-11eb-3410-e5bdb86ff29e
md"## Números primos

Um número primo é um número que tem apenas dois divisores: **ele mesmo e o número 1**

Alguns exemplos: 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31...

"

# ╔═╡ 3219bc72-7dfc-11eb-1cdc-93b932127418
numero = 31

# ╔═╡ 39495480-7dfc-11eb-2e68-e93a90a4344f
function eh_primo(n)
	divisores = [1]
	for i = 2:n
		if eh_divisor(n, i)
			append!(divisores, i)
		end
	end
	# tamanho do vetor de divisores
	length(divisores) == 2
end

# ╔═╡ f8c6a7be-7dfb-11eb-3a93-19ce44361c13
md"""$numero $(eh_primo(numero) ? "" : "NÃO") é primo"""

# ╔═╡ 7859ae44-7dfd-11eb-0971-6bb7cedb030b
md"""## Representação em fatores primos

$(load("img/primos150.jpg"))

Exercícios:

1. Como encontrar todos os números primos **entre 1 e n**? 
2. Como decompor um número **n** em fatores primos?
"""

# ╔═╡ Cell order:
# ╟─aaf15928-7e03-11eb-34e8-c9c50e9a2943
# ╟─6b61d59a-7df8-11eb-0523-0191bdecf2bc
# ╠═a308f316-7df8-11eb-16f2-937a781f265d
# ╟─e86dbbe4-7df8-11eb-1969-15d5bedebf9d
# ╟─7d941416-7df9-11eb-1be9-c9925b8f0279
# ╠═8346105c-7dfa-11eb-0178-97c15796976f
# ╠═19e34efe-7dfa-11eb-154b-c34fef656eb9
# ╟─6ca32396-7dfa-11eb-3901-9d1eed0f7fb1
# ╟─eaec5cfc-7dfa-11eb-3410-e5bdb86ff29e
# ╠═3219bc72-7dfc-11eb-1cdc-93b932127418
# ╠═39495480-7dfc-11eb-2e68-e93a90a4344f
# ╟─f8c6a7be-7dfb-11eb-3a93-19ce44361c13
# ╟─7859ae44-7dfd-11eb-0971-6bb7cedb030b
