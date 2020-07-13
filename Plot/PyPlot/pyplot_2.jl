# plot
using PyPlot
# If true, return Python-based GUI; otherwise, return Julia backend
PyPlot.pygui(true)
rcParams = PyPlot.PyDict(PyPlot.matplotlib."rcParams")
rcParams["font.family"] = "Arial"

xs = 0 : 2π/100 : 2π
ys1 = sin.(xs)
ys2 = cos.(xs)

fig, ax = PyPlot.subplots(figsize=(14, 6))
ax.plot(xs, ys1, "b*-", linewidth=2, label="Sin(x)", markersize=4)
ax.plot(xs, ys2, "rs-.", linewidth=2, label="Cos(x)", markersize=4)
ax.legend(loc="upper left'", fontsize=20)
ax.set_title("Function", fontdict=Dict("fontsize"=>16))
ax.set_xlabel("Time (min)", fontdict=Dict("fontsize"=>14))
ax.set_ylabel("Generation capacity", fontdict=Dict("fontsize"=>14))
ax.xaxis.set_tick_params(labelsize=12)
ax.yaxis.set_tick_params(labelsize=12)
fig.tight_layout(pad=0.2, w_pad=0.2, h_pad=0.2)
PyPlot.show()
