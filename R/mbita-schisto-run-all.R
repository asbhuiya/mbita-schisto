
#-----------------------------------
# This script runs all computational
# notebooks used in the article:
#
# Fine-scale heterogeneity in 
# Schistosoma mansoni force of 
# infection measured through 
# serologic surveillance
#-----------------------------------
library(here)
here::here()

#-----------------------------------
# Raw study data processing
# to create public data files
#
# (not run for public replication)
#-----------------------------------
rmarkdown::render(here::here("R/mbita-schisto-format-data.Rmd"),
                  output_file = here::here("R/mbita-schisto-format-data.html"))

#-----------------------------------
# Table 1
#-----------------------------------
rmarkdown::render(here::here("R/Table1-mbita-schisto-sample-summary.Rmd"),
                  output_file = here::here("R/Table1-mbita-schisto-sample-summary.html"))

#-----------------------------------
# Figure 1
# Supplementary Figures 1, 5
#-----------------------------------
rmarkdown::render(here::here("R/Fig1-FigS1-FigS5-mbita-schisto-map.Rmd"),
                  output_file = here::here("R/Fig1-FigS1-FigS5-mbita-schisto-map.html"))

#-----------------------------------
# Figure 2
# Figure 3
# Supplementary Figure 2
#-----------------------------------
rmarkdown::render(here::here("R/Fig2-Fig3-FigS2-mbita-schisto-SEA-vs-KK.Rmd"),
                             output_file = here::here("R/Fig2-Fig3-FigS2-mbita-schisto-SEA-vs-KK.html"))


#-----------------------------------
# Figure 4a, 4b
# Supplementary Figure 6
#-----------------------------------
rmarkdown::render(here::here("R/Fig4a-Fig4b-FigS6-mbita-schisto-distance-from-lake.Rmd"),
                  output_file = here::here("R/Fig4a-Fig4b-FigS6-mbita-schisto-distance-from-lake.html"))

#-----------------------------------
# Figure 4c
# Supplementary Figure 3
#-----------------------------------
rmarkdown::render(here::here("R/Fig4c-FigS3-mbita-schisto-by-age.Rmd"),
                  output_file = here::here("R/Fig4c-FigS3-mbita-schisto-by-age.html"))

#-----------------------------------
# Supplementary Figure 4
#-----------------------------------
rmarkdown::render(here::here("R/FigS4-mbita-schisto-antibody-distributions.Rmd"),
                  output_file = here::here("R/FigS4-mbita-schisto-antibody-distributions.html"))

