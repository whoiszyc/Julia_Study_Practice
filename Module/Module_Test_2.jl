# We test if an absolute path to the file used in `include` can avoid relative path import

# change the current working directory to the one containing the file
# It seems Julia will not automatically change directory based on the operating file.
cd(@__DIR__)
println(pwd())

# include("/Users/whoiszyc/Github/Yichen_Repo/Repo_Julia/src/Module/Bar_define_file.jl")
# using Bar  # Julia cannot find the module in the LOAD_PATH
# println(Bar.f(1,2))


include("Bar_define_file.jl")
using .Bar
println(Bar.f(1,2))
