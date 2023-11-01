### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# ╔═╡ 69ee26c4-6300-11ee-1f26-9129857f22a6
md"""
# Progressão Geométrica

**Definição**:

Progressão Geométrica é uma sequência que atende à seguinte lei de formação:

$$\begin{cases}
      a_1 = a \\
      a_n = a_{n-1} \times q, n \in N, n \ge 2 \\
    \end{cases}$$

Obs: $a$, $q$ são números reais quaisquer. $q$ é chamado de razão da P.G.

Exemplos: 

i) (2, 4, 8, 16, 32, 64), $a_1 = 2, q = 2$; crescente.

ii) (7, 7, 7, 7, 7, 7, 7), $a_1 = 7, q = 1$; constante.

iii) (7, 0, 0, 0, 0), $a_1 = 7, q = 0$; estacionária.

iv) (1, -2, 4, -8, 16, -32), $a_1 = 1, q = -2$; alternante.

v) $(1, \frac{1}{3}, \frac{1}{9}, \frac{1}{27}, \frac{1}{81})$; decrescente.


"""

# ╔═╡ 5acf8332-6448-4630-a2ba-da8b7e039afc
md"""
Uma notação comum para representar P.G. é

- Uma PG com 3 termos: $(x, xq, xq^2)$ ou $(\frac{x}{q}, x, xq)$
- Uma PG com 4 termos: $(x, xq, xq^2, xq^3)$ ou $(\frac{x}{q}, x, xq, xq^2)$

"""

# ╔═╡ 558abfa0-c6c1-4d0b-a17b-edaee32306b5
md"""
Cálculo do termo geral da P.G.:

$a_2 = a_1 * q$
$a_3 = a_2 * q$
$a_4 = a_3 * q$
$...$
$a_n = a_{n-1} * q$

Multiplicando os termos de cada lado em todas as equações, temos:

$a_2 \cdot a_3 \cdot a_4 ...  a_n = a_1\cdot q \cdot a_2 \cdot q \cdot a_3 \cdot q \cdot a_4\cdot q ... a_{n-1} \cdot q$

$a_2 \cdot a_3 \cdot a_4 ...  a_n = a_1\cdot a_2 \cdot a_3 \cdot a_4... a_{n-1} \cdot q^{n-1}$

$a_n = a_1 \cdot q^{n-1}$

"""

# ╔═╡ 5b99e43a-286f-4a71-8aa8-38d13ed4f3ba
begin
	q = 2
	# q * q * q * q == q^4
	n = 13
	resultado = 1
	for i in 1:(n-1)
		resultado = resultado * q
	end

	resultado == q^(n-1)
end

# ╔═╡ 81a1b7d5-bf0b-4323-93eb-10509231cbf1
md"""
Fatura: $1000$ reais
Juros: $100\%$

1º mês seguinte à inadimplência: 1000 (devido) + 1000*100% (juros)

1000 * 100% = 1000 * 100 / 100 = 1000 * 1 = 1000; 1000 reais de juros

Dívida: 2000 (1000 + 1000)

2º mês de inadimplência: acrescentar 2000 juros

Dívida: 4000 (2000 + 2000)

3º mês de inadimplência: acrescentar 4000 juros

(1000, 2000, 4000, 8000...)

"""

# ╔═╡ 5daae4a4-8c97-424b-8bf5-dbd5fa768e07
md"""
# Soma dos $n$ primeiros termos de uma PG finita

$S_n = \frac{a_1 \cdot (q^n - 1)}{q - 1}$

"""

# ╔═╡ 33d978bb-1ef4-48c5-816c-9816e41351ce
md"""
No caso dos juros do exemplo acima, teríamos:

$a_1 = 1000$
$q = 2$
$n = 4$

$S_4 = \frac{1000 * (2^4 - 1)}{2 - 1}$

= $(1000 * (2^4 - 1) / (2 - 1))


"""

# ╔═╡ Cell order:
# ╟─69ee26c4-6300-11ee-1f26-9129857f22a6
# ╟─5acf8332-6448-4630-a2ba-da8b7e039afc
# ╟─558abfa0-c6c1-4d0b-a17b-edaee32306b5
# ╠═5b99e43a-286f-4a71-8aa8-38d13ed4f3ba
# ╟─81a1b7d5-bf0b-4323-93eb-10509231cbf1
# ╟─5daae4a4-8c97-424b-8bf5-dbd5fa768e07
# ╟─33d978bb-1ef4-48c5-816c-9816e41351ce
