
include("Bar_define_file.jl")
include("Bar1_define_file.jl")

using .Bar
using .Bar1

println(g(1,2))
println(f(1,2))
