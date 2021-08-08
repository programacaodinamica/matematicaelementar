### A Pluto.jl notebook ###
# v0.14.8

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

# ╔═╡ 91d6bffc-f6f1-11eb-1e7a-9d5994a48a1b
using Plots, Images

# ╔═╡ 824b2e4a-0463-4013-8f68-d86755e7bae1
md"""
# Introdução a Trigonometria

## Ângulos e arcos
"""

# ╔═╡ 958d5927-7cf6-44fa-9b42-b14edcae6779
load("img/trigonometria1.jpg")

# ╔═╡ f7f7201a-bdbf-4a0f-841b-dd26ebb9c64b
md"""
## Unidades de medidas

* 1 radiano (1 rad) é um ângulo correspondente a um arco de comprimento igual ao raio da circunferência.
* 1 grau (1º) é um ângulo correspondente a um arco de comprimento igual a \frac{1}{360} da circunferência.

**Como converter de graus para radianos e vice-versa?**
"""

# ╔═╡ b2bc7b15-fb25-477f-a5f9-5917062b91dc
grauprarad(grau) = grau*π/180

# ╔═╡ 62712bdb-3e12-4929-a90c-566082622aa2
grauprarad(180)

# ╔═╡ fb3448ba-5c7f-4845-864b-c54fb9f590bd
md"""
## Triângulo Retângulo
"""

# ╔═╡ d91a2a00-72a5-491f-8de8-350dbd5cfe63
load("img/trigonometria2.jpg")

# ╔═╡ b49e86c0-4d9a-4af5-ac4a-5819d833f1b7
md"""
## Círculo Trigonométrico
"""

# ╔═╡ 53d9457f-2a5d-407d-b97f-154acca77b1e
oncircle(θ) = (cos(θ), sin(θ))

# ╔═╡ e5b12d75-72bf-4159-b8b0-ffc639e5d519
@bind g_angle html"""<input type="range" min="0", max="720", step="1" style="width: 75%;">"""

# ╔═╡ fbb51b23-c10d-446f-a44c-20a437d3d1c9
begin
	angle = grauprarad(g_angle)
	"ângulo $(g_angle)º"
end

# ╔═╡ b686c1ba-2186-4318-96e1-5c3c8f4be31f
begin
	# circle
	plot(oncircle.(0:0.05:2π), 
		framestyle=:origin, aspect_ratio=:equal, linewidth=3)
	# arc
	plot!(oncircle.(0:0.02:angle), linewidth=4, linecolor=:red)
	px, py = oncircle(angle)
	plot!([0, px], [0, py], linewidth=3)
end

# ╔═╡ 2b703ef7-89d9-470c-990b-85468c39f49e
sin(grauprarad(60))

# ╔═╡ 8eaac681-b814-45e2-8add-45df490478da
sin(grauprarad(120))

# ╔═╡ 15b74409-206f-4e5e-a25c-cf60f444ab78
md"""
## A função seno
"""

# ╔═╡ 1acebe16-4f5d-4c8b-ad12-36236999ea0d
x = 0:0.1:20

# ╔═╡ df71284a-ade4-4ba9-95ae-e55b58325dd3
plot(x, sin.(x))

# ╔═╡ b340deab-7d29-4156-ae56-29868af3936c
md"""
## A função cosseno
"""

# ╔═╡ b7afd543-eeb8-45e2-9e55-fc259249c33f
plot(x, cos.(x))

# ╔═╡ 7008833a-a4a3-49d2-bf42-fbae57c8bc29
md"""
* Seno e cosseno são periódicos (repetem a cada 2π)
* Os gráficos dessas funções são parecidos, porém defasados
"""

# ╔═╡ 96846a0f-69c3-4846-824d-27f8bd1c511e
plot(x, [sin.(x), cos.(x)], linewidth=2, labels=["seno" "cosseno"])

