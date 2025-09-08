# day-2-organ-GRANAR-MECHA
> _Hands-on session on root hydraulic and anatomical analysis using GRANAR and MECHA_

Adrien Heymans, Valentin Couvreur 

--- 


This repository is prepared for a Summer School session on water flux in plant roots. The focus of Day 2 is to use **GRANAR** and **MECHA** tools to analyze root anatomy and simulate hydraulic properties. Participants will learn how anatomical features, and hydraulic sub-cellular properties relate to water transport efficiency in roots.

## Installation

### Clone the Repository

```bash
git clone https://github.com/water-fluxes/day-2-organ-GRANAR-MECHA/
cd day-2-organ-GRANAR-MECHA
```

### Local installation --> Create a virtual environment 

>[!NOTE]
> We recommend to use [Mamba](https://mamba.readthedocs.io/en/latest/installation/mamba-installation.html) to create a virtual environment to run the software in it ([Anaconda](https://www.anaconda.com/download) works also)
>
> For more information on how to set-up conda, please check the [conda user guide](https://conda.io/projects/conda/en/latest/user-guide/install)

```bash
mamba env create -f conda/environment.yaml
mamba activate mecha_env
```

in R, install GRANAR 
```{r}
# Install devtools if not already installed
install.packages("devtools")

# Install GRANAR
devtools::install_github("granar/granar")
```

## Start

Open [RStudio]() and load the `granar_ex1.Rmd`

Open a `Run_MECHA.ipynb` with a MECHA kernel

This will lead to have two tabs open:
- The Rmd script will allow you to generate root cross-section
- The Jupyter Notebook will allow you to run MECHA

## Citation

Please cite the GRANAR and MECHA tools if you use this workflow in your research:

> Heymans A., Couvreur V., LaRue T., Paez-Garcia A., Lobet G. (2020). **GRANAR, a computational tool to better understand the functional importance of monocotyledon root anatomy**. *Plant Physiology*, 182(2), 707-720. doi: [10.1104/pp.19.00617](https://doi.org/10.1104/pp.19.00617)

> Couvreur V., Faget M., Lobet G., Javaux M., Chaumont F., Draye X. (2018). **Going with the Flow: Multiscale Insights into the Composite Nature of Water Transport in Roots**. *Plant Physiology*, 178(4), 1689–1703. doi: [10.1104/pp.18.01006](https://doi.org/10.1104/pp.18.01006)
