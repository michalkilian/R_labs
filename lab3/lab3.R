library(ggvis)

hours <- read.csv("hour.csv", header = TRUE)
days <- read.csv("day.csv",  header = TRUE)

#plik day.csv
#44
print(mean(days$cnt))
print(sd(days$cnt))
print(median(days$cnt))
print(range(days$cnt))
#45
params_mean <- tapply(cnt,season,mean)
params_sd <- tapply(cnt, season, sd)
params_median <- tapply(cnt, season, median)
params_range <- tapply(cnt, season, range)

print(params_mean)
print(params_sd)
print(params_median)
print(params_range)

#dla wiosny
#46
params_mean[1]
params_sd[1]
params_median[1]
params_range[1]

#47
layer_points(ggvis(days, ~temp, ~cnt))
#48
layer_points(ggvis(days, ~temp, ~cnt, fill = ~season))
#49
layer_histograms(ggvis(days,~cnt))
#50
layer_boxplots(ggvis(days,~factor(season),~cnt))


#plik hour.csv
#52
layer_boxplots(ggvis(hours,~factor(hr), ~registered))
#53
layer_boxplots(ggvis(hours,~factor(hr), ~casual))
