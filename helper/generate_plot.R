# Create plot - this could be as complicated as you need
# here we use an inbuilt data frame but you could import your own data
p <- df %>% 
  ggplot(aes(mpg, wt)) + 
  geom_point()
