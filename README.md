# Predicting TikTok Virality 🎵
### A Comparative Analysis of Audio Features in Trending vs. Popular Spotify Tracks

### Executive Summary
Leveraging machine learning techniques, this project investigates the specific acoustic features that drive song virality on TikTok. By analyzing a balanced dataset of trending TikTok songs from 2022 against a control group of top Spotify tracks, I built a classification pipeline to predict a track's viral potential. 

After training and tuning four distinct models via 5-fold cross-validation, the **Random Forest** classifier emerged as the top performer, achieving a Cross-Validation ROC AUC of **0.865** and an exceptional Test ROC AUC of **0.912** on unseen data. The analysis confirms that high "danceability" and specific energy profiles hold significant predictive power in identifying songs that resonate with the TikTok user base, even when compared against other non-viral hit songs.

### Models Evaluated
* **Baseline Logistic Regression**
* **Elastic Net Regression** (Tuned for Penalty & Mixture)
* **Pruned Decision Tree** (Tuned for Cost Complexity)
* **Random Forest** (Best Performing Model)

### Tools & Frameworks Used
* **R:** Core language for data manipulation and modeling.
* **Tidymodels:** Used for data splitting, recipe creation, cross-validation, and hyperparameter tuning.
* **Tidyverse & ggplot2:** Used for Exploratory Data Analysis (EDA) and visualizing density distributions and ROC curves.
* **Corrplot:** Used for multicollinearity analysis of audio features.

### Key Files in this Repository
* `PSTAT-131-Final-Project.Rmd`: The complete R Markdown file containing the code, analysis, and ML pipeline.
* `PSTAT-131-Final-Project.html`: The knitted, formatted report with interactive table of contents and visualizations.
* `codebook.txt`: The data dictionary defining the Spotify API acoustic features used (e.g., danceability, valence, acousticness).
* `tiktok2022.csv` & `spotify.csv`: The raw datasets utilized for training and testing.

### Key Visualizations
*In the final HTML report, you will find density plots comparing audio feature distributions, tuning grid visualizations for model hyperparameters, and the final Random Forest ROC Curve.*
