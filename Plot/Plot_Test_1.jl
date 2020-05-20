using Plots
# gr()

# # -------------example 1-------------------------
# 10 data points in 4 series
xs = 0 : 2π/10 : 2π
data = [sin.(xs) cos.(xs) 2sin.(xs) 2cos.(xs)]

# We put labels in a row vector: applies to each series
labels = ["Apples" "Oranges" "Hats" "Shoes"]

# Marker shapes in a column vector: applies to data points
markershapes = [:circle, :star5]

# Marker colors in a matrix: applies to series and data points
markercolors = [:green :orange :black :purple
                :red   :yellow :brown :white]

plot(xs, data, label = labels, shape = markershapes, color = markercolors,
     markersize = 10)


# ---------------example 2-------------------------
# plot(0:0.5:10, xaxis = ("my label", (0,10), 0:0.5:10, :log, :flip, font(8)))

# plot(0:1:10, 0:10:100, xlabel = "my label",
#              # xlims = (0,10),
#              xticks = 0:20:200,
#              # xflip = true,
#              xtickfont = font(8))
#
# savefig("zyc.png")
