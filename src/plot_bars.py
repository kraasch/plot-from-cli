import sys
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv(sys.stdin, sep=' ')
df.columns = ['year', 'count']

ax = df.plot.bar(x='year', y='count', rot=80)
fig = ax.get_figure()
fig.savefig('temp.png')
