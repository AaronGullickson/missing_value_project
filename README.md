# Missing Values Project

This repository contains data from the 2020 [Coperative Election Study](https://cces.gov.harvard.edu/). We will be looking at how the relationship between party affiliation and political ideology (conservative-liberal) is different by race, gender, and education. To do this, we will run the following set of four models.

1.  A baseline model which predicts the conservative ideology (on a scale of 1 to 5) of respondents based on party affiliation, race, gender, education, education, income, and religiosity.
2.  Add an interaction term to (1) between party affiliation and race.
3.  Add an interaction term to (1) between party affiliation and gender.
4.  Add an interaction term to (1) between party affiliation and education.

Models 2-4 will tell you whether the relationship between party affiliation is weaker or stronger for certain racial, gender, or education groups, respectively.

## Dealing with missing values

To run these models we need to deal with missing values on some of the variables. This is a two-part process. First, you will need to identify and properly code missing values in the `organize_data.R` script. Then you will need to explore how the results vary depending on the method you use to address them in `analysis.Rmd`.

### Organizing the data

Some missing values are already coded in the raw CES file. However, other missing values are coded with a numeric value. For each of the variables used in the `organize_data.R` script, you need to use the codebook provided in the input directory to identify any numeric codes corresponding to missing values and properly encode them (I suggest an `ifelse` command).

As part of this process, you will also need to turn several of the variables into categorical variables as they will by default all be represented as numeric integers. Technically, family income (`faminc_new`) is recorded in brackets, but we will just leave it as a numeric value for simplicity. We will also leave `ideo5` as a numeric value since that is our dependent variable.

Once you have completed this process, you can save the final dataset to the output directory, using the provided code.

### Running the models

The `analysis.Rmd` file contains some starter code and instructions for the analysis. I want you to try out both case deletion techniques and multiple imputation and compare the results across different approaches to see how they compare. Report the model results using the `knitreg` command, and describe the results in the text.

When you are satisfied with your report, you should knit it to PDF and submit the PDF on Canvas.
