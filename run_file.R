source("helper/load_libraries.R")
source("helper/generate_df.R")
source("helper/generate_plot.R")

# Save to Excel
# create a workbook
wb <- createWorkbook()
# add a worksheet to the workbook
addWorksheet(wb, "Var1")
# add the plot
insertPlot(wb, "Var1", 
           width = 5, height = 4, units = "in", 
           # specify where the plot should be (here I move it relative to the data)
           startRow = 1, startCol = ncol(df) + 2)
# add the data
writeData(wb, "Var1", x = df, startRow = 1, startCol = 1)
# save the workbook
saveWorkbook(wb, paste0("outputs/example_", format(Sys.Date(), "%Y%m%d"), ".xlsx"), overwrite = TRUE)
             