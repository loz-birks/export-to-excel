source("helper/load_libraries.R")
source("helper/generate_df.R")
source("helper/generate_plot.R")

# Save to Excel
# create a workbook
wb <- createWorkbook()

# then iterate over all possible cyl values
for (i in c(4, 6, 8)){
  
  # 1. add a worksheet to the workbook
  # define sheet name
  sheet_name <- paste0("Sheet_", i)
  # create sheet
  addWorksheet(wb, sheet_name)
  
  # 2. add the data
  # define the data
  data <- data_fn(i)
  # put it in the excel
  writeData(wb, sheet_name, x = data, startRow = 1, startCol = 1)
  
  # 3. add the plot
  # print the plot 
  p <- plot_fn(i)
  print(p)
  # put it in the excel
  insertPlot(wb, sheet_name, 
             width = 5, height = 4, units = "in", 
             # specify where the plot should be (here I move it relative to the data)
             startRow = 1, startCol = ncol(data) + 2)

  
}

# save the workbook
saveWorkbook(wb, paste0("outputs/example_", format(Sys.Date(), "%Y%m%d"), ".xlsx"), overwrite = TRUE)
