module Bar1

include("Bar_define_file.jl")
using .Bar

export f

function f(x,y)
    return g(x,y)+g(x,y)^2
end

end
