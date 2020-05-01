# Here we test the relative path import of the modules.
# The second module also use the relative path import to access a function in the first module.

# Include works in the dynamically-current module, not the lexically-current one.
# It is really a load-time function, not a run-time one.
include("Bar_define_file.jl")
include("Bar1_define_file.jl")

# It tells Julia to find the module around the current working directory instead of Julia Environment
using .Bar
using .Bar1

println(f(1,2))
println(f1(1,2))
