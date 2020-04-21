
# include("/Users/whoiszyc/Github/Yichen_Repo/Repo_Julia/src/Module/Bar_define_file.jl")
# include("/Users/whoiszyc/Github/Yichen_Repo/Repo_Julia/src/Module/Bar1_define_file.jl")

include("Bar_define_file.jl")
# include("Bar1_define_file.jl")

using Bar
# using .Bar1

println(Bar.g(1,2))
# println(Bar1.f(1,2))
