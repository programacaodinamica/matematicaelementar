### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# ╔═╡ bfee76fe-95b8-4e5b-85f9-f887dc8d02cf
using Images

# ╔═╡ 61b43917-cc30-4990-bf7a-75194652b617
using Plots

# ╔═╡ 4e454c3c-9ef3-11eb-39a5-0f438cb05567
md"""# Pontos no Plano Cartesiano"""

# ╔═╡ c6570e02-fa1b-4cf7-b75c-bb838f67f3f5
md""" ## Números como pontos: a reta Real
"""

# ╔═╡ c3a1b07e-2563-4147-8660-af18343a73b8
load("img/geometria/reta-real.png")

# ╔═╡ d5d583f0-28d7-41c8-897c-31f346c9bbeb
md""" ## Produto Cartesiano
"""

# ╔═╡ df03ec29-97db-4324-90b8-fcf5859fd29f
load("img/geometria/produto-cartesiano.png")

# ╔═╡ edd942fb-85d4-4c51-b391-d1d220bf1269
md""" ## Plano Cartesiano como sistema de coordenadas

"""

# ╔═╡ d4f3c8d2-aaac-4bdb-8e8c-7055e6b415ca
load("img/geometria/plano-cartesiano.png")

# ╔═╡ 5fa29f3a-4199-401d-9135-8ba03fbd6567
begin
	x = [0, 12, -√5]
	y = [0, 15, -7]
	scatter(x, y)
end

# ╔═╡ Cell order:
# ╟─4e454c3c-9ef3-11eb-39a5-0f438cb05567
# ╟─bfee76fe-95b8-4e5b-85f9-f887dc8d02cf
# ╟─c6570e02-fa1b-4cf7-b75c-bb838f67f3f5
# ╟─c3a1b07e-2563-4147-8660-af18343a73b8
# ╟─d5d583f0-28d7-41c8-897c-31f346c9bbeb
# ╟─df03ec29-97db-4324-90b8-fcf5859fd29f
# ╟─edd942fb-85d4-4c51-b391-d1d220bf1269
# ╟─d4f3c8d2-aaac-4bdb-8e8c-7055e6b415ca
# ╟─61b43917-cc30-4990-bf7a-75194652b617
# ╠═5fa29f3a-4199-401d-9135-8ba03fbd6567
