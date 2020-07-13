using PyPlot
# If true, return Python-based GUI; otherwise, return Julia backend
PyPlot.pygui(true)
rcParams = PyPlot.PyDict(PyPlot.matplotlib."rcParams")
rcParams["font.size"] = 16
rcParams["font.family"] = "sans-serif"

fig, ax = PyPlot.subplots()
ax.plot([1, 2, 3], label="test")
ax.legend()
PyPlot.show()
