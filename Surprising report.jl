### A Pluto.jl notebook ###
# v0.19.46

using Markdown
using InteractiveUtils

# ╔═╡ 81a9a2a0-7cce-11ef-2826-eb07608501fb
md"""# Struct"""

# ╔═╡ 87569a59-ee50-42ea-9156-e0861351f718
struct Example1{T<:Integer} <: Number
	a::T
	b::T
end


# This defines a struct as a subtype of Number, and inputs as a subtype of Integer.

# Inside the struct, you ensure that the fields (like inputs) have the same type T.

# ╔═╡ 96c23f82-ac0e-4175-8626-04bee78c9a72
struct Example2{T1<:Integer, T2<:Bool}
	a::T1
	b::T2
end

# Here, you defined to different subtypes for your fields. You can do even more.


# ╔═╡ 7cf42d4d-ede8-4a02-b2e5-eda457f40663
struct Example3{T3}
	c::T3
end

# Here, your type is parametric. It will be defined by the user's input.


# ╔═╡ 0bc67118-f1d1-4371-b1cd-da71bbf1c6c5
struct Example4
	name::Int64
	add::Int64
end

# ╔═╡ 6fe6a2a8-8bff-49ee-bfca-545f134427ba
println(n::Example4) = n.name - n.add

# ╔═╡ 9cb4ea5b-b283-4291-b5d7-bd7b2919cb8b
begin
k = Example4(63, 65)
println(k.name - k.add)
end

# ╔═╡ 8f14e4f0-caa9-4d2e-93d9-f23f30ed4905


# ╔═╡ ab7b16d2-65ae-4391-b21e-7ab58743d65b
md"""# Func"""

# ╔═╡ a265bc94-118a-447e-840f-ab444f45011a
function add(a::Int, b::Int)
	return a + b
end

# Here, you specify your type of input right in the function.

# ╔═╡ 75241ad6-59b7-4635-963a-b58357e53b98
function addy(a,b,c,d)
	return a,b,c,d
end

# Here, you haven't specified any types. So it's due to user's input.


# ╔═╡ 95e5f0bf-86d3-4699-9529-48763613cefc
begin
func = (x,y) -> x < y
# this is a new way of defining a function.
# before ->, it indicates the inputs.
# after ->, it indicates what the function do.
func(7,8)
end

# ╔═╡ e4a5b4ab-6829-400e-9bc2-0e9a940db8bc
eltype(promote(4,4.1))

# ╔═╡ e0c19fdd-4588-44ed-8768-83e63480cfd9
round(3.14 + 4.5im)
3.0 + 4.0im

# ╔═╡ 778cb0d7-bf29-4496-97cb-91c639f96822
round(3.14 + 4.5im, RoundUp, RoundNearestTiesUp)
4.0 + 5.0im

# ╔═╡ de03bfb6-b490-47aa-831f-1cb80b703a21
round(3.14159 + 4.512im; digits = 4)

# ╔═╡ df115e30-5c5e-42ec-8d9c-ec0992400ef1
round(3.14159 + 4.512im; sigdigits = 3)
3.14 + 4.51im

# ╔═╡ Cell order:
# ╠═81a9a2a0-7cce-11ef-2826-eb07608501fb
# ╠═87569a59-ee50-42ea-9156-e0861351f718
# ╠═96c23f82-ac0e-4175-8626-04bee78c9a72
# ╠═7cf42d4d-ede8-4a02-b2e5-eda457f40663
# ╠═0bc67118-f1d1-4371-b1cd-da71bbf1c6c5
# ╠═9cb4ea5b-b283-4291-b5d7-bd7b2919cb8b
# ╠═6fe6a2a8-8bff-49ee-bfca-545f134427ba
# ╠═8f14e4f0-caa9-4d2e-93d9-f23f30ed4905
# ╠═ab7b16d2-65ae-4391-b21e-7ab58743d65b
# ╠═a265bc94-118a-447e-840f-ab444f45011a
# ╠═75241ad6-59b7-4635-963a-b58357e53b98
# ╠═95e5f0bf-86d3-4699-9529-48763613cefc
# ╠═e4a5b4ab-6829-400e-9bc2-0e9a940db8bc
# ╠═e0c19fdd-4588-44ed-8768-83e63480cfd9
# ╠═778cb0d7-bf29-4496-97cb-91c639f96822
# ╠═de03bfb6-b490-47aa-831f-1cb80b703a21
# ╠═df115e30-5c5e-42ec-8d9c-ec0992400ef1
