## Beers and Breweries in the us

#### Author: Kevin Okiah                               
#### 06/25/2017

### Introduction
In this report, we explore `beers` and `breweries` datasets for the 51 states in the US. The steps and procedures taken in this analysis are stipulated below. We successfully merged the two datasets `Beers` dataset which contains a list of 2410 US craft beers to the `Breweries` dataset containing 558 US breweries.

### Structure our repository and files in them

This GitHub Website {https://github.com/kevimwe/US-Breweries-Data-EDA/} is organised as follows. The root directory has  the following important files and sub directories.
  
* [`README.md `](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/README.md) : This is the landing page of this GitHub analysis repository. It provides insights on the organization of the repository and instructions on how to run this analysis.
* [`Case_Study_Batch.Rmd`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/Case_Study_Batch.Rmd) : This is the engine of this analysis. It knits together all the pieces for this analysis by calling R scripts in the `/analysis` directory to perform different functions geared towards the generation of a report for this analysis
* [`batch.R`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/batch.R): is used to source `Case_Study_Batch.Rmd` if someone prefers to run this analysis in base R rather than as an rmarkdown script. 
* [`Case_Study_Batch.md`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/Case_Study_Batch.md): This is the web readable report for this analysis. It contains both source code and outputs of the codes from running this analyis broken down in code blocks which are explained in detail. The graphical images that are used in the `Case_Study_Batch.md`report are stored in [`/Case_Study_Batch_files/figure-markdown_strict`](https://github.com/kevimwe/US-Breweries-Data-EDA/tree/master/Case_Study_Batch_files/figure-markdown_strict) subdirectory.

* [`/Analysis`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/analysis) directory is the hub for the R scripts that are used in this analysis. The different R scripts are listed below with a brief description of their functions.
    * [`/analysis/load_libraries.R`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/analysis/load_libraries.R): loads the R libraries used in this analysis using `p_load()` function from `[pacman`](https://cran.r-project.org/web/packages/pacman/vignettes/Introduction_to_pacman.html) library.
    * [`/analysis/load_and_explore_data.R`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/analysis/load_and_explore_data.R): script loads `Beers` and `Breweries` dataset and performs some basic exploratory data analysis.
    * [`/analysis/Clean_data.R`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/analysis/Clean_data.R): script performs data cleaning operations on the `Beers` and `Breweries` datasets. It renames several confusing columns in both datasets.
    * [`/analysis/Number_of_NAs.R`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/analysis/Number_of_NAs.R): script counts and reports the number of NA's per columns in the merged dataset of `Beers` and `Breweries`.
    * [`/analysis/ABV_by_State.R`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/analysis/ABV_by_State.R): Computes and reports the median Alcohol by Volume of the beer (ABV) by State.
    * [`/analysis/IBU_by_State.R`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/analysis/IBU_by_State.R): Computes and reports the median International Bitterness Units of the beer (IBU) by States
    * [`/analysis/Bar_Chart_Plotter.R`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/analysis/Bar_Chart_Plotter.R): Uses ggplot2 R library to plot barchart to compare median ABV and median IBU by State

* [`/data`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/data) directory holds the datasets that are used in this analysis. The datasets ased are listed below. 
    * [`/data/Beers.csv`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/data/Beers.csv): this is the raw `Beers` dataset
    * [`/data/Breweries.csv`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/data/Breweries.csv): this is the raw `Breweries` dataset
    * [`/data/Brewery_and_Beer_Clean.csv`](https://github.com/kevimwe/US-Breweries-Data-EDA/blob/master/data/Brewery_and_Beer_Clean.csv): This is the `Beers` and `Breweries` datasets that have been cleaned and merged  ready for analysis

### Running this reproducible research in R
Begin by reading the README.md file in {https://github.com/kevimwe/US-Breweries-Data-EDA/} directory.  Clone or download this GitHub directory and its subdirectories. This markdown document can be generated by running `Case_Study_Batch.Rmd` or `batch.R` if your prefer runnning base R script.

