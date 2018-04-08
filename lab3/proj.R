library(ggvis)

hours <- read.csv("hour.csv", header = TRUE)
days <- read.csv("day.csv",  header = TRUE)

#plik day.csv
print(mean(days$cnt))
print(sd(days$cnt))
print(median(days$cnt))
print(range(days$cnt))

params_mean <- tapply(cnt,season,mean)
params_sd <- tapply(cnt, season, sd)
params_median <- tapply(cnt, season, median)
params_range <- tapply(cnt, season, range)

print(params_mean)
print(params_sd)
print(params_median)
print(params_range)

#dla wiosny
params_mean[1]
params_sd[1]
params_median[1]
params_range[1]

layer_points(ggvis(days, ~temp, ~cnt))
layer_points(ggvis(days, ~temp, ~cnt, fill = ~season))

layer_histograms(ggvis(days,~cnt))
layer_boxplots(ggvis(days,~factor(season),~cnt))


#plik hour.csv
layer_boxplots(ggvis(hours,~factor(hr), ~registered))
layer_boxplots(ggvis(hours,~factor(hr), ~casual))
