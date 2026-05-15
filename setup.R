# setup 

# renv::activate()
# renv::install("ciftiTools")            
# renv::install("mandymejia/fMRItools@7.0")
# renv::install("mandymejia/BayesBrainMap@2.0")
# renv::install("doParallel")
# renv::install("bench")
# renv::install("profvis")

# Load packages

library(ciftiTools)      # version 0.17.4
library(BayesBrainMap)   # version: 0.2.0
library(fMRItools)
library(doParallel)
library(bench)
library(profvis)
# renv::snapshot()


# Set CIFTI Workbench path
#wb_path <- "~/Downloads/workbench/bin_windows64" # Path to Workbench command, e.g. "~/workbench-command" or "C:/path/to/workbench-command.exe"
wb_path <- "C:/Users/diego/Downloads/workbench/bin_windows64" # Path to Workbench command, e.g. "~/workbench-command" or "C:/path/to/workbench-command.exe"
# Check if the path exists, otherwise throw an error
if (!file.exists(wb_path)) {
  stop(paste("Workbench path does not exist:", wb_path))
}
ciftiTools.setOption("wb_path", wb_path) 
