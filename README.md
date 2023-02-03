# conda-envs
definition files for my conda environments

## base
> conda base env with two flavours - HPC and PC (aka remote and localhost, resp.)

Since these are `base` environments, they cannot be _created_ using these files, as `base` already exists and `conda` will throw an error. Instead, these files can be used for [updating](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#updating-an-environment) the `base` env (e.g. after fresh install):

```bash
conda-env update -f base-*pc.yml  # --prune will remove unused dependencies
```
