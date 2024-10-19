### A Pluto.jl notebook ###
# v0.19.46

using Markdown
using InteractiveUtils

# ╔═╡ 7036db30-7e88-11ef-01c7-2f415c3089ee
begin
	struct Eisenstein{T<:Integer} <: Number
		a::T
		b::T
		Eisenstein(a::T, b::T) where {T} = new{T}(a,b)
		Eisenstein(a::T) where {T<:Integer} = new{T}(a, zero(T))
		Eisenstein(a::Integer, b::Integer) = new{eltype(promote(a,b))}(promote(a,b)...)
	end
	
	const w = Eisenstein(false, true)

	real(n::Eisenstein) = n.a - n.b / 2
	imag(n::Eisenstein) = n.b * sqrt(3) / 2
	norm(n::Eisenstein) = n.a * n.a + n.b * n.b - n.a * n.b
	Complex(n::Eisenstein{T}) = 
	
end

# ╔═╡ f46fbe6c-17ab-492b-8178-ff83c62ecf80
	import Base: Complex, real, imag

# ╔═╡ 7d680c48-a937-45b4-b606-1adc82fa904d
println(Complex{Float64}(5,6))

# ╔═╡ a5b0a642-b852-4131-8b02-1ef8d7012771
typeof(big(3.0))

# ╔═╡ ead3fb8e-0d69-4161-8701-c6dbc19505a5


# ╔═╡ 4236bcf4-4eed-400c-a373-cd359821cf21
#=╠═╡
begin
	arr = [3, 1, 4, 1, 5, 9]
	b = sort(arr)
	
	println(b) # Output: [1, 1, 3, 4, 5, 9]  (original array is now sorted)
	
end
  ╠═╡ =#

# ╔═╡ 7d4761f9-d49a-4275-872b-8196591cc6ec
# ╠═╡ disabled = true
#=╠═╡
begin
	arr = [3, 1, 4, 1, 5, 9]
	sort!(arr)
	
	println(arr) # Output: [1, 1, 3, 4, 5, 9]  (original array is now sorted)
	
end
  ╠═╡ =#

# ╔═╡ Cell order:
# ╠═7036db30-7e88-11ef-01c7-2f415c3089ee
# ╠═f46fbe6c-17ab-492b-8178-ff83c62ecf80
# ╠═7d680c48-a937-45b4-b606-1adc82fa904d
# ╠═7d4761f9-d49a-4275-872b-8196591cc6ec
# ╠═4236bcf4-4eed-400c-a373-cd359821cf21
# ╠═a5b0a642-b852-4131-8b02-1ef8d7012771
# ╠═ead3fb8e-0d69-4161-8701-c6dbc19505a5
