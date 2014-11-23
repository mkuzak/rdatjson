setup_dat_test <- function() {
  # create tmp file with csv data set to feed into dat
  tmp_file <- tempfile()
  write.csv(iris, file=tmp_file)
  
  # switch to tmp dir
  setwd(tempdir())
 
  # init dat repository
  init_opts <- c("imatestdat", "Iris dataset", "cat@imdat.com")
  system2("dat", "init", stdin=init_opts)
  # import csv to dat
  system2("dat", args=paste("import --csv ", tmp_file))
}

cleanup_dat_test <- function() {
  
  
}