
struct Point{T}
  x::T
  y::T
end

function norm(p::Point{T}) where T<:Real
  L=sqrt(p.x^2 + p.y^2)
  return L
end


println(norm(Point(1.0,2.0)))
