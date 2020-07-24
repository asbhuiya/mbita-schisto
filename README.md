# mbita-schisto
Fine-scale heterogeneity in Schistosoma mansoni force of infection measured through antibody response


## Description

This repository includes data and replication files to reproduce the analyses in the manuscript entitled _Fine-scale heterogeneity in Schistosoma mansoni force of infection measured through antibody response_

A preprint of the manuscript has been published on _medRxiv_: https://www.medrxiv.org/content/10.1101/2020.04.10.20061101v1 

The materials in this repo are cross-linked with the Open Science Framework repository: https://doi.org/10.17605/OSF.IO/RNME8

And with the Dryad repository:
https://doi.org/10.7272/Q6DZ06J3

The `data` subdirectory includes the datasets for the analysis. The `R` subdirectory includes all computational notebooks, organized by display item. To re-run the analyses, clone the GitHub directory (above), and create a new `output` subdirectory alongside `data` and `R` to store the output files (which are not pushed to GitHub to save space).

Each dataset includes a codebook. We have not included lon/lat village coordinates under guidance from our IRB, so the notebook that creates Figure 1, Figure S2 and Figure S3 cannot be run on the publicly available data (though the source code and HTML output are in the repo)

If you have any questions about these files, please contact Ben Arnold at UCSF (ben.arnold@ucsf.edu).

A computationally reproducible instance of the files can be launched with a Binder virtual machine:

[![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ben-arnold/mbita-schisto/master?urlpath=rstudio)
