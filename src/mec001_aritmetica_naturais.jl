### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ 5381e77a-7877-11eb-05ce-03d86945e749
md"# Aritmética com Números Naturais

Conjunto dos números naturais:

$$\mathbb{N}=\{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, ...\}$$
"

# ╔═╡ 33bc0df2-7878-11eb-02bb-555bfd1ee902
md"# Adição, +

Propriedades
1. Comutatividade
2. Associatividade
3. Fechamento
4. Elemento Neutro
"

# ╔═╡ 32b2822e-7878-11eb-3c07-0b4a91c6639d
# comutatividade
1 + 2 == 2 + 1

# ╔═╡ 824530c0-7878-11eb-224a-a5d8f066c392
# associatividade
1 + (2 + 3)

# ╔═╡ a2cb9944-7878-11eb-23fa-954c4bd3dc9a
# comutatividade e associatividade
2 + (3 + 1) == (1 + 2) + 3

# ╔═╡ 731d0b4e-7879-11eb-24a7-e5ecd4086610
# 0 é o elemento neutro da adição nos naturais
7 + 0

# ╔═╡ 8ad618de-7879-11eb-1242-a9c2e049b6bb
md"# Subtração
"

# ╔═╡ 9b566970-7879-11eb-0365-e7c944a6a50c
8 - 0

# ╔═╡ a09110a2-7879-11eb-2c20-9391a4d0b24d
# não é comutativa
7 - 3

# ╔═╡ aae04ab4-7879-11eb-1db2-9b602c9c13c2
3 - 7

# ╔═╡ d92315c6-7879-11eb-1721-9ffb3de39b2b
md"# Multiplicação

Propriedades
1. Comutatividade
2. Associatividade
3. Fechamento
4. Elemento Neutro
"

# ╔═╡ efe93902-7879-11eb-1b10-f1114c586931
# comutatividade
7 * 8 == 8 * 7

# ╔═╡ 0236ce80-787a-11eb-0e18-49cd4897a322
# associatividade
(7 * 8) * 9 == 8 * (7 * 9)

# ╔═╡ 1e9b2456-787a-11eb-00ea-2f7f10f13375
# elemento neutro 
1 * 5

# ╔═╡ 30697994-787a-11eb-276e-87c9a506cbf4
md"# Divisão "

# ╔═╡ 3af475c6-787a-11eb-35ea-7708188c3127
8 ÷ 2

# ╔═╡ 9db74fce-787a-11eb-10d8-8f605768b811
md"
* 8 - dividendo
* 2 - divisor
* 4 - quociente
* 0 - resto

Como o resto é 0, podemos dizer que 2 divide 8; ou que 8 **é divisível** por 2
"


# ╔═╡ cbb542a2-787a-11eb-0db3-5d510dabd596
9 ÷ 2
# 4 é o quociente 
# e resto é 1

# ╔═╡ fc8c449a-787a-11eb-0e7f-19e164a7ff83
# resto da divisão com operador % - módulo
9 % 2

# ╔═╡ 3a37b17e-787b-11eb-3188-1b00376bc1ce
md"## Sucessor de um número natural"

# ╔═╡ 5e3dae8c-787b-11eb-01ed-9d0c054ae362
0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13...

# ╔═╡ 82d79368-787b-11eb-3625-43f9514ecbe4
sucessor(n) = n + 1

# ╔═╡ 8c97907e-787b-11eb-0332-6dbd6dba3970
sucessor(27)

# ╔═╡ 50d975a2-787b-11eb-1e20-e13f4eae5a02
md"## Antecessor de um número natural"

# ╔═╡ a8381196-787b-11eb-3903-09926b09af10
antecessor(n) = if n == 0
					throw(DomainError("Zero não tem antecessor"))
				else
					n - 1
				end

# ╔═╡ eeecd446-787b-11eb-1e57-11faaeb8535a
antecessor(22)

# ╔═╡ f8a8e0f6-787b-11eb-166e-1f16133ab4dc
md"# Múltiplos 

**Quais são os múltiplos de 2?**

– São todos os números que são divisíveis por 2

– São os números da forma 2 * algumacoisa
"

# ╔═╡ 854df86e-787c-11eb-2184-f369459c4485
8 == 2 * 4

# ╔═╡ 9c545d52-787c-11eb-16c7-a9dfe51a7362
function multiplosde2(k)
	resposta = []
	for i = 0:k
		append!(resposta, 2*i)
	end
	resposta
end

