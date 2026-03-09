# 🗼 Tokyo Airbnb Data Analysis: Uncovering the Best Neighborhoods

## 📌 Project Overview
This project explores Airbnb listings and reviews data in Tokyo, Japan. The goal is to identify the most popular neighborhoods for guests, analyze the relationship between pricing and popularity, and discover "hidden gem" locations that offer the best value. 

This is a complete end-to-end data analysis portfolio project showcasing an ETL (Extract, Transform, Load) process, SQL querying, and Data Visualization.

## 🛠️ Tech Stack & Tools
* **Data Cleaning:** Python (Pandas)
* **Database Management:** SQLite & DBeaver
* **Data Querying:** SQL (JOINs, Aggregations, String Manipulations, Type Casting)
* **Data Visualization:** Power BI

## 🔍 Business Questions Answered
1. Which neighborhoods receive the most guest reviews (highest popularity)?
2. How does the average price per night correlate with the number of visits?
3. Where are the premium neighborhoods vs. budget-friendly hotspots?

## 🚀 The Data Workflow (Methodology)

### 1. Data Cleaning & Loading (Python)
* Handled missing values and messy text data in the raw CSV files.
* Bypassed standard CSV export issues by using the `sqlite3` library and `to_sql()` method to push the cleaned DataFrame directly into an SQLite database.

### 2. Data Exploration & Analysis (SQL)
* Used `JOIN` to connect the `clean_listings` and `reviews` tables on `listing_id`.
* Applied data type conversions and string formatting: using `REPLACE()` to remove `$` and `,` from the price column, and `CAST()` to convert it to a FLOAT.
* Grouped the data by `neighbourhood_cleansed` and used `COUNT()` and `AVG()` to extract the total reviews and average price per neighborhood.

### 3. Data Visualization (Power BI)
* Created a **Combo Chart (Line and Clustered Column)** to visually compare Total Reviews (bars) against Average Price (line) side-by-side.
* Built an interactive **Bubble Map** using latitude/longitude and location data to geographically visualize the busiest areas in Tokyo.

## 💡 Key Insights & Findings
1. **The Ultimate Hotspot:** **Shinjuku Ku** is by far the most popular destination, boasting the highest number of reviews (77,990).
2. **Best Value Areas (Hidden Gems):** **Taito Ku** and **Sumida Ku** rank 2nd and 3rd in total visits but maintain significantly lower average prices compared to Shinjuku. These are highly sought-after, budget-friendly areas for tourists.
3. **The Premium Market:** **Minato Ku** displays a spike in average price with a relatively lower review count, indicating it caters to a luxury/premium demographic.

## 📊 Dashboard Preview


---<img width="1255" height="727" alt="Screenshot 2026-03-09 233243" src="https://github.com/user-attachments/assets/55411974-7d27-4e0a-8c68-7e216941898b" />


<img width="830" height="656" alt="Screenshot 2026-03-09 233107" src="https://github.com/user-attachments/assets/f6594a11-b3a4-443e-a12c-619e2460b968" />

*If you have any questions or feedback regarding this project, feel free to reach out!*
