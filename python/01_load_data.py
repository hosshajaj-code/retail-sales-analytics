import pandas as pd

import pandas as pd
from sqlalchemy import create_engine

df = pd.read_csv(r'C:\Users\Hossam Hagag\Desktop\retail_sales_analytics\data\processed\superstore_cleaned.csv')

engine = create_engine('postgresql://postgres:7512@localhost:5432/retail_db')

df.to_sql('orders', engine, if_exists='replace', index=False)

print("xxxxxxxxxxxxxxxxxxxxxxxxx")
