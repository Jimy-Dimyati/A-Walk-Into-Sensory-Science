library(readr)

chocolates <- 
  read_csv(
    "https://storage.googleapis.com/dqlab-dataset/chocolates.csv",
    col_types = cols(
      panelist = col_factor(),
      session = col_factor(),
      rank = col_factor(),
      product = col_factor(levels = paste0("choc", 1:6)),
      .default = col_integer()
    )
  )
chocolates
