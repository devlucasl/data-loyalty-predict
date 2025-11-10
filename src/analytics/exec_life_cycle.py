# %%
import pandas as pd
import sqlalchemy

# %%

def import_query(path):
    with open (path) as open_file:
        query = open_file.read()
    return query

query = import_query("life_cycle.sql")
print(query)

engine = sqlalchemy.create_engine("sqlite:///../../data/loyalty-system/database.db")


# %%

df = pd.read_sql(query, engine)
df_head()

