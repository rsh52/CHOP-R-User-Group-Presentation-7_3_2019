# CHOP R User Group Presentation 7_3_2019

## R Markdown: Efficient Reporting Workflows

This presentation was delivered to the CHOP R User Group community on 7/3/2019. It comes with a PowerPoint presentation to accompany a ready-to-distribute example RProj learning activity. 

You can watch and listen to the full audio/video recording [here](https://drive.google.com/file/d/1ZTRIR5qBgnA4Phjf6gvVUbyl61_ISgtV/view?usp=sharing)!

This R project makes use of the UCI heart disease dataset available on Kaggle.com. No identifiable patient information exists and there are no concerns for distribution (just give some polite credit where it's due ;) ).

The repository consists of a few main components:

- **Presentation**: The slide deck used for the presentation and a helpful guide to follow along with the project.
- **reference.docx**: The reference word document to supply stylistic formatting to the RMarkdown output.
- **CHOP_R_User_Group_Example.docx**: The example RMarkdown output from successfully running the as-is R project.
- **CHOP R User Group.Rproj**: The Rproject wrapper file.
- **CHOP R User Group.rmd**: The R Markdown file responsible for knitting this project.

There are also a couple of folders containing images for the markdown, separate analytical R-scripts, and the data set file. 

The data analyzed for this presentation is named *heart.csv* and comes from the UCI Machine Learning Repository thanks to a Kaggle competition which is publicly available [here](https://www.kaggle.com/ronitf/heart-disease-uci).

### Bonus Section

At the end of this project is a light tutorial on applying predictive modeling via logistic regression to the heart dataset with the goal of predicting whether or not a patient with the 13 attributes described in this set will or will not have heart disease. The model was developed thanks to a framework on applying the same methods to determing [passenger survival aboard the Titanic](https://www.r-bloggers.com/how-to-perform-a-logistic-regression-in-r/).
