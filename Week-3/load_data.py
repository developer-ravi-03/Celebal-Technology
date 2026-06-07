import pandas as pd
from sqlalchemy import create_engine

df = pd.read_csv(
    "Week-3/dataset/Sample - Superstore.csv",
    encoding="latin1"
)

print(df.head())

engine = create_engine(
    "mysql+pymysql://root:MY_PASSWORD@localhost/week3_sales_analysis"
)

df.to_sql(
    "superstore_raw",
    con=engine,
    if_exists="replace",
    index=False
)

print("Data imported successfully!")