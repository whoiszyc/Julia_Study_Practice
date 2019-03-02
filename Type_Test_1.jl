
mutable struct Bar
  baz
  qux::Float64
end

function Bar(a::Int,b::Int)
  return a+b
end

bar1 = Bar("Hello", 1.5)
println(bar1.baz)

a=Bar(5,2)
println(a)

# bar2=Bar()
# bar2.qux=2.0
# bar2.baz=5
