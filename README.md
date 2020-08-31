# mbita-schisto

[![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ben-arnold/mbita-schisto/master?urlpath=rstudio)

Fine-scale heterogeneity in Schistosoma mansoni force of infection measured through antibody response


## Description

This repository includes data and replication files to reproduce the analyses in the manuscript:

Arnold, B. F., Kanyi, H., Njenga, S. M., Rawago, F. O., Priest, J. W., Secor, W. E., Lammie, P. J., Won, K. Y. & Odiere, M. R. Fine-scale heterogeneity in Schistosoma mansoni force of infection measured through antibody response. _Proceedings of the National Academy of Sciences, U.S.A_ (2020). https://www.pnas.org/cgi/doi/10.1073/pnas.2008951117

The materials in this repo are cross-linked with the Open Science Framework repository: 
https://doi.org/10.17605/OSF.IO/RNME8

And with the Dryad repository:
https://doi.org/10.7272/Q6DZ06J3

The `data` subdirectory includes the datasets for the analysis. The `R` subdirectory includes all computational notebooks. To re-run the analyses, clone the GitHub directory (above), and create a new `output` subdirectory alongside `data` and `R` to store the output files (which are not pushed to GitHub to save space).

Each dataset includes a codebook. We have not included lon/lat village coordinates under guidance from our IRB, so the notebook that creates maps in Figure 1, Figure S2 and Figure S3 cannot be run on the publicly available data (though the source code and HTML output are in the repo)

If you have any questions about these files, please contact Ben Arnold at UCSF (ben.arnold@ucsf.edu).

## Virtual machine on Binder

You can run the computational notebooks through a virtual machine using Binder by clicking on the badge at the top of this file.  

A few notes. 
* Be patient: it will take a few minutes to launch RStudio at first on the virtual machine because it needs to install a number of packages. 
* The Docker container used for the Binder instance runs R v3.6.3 — the final run on our own machine ran in v4.0.2 perfectly well. 
* You will not be able to run files `1-mbita-schisto-format-data.Rmd` and `3-mbita-schisto-map.Rmd`. Those rely on identifiable data but are provided for completeness.  Everything else should run smoothly on the virtual machine.  



