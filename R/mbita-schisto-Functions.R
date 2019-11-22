#--------------------------------
# mbita-schisto-Functions.R
#
# Shared functions for the 
# Mbita, Kenya schistosomiasis
# analyses in the mbita-schisto
# directory
#--------------------------------

#----------------------------------
# simulataneous CIs for GAMs
# estimated by resampling the 
# Bayesian posterior estimates of
# the variance-covariance matrix
# assuming that it is multivariate normal
# the function below also estimates 
# the unconditional variance-covariance
# matrix, Vb=vcov(x,unconditional=TRUE), 
# which allows for undertainty in the actual
# estimated mean as well 
# (Marra & Wood 2012 Scandinavian Journal of Statistics, 
#  Vol. 39: 53–74, 2012, doi: 10.1111/j.1467-9469.2011.00760.x )
# simultaneous CIs provide much better coverage than pointwise CIs
# see: http://www.fromthebottomoftheheap.net/2016/12/15/simultaneous-interval-revisited/
#
# @param       m : GAM model fit object from mgcv gam()
# @param newdata : data.frame on which to make predictions from the model fit.
#                  Must include all variables used to fit the model m
# @param  nreps  : number of replications to sample from the Bayesian posterior
#
# @returns : gamCI returns a data.frame identical to newdata with 6 new variables:
#            NOTE: ALL PREDICTIONS ARE ON THE SCALE OF LINEAR PREDICTIONS FROM THE MODEL 
#                 (i.e., log-odds for logit model)
#            fit    : marginal spline prediction for each observation
#            se_fit : approximate standard error of the spline prediction
#            uprP   : upper pointwise 95% confidence interval
#            lwrP   : lower pointwise 95% confidence interval
#            uprS   : upper simultaneous 95% confidence interval
#            lwrS   : lower simultaneous 95% confidence interval
#----------------------------------

gamCI <- function(m,newdata,nreps=10000) {
  require(mgcv)
  require(dplyr)
  Vb <- vcov(m,unconditional = TRUE)
  pred <- predict(m, newdata, se.fit = TRUE)
  fit <- pred$fit
  se.fit <- pred$se.fit
  BUdiff <- MASS::mvrnorm(n=nreps, mu = rep(0, nrow(Vb)), Sigma = Vb)
  Cg <- predict(m, newdata, type = "lpmatrix")
  simDev <- Cg %*% t(BUdiff)
  absDev <- abs(sweep(simDev, 1, se.fit, FUN = "/"))
  masd <- apply(absDev, 2L, max)
  crit <- quantile(masd, prob = 0.95, type = 8)
  pred <- data.frame(newdata,fit=pred$fit,se_fit=pred$se.fit)
  pred <- mutate(pred,
                 uprP = fit + (2 * se.fit),
                 lwrP = fit - (2 * se.fit),
                 uprS = fit + (crit * se.fit),
                 lwrS = fit - (crit * se.fit)
  )
  return(pred)
}


#----------------------------------
# convert linear predictor from 
# a logistic model to prevalance
#----------------------------------
expitfn <- function(x) {
  exp(x)/(1+exp(x))
}