# ╔═╡ 350110ea-787d-11eb-0949-dff5de56bc7f
multiplosde2(10)

# ╔═╡ 552cf0a0-787d-11eb-2f21-5f5fe5ea733d
function multiplos(n, k=10)
	resposta = []
	for i = 0:k
		append!(resposta, n*i)
	end
	resposta
end

# ╔═╡ 70c52b02-787d-11eb-0e7f-53f60245f319
multiplos(3, 15)

# ╔═╡ 8e082002-787d-11eb-05ba-516471bbc3c5
md"# Divisores

O divisor de um número natural **$n$** é um número que **divide $n$**; em outras palavras, **$n$** é divisível pelos seus divisores.

"

# ╔═╡ 7b837e3c-787e-11eb-1380-b1ea2549c173
md"Encontrar todos os divisores de um número passa por resolver o problema da **fatoração em primos**"

# ╔═╡ d658d22e-787e-11eb-05c3-4304491f3661
# EXERCÍCIO: Implementar Pedra, Papel e Tesoura com ordenação circular
# Pedra, Papel e Tesoura
begin
	# pedra = 0
	# papel = 1
	# tesoura = 2
	# pedra < papel < tesoura < pedra
# 	0%3 < 1%3 < 2%3 < 3%3
	
# 	jogador1 = "pedra"
# 	jogador2 = "papel"
	
# 	if jogador1 == jogador2:
# 		empate
# 	elseif jogador1 == (jogador2 + 1)%3
# 		jogador2 venceu
# 	else
# 		jogador1 venceu
# 	end
	
# 	if jogador1 == "pedra" && jogador2 == "papel"
# 		print("jogador 2 venceu")
# 	elseif ...
# 	end

end

# ╔═╡ Cell order:
# ╟─5381e77a-7877-11eb-05ce-03d86945e749
# ╠═33bc0df2-7878-11eb-02bb-555bfd1ee902
# ╠═32b2822e-7878-11eb-3c07-0b4a91c6639d
# ╠═824530c0-7878-11eb-224a-a5d8f066c392
# ╠═a2cb9944-7878-11eb-23fa-954c4bd3dc9a
# ╠═731d0b4e-7879-11eb-24a7-e5ecd4086610
# ╟─8ad618de-7879-11eb-1242-a9c2e049b6bb
# ╠═9b566970-7879-11eb-0365-e7c944a6a50c
# ╠═a09110a2-7879-11eb-2c20-9391a4d0b24d
# ╠═aae04ab4-7879-11eb-1db2-9b602c9c13c2
# ╟─d92315c6-7879-11eb-1721-9ffb3de39b2b
# ╠═efe93902-7879-11eb-1b10-f1114c586931
# ╠═0236ce80-787a-11eb-0e18-49cd4897a322
# ╠═1e9b2456-787a-11eb-00ea-2f7f10f13375
# ╟─30697994-787a-11eb-276e-87c9a506cbf4
# ╠═3af475c6-787a-11eb-35ea-7708188c3127
# ╠═9db74fce-787a-11eb-10d8-8f605768b811
# ╠═cbb542a2-787a-11eb-0db3-5d510dabd596
# ╠═fc8c449a-787a-11eb-0e7f-19e164a7ff83
# ╟─3a37b17e-787b-11eb-3188-1b00376bc1ce
# ╠═5e3dae8c-787b-11eb-01ed-9d0c054ae362
# ╠═82d79368-787b-11eb-3625-43f9514ecbe4
# ╠═8c97907e-787b-11eb-0332-6dbd6dba3970
# ╟─50d975a2-787b-11eb-1e20-e13f4eae5a02
# ╠═a8381196-787b-11eb-3903-09926b09af10
# ╠═eeecd446-787b-11eb-1e57-11faaeb8535a
# ╟─f8a8e0f6-787b-11eb-166e-1f16133ab4dc
# ╠═854df86e-787c-11eb-2184-f369459c4485
# ╠═9c545d52-787c-11eb-16c7-a9dfe51a7362
# ╠═350110ea-787d-11eb-0949-dff5de56bc7f
# ╠═552cf0a0-787d-11eb-2f21-5f5fe5ea733d
# ╠═70c52b02-787d-11eb-0e7f-53f60245f319
# ╟─8e082002-787d-11eb-05ba-516471bbc3c5
# ╟─7b837e3c-787e-11eb-1380-b1ea2549c173
# ╠═d658d22e-787e-11eb-05c3-4304491f3661
