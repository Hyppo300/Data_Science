import glassdoor as gs
import pandas as pd
path="C:/Users/Acer/chromedriver"

df=gs.get_jobs('data scientist',1000, False, path,17)
df.to_csv('glassdoor_jobs.csv', index=False)
