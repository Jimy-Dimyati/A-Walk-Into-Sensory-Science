RDS_from_web <- function(url) {
  tempFile_location <- tempfile()
  download.file(url, tempFile_location)
  rds_file <- readRDS(tempFile_location)
  file.remove(tempFile_location)
  rds_file
}

chocolates_adjmean <- RDS_from_web("https://storage.googleapis.com/dqlab-dataset/chocolates_adjmean.rds")
chocolates_adjmean
dim(chocolates_adjmean)
