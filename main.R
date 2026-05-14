# setup libraries
source("./setup.R")

# load files: priors and bold data.




# run actual bayesian brain mapping

bMap_1 <- fit_BBM(
  BOLD = BOLD_1,
  prior = prior,
  TR = 0.72,
  drop_first = 15,
  nuisance = NULL,
  scrub = NULL,
  method_FC = "VB2",
  epsilon = 0.01,
  GSR = FALSE,
  usePar = FALSE,
  method_FC = "VB2"
  
)