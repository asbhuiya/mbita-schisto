#--------------------------------
# mbita-make-binder-compendium.R
#
# Create a research compendium
# using GitHub and a Binder virtual
# machine.
#
# make the compendium using 
# the holepunch package
#
# See:
# Marwick B, Boettiger C, Mullen L. 2018. 
# Packaging data analytical work reproducibly using R (and friends) 
# PeerJ Preprints 6:e3192v2 
# https://doi.org/10.7287/peerj.preprints.3192v2
#--------------------------------


library(holepunch)

options( usethis.full_name = "Ben Arnold", 
         usethis.description = list( `Authors@R` = 'person("Arnold", "Ben", email = "ben.arnold@ucsf.edu", role = c("aut", "cre"), comment = c(ORCiD = "0000-0001-6105-7295"))', License = "CC0-1.0 + file LICENSE" ) )

write_compendium_description(type = "Compendium",
                             package = "mbita-schisto", 
                             description = "Full replication files for the analyses in the article entitled Fine-scale heterogeneity in Schistosoma mansoni force of infection measured through antibody response",
                             version = "1",
                             path = ".")
# to write a description, with dependencies. Be sure to fill in placeholder text

write_dockerfile() 
# To write a Dockerfile. It will automatically pick the date of the last 
# modified file, match it to that version of R and add it here. You can 
# override this by passing r_date to some arbitrary date
# (but one for which a R version exists).

generate_badge() # This generates a badge for the README.md file.

# ----------------------------------------------
# At this time push the code to GitHub
# ----------------------------------------------

# And click on the badge or use the function below to get the build 
# ready ahead of time.
build_binder()
# 🤞🚀
