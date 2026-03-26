# Exporting charts and data to Excel 

## Overview

**Purpose:** A quick guide to dynamically add plots and data to excel sheets. I have not added any formatting to the workbook but details about how to do this can be found in the `openxlsx` package documentation e.g. [see here](https://ycphs.github.io/openxlsx/articles/Introduction.html). 

## Repo Structure

```         
se-provider-page/
├── helper/
│   └── generate_df.R 
│   └── generate_plot.R 
│   └── load_libraries.R 
├── outputs/ [probably add this folder to the .gitignore in your own iterations]
│   └── ...
└── README.md
└── run_file.R 
└── export-to-excel.Rproj
```
### File Summary

|            |                 |                                                                                                                                                                     |
|------------|-----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| helper/ | generate_df.R | Defines a function which takes a cylinder number as input and filters the data to that subset                                                 |
| helper/ | generate_plot.R | Defines a function which takes a cylinder number as input and generates a scatter plot of MPG against Weight                                                         |
| helper/     | load_libraries.R    | Loads all required libraries                                       |
| run_file/     | run_file.R     | Is the main file, sources necessary scripts and then creates an excel output for all input cyclinder values |

