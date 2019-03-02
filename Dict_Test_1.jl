# try out different definition of dictionary


# abstract dictionary
var = Dict{Symbol,Any}(:nw => Dict{Int,Any}())
con = Dict{Symbol,Any}(:nw => Dict{Int,Any}())
con = Dict{Symbol,Any}(:nw => Dict{String,Any}())


# dictionaries with different types
K1=Dict{Symbol,Any}(:a=>18,:b=>20,:c=>15)
K2=Dict{String,Any}("a"=>18,"b"=>20,"c"=>15)
K3=Dict{Int,Any}(1=>18,2=>20,3=>15)

println(K1[:a]," ",K2["a"]," ",K3[1]," ")


# dictionaries insided a dictionary
K4=Dict{Symbol,Any}(:k1=>K1,:k2=>K2,:k3=>K3)
println(K4[:k2]["a"]," ",K4[:k1][:a]," ",K4[:k3][1])


#  A tuple of the names can be obtained using keys, and a tuple of the values can be obtained using values
# same for dictionaries
for i in keys(K4)
    println(i)
end
