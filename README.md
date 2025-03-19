# Support NNNN 

**Title of the project from redmine issue**

Description from the redmine issue.

## Overview

```
project
|- code/               all code needed to go from input files to final results
|
|- config/             project specific config files that are used in pipelines
|
|- data/               raw and primary data, essentially all input files, never edit!
|                      (ignored with .gitignore)
|
|- doc/                documentation for and related to the study
|
|- envs/
|  |- environment.yml     software dependencies list, used to create a project environment
|  |- Dockerfile          recipe to create a project container
|
|- intermediate/       output files from different analysis steps, can be deleted
|                      (ignored with .gitignore)
|
|- logs/               logs from the different analysis steps
|                      (ignored with .gitignore)
|
|- reports/            Project report
|
|- results/            output from workflows and analyses
|  |- Stats/           project specific statistical analysis documents (usually *qmd/*html)
|                      (partially ignored with .gitignore)
|
|- scratch/            temporary files that can be safely deleted or lost
|                      (ignored with .gitignore)
|
|- .gitignore          sets which parts of the repository that should be git tracked
```
