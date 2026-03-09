import csv
import sqlite3
import pandas as pd
df= pd.read_csv("listings.csv")
pd.DataFrame(df)
print(df.head())
print(df.info())
df["neighborhood_overview"] = df["neighborhood_overview"].fillna("unknown")
df["host_location"] = df["host_location"].fillna("unknown")
df["host_about"] = df["host_about"].fillna("unknown")
df["host_neighbourhood"] = df["host_neighbourhood"].fillna("unknown")

df["neighbourhood"] = df["neighbourhood"].fillna("unknown")

df.dropna(axis= 1, how="all", inplace=True) 

df["reviews_per_month"] = df["reviews_per_month"].fillna("unknown")

df["bedrooms"] = df["bedrooms"].fillna("unknown")
print(df.info())

db_path = r"C:\Users\user\Desktop\SQL projects\portfolio_project.sqlite" 

conn = sqlite3.connect(db_path)

df.to_sql('clean_listings', conn, if_exists='replace', index=False)

print("File Saved Successfully!")




