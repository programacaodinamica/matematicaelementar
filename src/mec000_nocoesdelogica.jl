### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ e5b2492e-7551-11eb-26cc-ef02b92a7c2a
md"# Noções de Lógica
### Matemática Elementar para Computação #0"

# ╔═╡ 40f9ecc4-7552-11eb-2604-c383b1e123ca
md"# Proposição"

# ╔═╡ 1d91890a-7553-11eb-2491-4f26ebb5b767
idade = 7

# ╔═╡ 02de3156-7558-11eb-3be2-6d8899ed3561
idade ≥ 18

# ╔═╡ 402d137a-7552-11eb-10ef-7b5bcdf85d15
if idade ≥ 18
	md"é obrigado a votar!"
end

# ╔═╡ 1dcfafba-755a-11eb-22f6-d793f3649d27
md"""## Conectivo "E" """

# ╔═╡ 4ff8b524-776a-11eb-2921-5f1155e96370
md"""Pode ser escrito como **E**, **AND**, **^**, **&&**, **&** dependendo do contexto.

**Verdadeiro** apenas quando os dois lados são verdadeiros. 
**Falso**, caso contrário.

| p | q | p ^ q |
| --- |:---:| :---:|
| V | V | V |
| V | F | F |
| F | V | F |
| F | F | F |

"""

# ╔═╡ b4345be2-7558-11eb-2350-4b61bdbed846
# voto deixa de ser obrigatório a partir de 70 anos
if idade ≥ 18 && idade < 70
	md"é obrigado a votar!"
end

# ╔═╡ 66bfac00-776b-11eb-2cce-05c0f2fb4ad0
md"""
# Conectivo OU

Pode ser escrito como **OU**, **OR**, **v**, **||**, **|** dependendo do contexto.

**Verdadeiro** se ao menos um dos dois lados for verdadeiro.
**Falso**, caso contrário.

| p | q | p v q |
| --- |:---:| :---:|
| V | V | V |
| V | F | V |
| F | V | V |
| F | F | F |

"""

# ╔═╡ d5b6366a-7555-11eb-34ce-c9ce840c882f
if (idade ∈ [16, 17]) || idade ≥ 70
	md"voto é facultativo!"
end

# ╔═╡ a12c5a58-776b-11eb-2db4-29587243cf84
md"""# Negação

Pode ser escrito como **NÃO**, **NOT**, **~**, **!** dependendo do contexto.

**Inverte o valor lógico** de uma proposição. V torna-se F e F torna-se V.

"""

# ╔═╡ 0104062c-776c-11eb-3c80-29b4f7e46d6a
md"### Negando o E"

# ╔═╡ 589b8c8c-7559-11eb-38b3-c314584b2330
if !(idade ≥ 18 && idade < 70)
	md"não é obrigado a votar"
end

# ╔═╡ 7f73ba7e-7558-11eb-3561-2b3eb0e224ae
# ~(p ^ q) <-> ~p v ~ q
if !(idade ≥ 18) || !(idade < 70)
	md"não é obrigado a votar"
end

# ╔═╡ 141a0ca6-776c-11eb-32a0-8d6e8bfd327b
md"### Negando o OU"

# ╔═╡ c2e28f00-7559-11eb-076a-d5eeeac13e47
if !(idade ∈ [16, 17] || idade ≥ 70)
	md"seu voto NÃO é facultativo!"
end

# ╔═╡ e1b4d960-7559-11eb-07a6-c3a9856bf373
# ~(p v q) <-> ~p ^ ~ q
if !(idade ∈ [16, 17]) && !(idade ≥ 70)
	md"seu voto NÃO é facultativo!"
end

# ╔═╡ 5a74ab70-7553-11eb-2e53-ad6f4728e157
md"""-------
Se você acha este trabalho relevante, considere apoiar o nosso canal como membro e tenha acesso às gravações das aulas ao vivo nas categorias ESPRESSO e CAPUCCINO"""

# ╔═╡ d67e9c84-7554-11eb-2ebf-a5b05fdb0abe
html"""<iframe width="560" height="315" src="https://www.youtube.com/embed/F7IvK4r0Xds" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>"""


# ╔═╡ 9bb2b2f8-7553-11eb-1685-0fceea81abbf
md"""
🟣 Canal na Twitch para lives: [https://www.twitch.tv/pgdinamica](https://www.twitch.tv/pgdinamica)

🟦 [Canal do Telegram](https://t.me/joinchat/AAAAAFaoNgZTMRvrghpPPA) para receber os vídeos.

✉️ E-mails:
– Propostas comerciais: pgdinamica@brunch.ag
– Demais assuntos: contato@programacaodinamica.com.br

📸 Nos siga no Instagram: [@pgdinamica](https://instagram.com/pgdinamica) | [@kizzy_terra](https://instagram.com/kizzy_terra) | [@hallpaz](https://instagram.com/hallpaz)

🐦 Nos siga no Twitter: [@pgdinamica](https://twitter.com/pgdinamica) | [@kizzy_terra](https://twitter.com/kizzy_terra) | [@hallpaz](https://twitter.com/hallpaz)

👩🏾‍💻👨🏾‍💻 Nosso [repositório no Github](https://github.com/programacaodinamica)

✍🏾 Confira o [nosso Medium](https://medium.com/programacaodinamica)

"""

# ╔═╡ Cell order:
# ╠═e5b2492e-7551-11eb-26cc-ef02b92a7c2a
# ╟─40f9ecc4-7552-11eb-2604-c383b1e123ca
# ╠═1d91890a-7553-11eb-2491-4f26ebb5b767
# ╠═02de3156-7558-11eb-3be2-6d8899ed3561
# ╠═402d137a-7552-11eb-10ef-7b5bcdf85d15
# ╟─1dcfafba-755a-11eb-22f6-d793f3649d27
# ╠═4ff8b524-776a-11eb-2921-5f1155e96370
# ╠═b4345be2-7558-11eb-2350-4b61bdbed846
# ╠═66bfac00-776b-11eb-2cce-05c0f2fb4ad0
# ╠═d5b6366a-7555-11eb-34ce-c9ce840c882f
# ╠═a12c5a58-776b-11eb-2db4-29587243cf84
# ╠═0104062c-776c-11eb-3c80-29b4f7e46d6a
# ╠═589b8c8c-7559-11eb-38b3-c314584b2330
# ╠═7f73ba7e-7558-11eb-3561-2b3eb0e224ae
# ╠═141a0ca6-776c-11eb-32a0-8d6e8bfd327b
# ╠═c2e28f00-7559-11eb-076a-d5eeeac13e47
# ╠═e1b4d960-7559-11eb-07a6-c3a9856bf373
# ╟─5a74ab70-7553-11eb-2e53-ad6f4728e157
# ╟─d67e9c84-7554-11eb-2ebf-a5b05fdb0abe
# ╠═9bb2b2f8-7553-11eb-1685-0fceea81abbf
