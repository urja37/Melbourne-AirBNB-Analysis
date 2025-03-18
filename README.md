# Melbourne-AirBNB-Analysis

# Airbnb Data Analysis

## Project Overview
This project analyzes an Airbnb dataset to uncover trends related to pricing, room types, host listings, and review patterns. The analysis includes data cleaning, visualization, and correlation studies to determine key factors influencing Airbnb prices and availability.

## Dataset Used
- **train.csv** (Kaggle dataset)
- Includes features such as price, number of reviews, last review date, availability, and location details.

## Objectives
1. **Clean and preprocess data** (handling missing values, renaming columns for clarity)
2. **Explore price distribution** (histograms, statistical summaries)
3. **Analyze room types and top expensive neighborhoods**
4. **Investigate relationships between price, reviews, and host listings**
5. **Visualize correlations using `corrplot`**
6. **Understand availability trends**

## Technologies Used
- R
- Libraries: `ggplot2`, `dplyr`, `tidyr`, `lattice`, `corrplot`

## Key Findings
- **Price Distribution:** Most listings are priced under $500 per night.
- **Room Type Analysis:** Entire homes/apartments dominate the listings.
- **Top 10 Expensive Neighborhoods:** Identified high-cost areas.
- **Reviews & Price:** Weak correlation between price and review count.
- **Host Listings & Price:** No strong trend between total listings by a host and price.
- **Availability & Price:** No clear relationship between availability (days listed) and pricing.

## Installation & Usage
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/airbnb-analysis.git
   ```
2. Open RStudio and install dependencies:
   ```r
   install.packages(c("ggplot2", "dplyr", "tidyr", "lattice", "corrplot"))
   ```
3. Load the dataset and run `airbnb_analysis.R` script.

## Visualizations
- Price distribution histogram
- Room type distribution
- Correlation matrix (Price, Reviews, Min Nights)
- Scatter plot of Host Listings vs. Price
- Scatter plot of Availability vs. Price

## Future Scope
- Implement machine learning models for price prediction.
- Expand analysis to include sentiment analysis on reviews.
- Compare Airbnb pricing trends across multiple cities.

## Author
Urja Singh  
https://github.com/urja37
