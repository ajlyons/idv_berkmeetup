require(manipulate)

## Filtering data with a picker
manipulate(
    barplot(as.matrix(longley[,factor]), 
            beside = TRUE, main = factor),
    factor = picker("GNP", "Unemployed", "Employed"))


## Create a plot with a manipulator
manipulate(plot(1:x), x = slider(5, 10))

## Using more than one slider
manipulate(
    plot(cars, xlim=c(x.min,x.max)), 
    x.min=slider(0,15), 
    x.max=slider(15,30))

## Create a picker with labels
manipulate(
    plot(pressure, type = type), 
    type = picker("points" = "p", "line" = "l", "step" = "s"))

## Toggle boxplot outlier display using checkbox
manipulate(
    boxplot(Freq ~ Class, data = Titanic, outline = outline),
    outline = checkbox(FALSE, "Show outliers"))

## Combining controls
manipulate(
    plot(cars, xlim = c(x.min, x.max), type = type, 
         axes = axes, ann = label),
    x.min = slider(0,15),
    x.max = slider(15,30, initial = 25),
    type = picker("p", "l", "b", "c", "o", "h", "s", "S", "n"),
    axes = checkbox(TRUE, "Draw Axes"),
    label = checkbox(FALSE, "Draw Labels"))
