using PyPlot
# If true, return Python-based GUI; otherwise, return Julia backend
PyPlot.pygui(false)
rcParams = PyPlot.PyDict(PyPlot.matplotlib."rcParams")
rcParams["font.size"] = 16
rcParams["font.family"] = "sans-serif"



x = range(0; stop=2*pi, length=1000); y = sin.(3 * x + 4 * cos.(2 * x));
PyPlot.plot(x, y, color="red", linewidth=2.0, linestyle="--")
PyPlot.title("A sinusoidally modulated sinusoid")
PyPlot.savefig("Plot/PyPlot/sinusoid.png")
a = PyPlot.gcf()
PyPlot.display(a)
