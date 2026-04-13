# Data
data <- data.frame(
  Math = c(80,70,90,60,85),
  Science = c(75,65,95,55,80),
  English = c(78,68,88,58,82)
)

# PCA
result <- prcomp(data, scale = TRUE)
print(result)

# Summary
summary(result)

# Dot Graph
plot(result$x[,1], result$x[,2],
     pch = 19,
     col = "blue",
     main = "PCA Graph",
     xlab = "PC1",
     ylab = "PC2")
