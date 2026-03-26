# here I use the mtcars dataframe but you could import or generate your own
data_fn <- function(cc){
  df <- mtcars %>% 
    filter(cyl == cc)
  
  return(df)
}