# ╔═╡ 0c65c114-3419-48ed-898d-ce93e9ea15fe
md"""
# Aplicações
"""

# ╔═╡ 0deddbe0-5c74-4f83-954f-92e86bce94c7
md"""
As funções trigonométricas têm muitas aplicações em diversas áreas como compressão de imagens, computação gráfica, redes neurais artificiais, estudo das ondas etc. Elas aparecem com frequência no meio de outros problemas matemáticos. Abaixo, seguem dois vídeos em que usamos, diretamente, funções trigonométricas para modelar a Terra em 3D e para construir uma visualizador de cenas 3D por *ray tracing*.
"""

# ╔═╡ ce8147b4-74f8-4f8d-b0c8-d0cb730615b5
html"""
<iframe width="560" height="315" src="https://www.youtube.com/embed/6RXmgUgB-AU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
"""

# ╔═╡ 549fd155-7998-4fa3-80c2-0e015622789b
html"""
<iframe width="560" height="315" src="https://www.youtube.com/embed/LlNaI6upK94?start=8648" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
"""

# ╔═╡ 3129aadd-2c2a-469f-ab7b-b5fe14c093ac
md"""
Neste último vídeo, representamos a forma de um coração implicitamente em termos de x e y, mas se você pesquisar um pouco sobre o desenho de formas, verá que é possível rescrevê-la no que chamamos de forma paramétrica, usando uma expressão em senos e cossenos de um ângulo.
"""

# ╔═╡ 89d83a52-7035-4f63-a2a9-6cce45efd75b
html"""
<iframe width="560" height="315" src="https://www.youtube.com/embed/l204_L-IiI4?start=8648" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
"""

# ╔═╡ Cell order:
# ╠═91d6bffc-f6f1-11eb-1e7a-9d5994a48a1b
# ╟─824b2e4a-0463-4013-8f68-d86755e7bae1
# ╟─958d5927-7cf6-44fa-9b42-b14edcae6779
# ╟─f7f7201a-bdbf-4a0f-841b-dd26ebb9c64b
# ╠═b2bc7b15-fb25-477f-a5f9-5917062b91dc
# ╠═62712bdb-3e12-4929-a90c-566082622aa2
# ╟─fb3448ba-5c7f-4845-864b-c54fb9f590bd
# ╟─d91a2a00-72a5-491f-8de8-350dbd5cfe63
# ╟─b49e86c0-4d9a-4af5-ac4a-5819d833f1b7
# ╠═53d9457f-2a5d-407d-b97f-154acca77b1e
# ╠═e5b12d75-72bf-4159-b8b0-ffc639e5d519
# ╟─fbb51b23-c10d-446f-a44c-20a437d3d1c9
# ╠═b686c1ba-2186-4318-96e1-5c3c8f4be31f
# ╠═2b703ef7-89d9-470c-990b-85468c39f49e
# ╠═8eaac681-b814-45e2-8add-45df490478da
# ╟─15b74409-206f-4e5e-a25c-cf60f444ab78
# ╠═1acebe16-4f5d-4c8b-ad12-36236999ea0d
# ╠═df71284a-ade4-4ba9-95ae-e55b58325dd3
# ╟─b340deab-7d29-4156-ae56-29868af3936c
# ╠═b7afd543-eeb8-45e2-9e55-fc259249c33f
# ╟─7008833a-a4a3-49d2-bf42-fbae57c8bc29
# ╠═96846a0f-69c3-4846-824d-27f8bd1c511e
# ╟─0c65c114-3419-48ed-898d-ce93e9ea15fe
# ╟─0deddbe0-5c74-4f83-954f-92e86bce94c7
# ╟─ce8147b4-74f8-4f8d-b0c8-d0cb730615b5
# ╟─549fd155-7998-4fa3-80c2-0e015622789b
# ╟─3129aadd-2c2a-469f-ab7b-b5fe14c093ac
# ╟─89d83a52-7035-4f63-a2a9-6cce45efd75b
