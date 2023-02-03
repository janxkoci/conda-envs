# conda-envs
definition files for my conda environments

## base envs
> `conda` base env with two flavours - HPC and PC (aka remote and localhost, resp.)

Since these are `base` environments, they cannot be _created_ using these files, as `base` already exists and `conda` will throw an error. Instead, these files can be used for [updating](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#updating-an-environment) the `base` env (e.g. after fresh install):

```bash
conda-env update -f base-*pc.yml  # --prune will remove unused dependencies
```

## admixtools2 env
> install `admixtools2` in a new `conda` environment

### 1. Create a new conda environment (shell)
Create a new environment as described in the [conda docs](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#creating-an-environment-from-an-environment-yml-file), activate it, and start `R`:

```bash
# create environment
$ conda-env create -f admix.yml

# activate environment
$ conda activate admix

# start R
$ R
```

### 2. Install admixtools2 inside activated environment (R)
After launching `R` inside the new environment, install [admixtools2](https://github.com/uqrmaie1/admixtools) by running the following:

```R
> remotes::install_github("uqrmaie1/admixtools", dependencies = TRUE)
# or with devtools
# devtools::install_github("uqrmaie1/admixtools", dependencies = TRUE)
```

Finally, import `admixtools2`:

```R
> library(admixtools)
```

Have fun :wink: