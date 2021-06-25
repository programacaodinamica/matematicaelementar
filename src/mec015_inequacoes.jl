### A Pluto.jl notebook ###
# v0.14.0

using Markdown
using InteractiveUtils

# ╔═╡ 21ceca41-b414-47d0-8bc7-315f80338753
using Plots

# ╔═╡ b264b47a-caf7-11eb-0688-c3d9aff7b960
md"""
# Inequações 1º Grau

"""

# ╔═╡ 70314eab-d9e2-4c96-9e5e-0058d77561dd
begin
	f(x) = 4x + 3
	g(x) = 7x - 5
	h(x) = 0
end

# ╔═╡ c8fc5e95-e87f-4a81-923a-ae3a4abde2c4
function maior(f, g)
	solucao = []
	for x in -4:0.1:4
		if f(x) ≥ g(x)
			append!(solucao, x)
		end
	end
	solucao
end

# ╔═╡ ead2f5f4-b238-4357-bfc3-d7e17dd8a036
begin
	x = -4:4
	sol = maior(f, g)
	plot([x, x, sol], [f.(x), g.(x), h.(sol)], label = ["f", "g", "sol"], framestyle = :origin, legend=:bottomleft, lw = 3)
end

# ╔═╡ Cell order:
# ╠═b264b47a-caf7-11eb-0688-c3d9aff7b960
# ╠═21ceca41-b414-47d0-8bc7-315f80338753
# ╠═70314eab-d9e2-4c96-9e5e-0058d77561dd
# ╠═c8fc5e95-e87f-4a81-923a-ae3a4abde2c4
# ╠═ead2f5f4-b238-4357-bfc3-d7e17dd8a036
