# Modeling (Octave and Matlab compatible)

Given a dataset this application evaluates the data and generates two linear models:

Model 1 - Evaluation applies the Least Square Method and generates the linear model.

Model 2 - Evaluation takes two data points x,f(x) and generates the linear model.

## Script

modeling.m

## Functions

linear_LSM.m - Least Square Method evaluation and modeling

linear_two_points.m - Two poins evaluation and modeling

plotting_data_models.m - Scatter plot the data and plot the models on the same figure

plotting_residuals.m - Plots the residuals (forecast errors)

read_prepare_data.m - Reads the data and prepares for evaluations

statistical_eval.m - Evaluates statistical metrics for both models (Mean Absolute Percentage Error, Root Mean Square Error and R-Squared)

## Main variables

data - Stores the dataset, first column hold the values for the independent variable, second column the values for the dependent variable.

yHat_modeln - Stores the predicted values evaluated from the model n.

betaHat_modeln - Stores the values for the angular coefficient and intercept for the linear function for the model n.

## Requirements

Dataset must be a csv UTF-8 formatted file, no headers.

Single dependent variable.

Independent variable on column one.

Dependent variable on column two.

This a 2D evaluation.

## References

Mathematical modeling

Stefan Heinz

Springer

Applied Regression Analysis: A Research Tool, Second Edition

John O. Rawlings
Sastry G. Pantula
David A. Dickey

Springer
