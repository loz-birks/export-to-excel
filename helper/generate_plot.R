# Create plot - this could be as complicated as you need
# here we use an inbuilt data frame but you could import your own data
plot_fn <- function(cc){
  p <- data_fn(cc) %>% 
    ggplot(aes(mpg, wt)) + 
    geom_point()
  
  return(p)
}

