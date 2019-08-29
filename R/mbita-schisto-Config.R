#--------------------------------
# mbita-schisto-Config.R
#
# Configuration file for the 
# Mbita, Kenya schistosomiasis
# analyses in the mbita-schisto
# directory
#--------------------------------

#--------------------------------
# load packages
#--------------------------------

# general
library(tidyverse)
library(scales)
library(grid)
library(gridExtra)

# spatial
library(sp)
library(sf)
library(raster)
library(leaflet)
library(mgcv)

library(here)
here()

#--------------------------------
# set up for parallel computing
#--------------------------------
library(foreach)
library(doParallel)
registerDoParallel(cores = detectCores() - 1)

#--------------------------------
# color palettes
#--------------------------------

# bright color blind palette:  https://personal.sron.nl/~pault/ 
cblack <- "#000004FF"
cblue <- "#3366AA"
cteal <- "#11AA99"
cgreen <- "#66AA55"
cchartr <- "#CCCC55"
cmagent <- "#992288"
cred <- "#EE3333"
corange <- "#EEA722"
cyellow <- "#FFEE33"
cgrey <- "#777777"

# very safe color blind pallette
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

# custom 16 level color palette for prevalence x uncertainty
qcolsd <- matrix(c(243,238,240, 194,207,220, 161,187,210, 119,161,199,
                   233,202,204, 187,170,188, 153,152,181, 104,132,174,
                   220,147,154, 174,140,162, 131,120,154, 105,113,157,
                   211,101,115, 162,102,125, 133,100,135,  95, 91,136),ncol=16,nrow=3)
qcols <- apply(qcolsd,2,function(x) rgb(x[1]/255,x[2]/255,x[3]/255))

