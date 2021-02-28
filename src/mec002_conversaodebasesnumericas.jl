### A Pluto.jl notebook ###
# v0.12.20

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

# ╔═╡ 2b168faa-7932-11eb-0737-7336b0acd8d2
using Images, FileIO

# ╔═╡ 70a2a15c-7938-11eb-3311-0973ec7c0bd8
md"# Conversão de Bases Numéricas

Símbolos que temos habitualmente para representar números:

0, 1, 2, 3, 4, 5, 6, 7, 8, 9

Quando acabam os símbolos, nós os juntamos:
10, 11, 12, 13...

Esta é a base **DECIMAL** - dez símbolos

"

# ╔═╡ 9c3acd08-7938-11eb-38a3-b1e692d47e7e
md"# Binário

Temos 2 símbolos: 0 e 1


BIT - Binary digIT - 'dígito' de valor 0 ou 1

0, 1, 10, 11, 100, 101, 110, 111, 1000, 1001, 1010

Existem 10 tipos de pessoas no mundo: as que sabem binário e as que não.


BYTE - conjunto de 8 bits

00000000, 00000001, 00000010...


"

# ╔═╡ 1a5ab68a-793b-11eb-2fc6-a92bf7862d2c
md" ## Endereço I.P

142.250.78.206

4 BYTES - 32 Bits

00000000 . 00000000 . 00000000 . 00000000
números de 0 a 255 (256 valores) = $2^8$ "

# ╔═╡ 92736cbe-793b-11eb-3402-fd8ab89685a7
md"## Representação de Cores

RGB - Vermelho (Red), Verde (Green), Azul (Blue)

0-255, 0-255, 0-255, [opcionalmente: alfa - 0 - 255]

"

# ╔═╡ 581ed692-793c-11eb-2975-81e9b10fbcb7
md"# Hexadecimal (base 16)

16 símbolos

0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F

10, 11, 12, ..., 1A, 1B, ...

"

# ╔═╡ 99d38ea2-793c-11eb-0602-fdee67148396
Binario: 00011101
Hexadecimal:
Decimal: 29

# ╔═╡ 86b86e18-793d-11eb-0c2e-4f0923ae1693
# na própria base decimal
begin
	12854 == 4 + 50 + 800 + 2000 + 10000
end

# ╔═╡ b60bfb34-793e-11eb-25ac-73bde99a491e
md"

Convertendo 00011101 de binário para decimal

$$1*2^0 + 0*2^1 + 1*2^2 + 1*2^3 + 1*2^4 = 29$$

em decimal = 29 "

# ╔═╡ 587150f8-7940-11eb-2eb0-4985231cd253
md"Convertendo de decimal para outra base


"


# ╔═╡ ac89dace-7941-11eb-3574-9bb44aa8ad34
# converter de outra base para decimal
# function para_decimal(n, base)
# 	expoente = 0
# 	digitos = digits(parse(Int, n, base = base))
# 	decimal = 0
# 	for d in digitos
# 		decimal = decimal + d * base^expoente
# 		expoente = expoente + 1
# 	end
# 	decimal
# end
para_decimal(n, base) = parse(Int, n, base = base)

# ╔═╡ b0bb27d2-7942-11eb-1519-31214b0bf9e3
para_decimal("15101A", 16)

# ╔═╡ a6f04d16-7944-11eb-3fb4-5126028ec991
function substituir(n)
	extras = ["A", "B", "C","D", "E", "F"]
	n < 10 ? "$n" : extras[n-9]
end

# ╔═╡ 8781c9ce-7943-11eb-01eb-19bfe1eefd12
function de_decimal(n, base)
	# quociente
	q = n
	numero = ""
	while q ≥ base
		# resto
		r = q % base
		numero = substituir(r) * numero 
		q = q ÷ base
	end
	substituir(q) * numero	
end

# ╔═╡ 38e48cba-7944-11eb-260d-df34d35dd7e3
de_decimal(876543, 16)

# ╔═╡ e110b92e-7933-11eb-3642-e7a36ec81527
@bind vermelho html"<input type='range' min='0' max='255'>"

# ╔═╡ 34b56fcc-7932-11eb-135c-697f0b03b0dc
@bind verde html"<input type='range' min='0' max='255'>"

# ╔═╡ 196f1112-7934-11eb-008e-9dfa6b5cbb10
@bind azul html"<input type='range' min='0' max='255'>"

# ╔═╡ daf1ce5e-7945-11eb-2980-03e3115fbf51
md"RGB: 

Decimal ($vermelho, $verde, $azul)

HEX #$(de_decimal(vermelho, 16)) $(de_decimal(verde, 16)) $(de_decimal(azul, 16))"

# ╔═╡ 0afb2e66-7933-11eb-2089-bfc85d9e8913
begin
	r = vermelho/255
	g = verde/255
	b = azul/255
	RGB(r, g, b)
end

# ╔═╡ Cell order:
# ╠═2b168faa-7932-11eb-0737-7336b0acd8d2
# ╟─70a2a15c-7938-11eb-3311-0973ec7c0bd8
# ╟─9c3acd08-7938-11eb-38a3-b1e692d47e7e
# ╟─1a5ab68a-793b-11eb-2fc6-a92bf7862d2c
# ╟─92736cbe-793b-11eb-3402-fd8ab89685a7
# ╟─581ed692-793c-11eb-2975-81e9b10fbcb7
# ╠═99d38ea2-793c-11eb-0602-fdee67148396
# ╠═86b86e18-793d-11eb-0c2e-4f0923ae1693
# ╟─b60bfb34-793e-11eb-25ac-73bde99a491e
# ╠═587150f8-7940-11eb-2eb0-4985231cd253
# ╠═ac89dace-7941-11eb-3574-9bb44aa8ad34
# ╠═b0bb27d2-7942-11eb-1519-31214b0bf9e3
# ╠═a6f04d16-7944-11eb-3fb4-5126028ec991
# ╠═8781c9ce-7943-11eb-01eb-19bfe1eefd12
# ╠═38e48cba-7944-11eb-260d-df34d35dd7e3
# ╠═e110b92e-7933-11eb-3642-e7a36ec81527
# ╠═34b56fcc-7932-11eb-135c-697f0b03b0dc
# ╠═196f1112-7934-11eb-008e-9dfa6b5cbb10
# ╟─daf1ce5e-7945-11eb-2980-03e3115fbf51
# ╠═0afb2e66-7933-11eb-2089-bfc85d9e8913
