module Bar1

include("Bar_define_file.jl")
using .Bar

export f1

function f1(x,y)
    return f(x,y)+f(x,y)^2
end

end
