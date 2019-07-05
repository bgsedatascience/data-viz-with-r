import pandas as pd

my_var = "Hello from the other side"

Dict = {'x1': [1,2,3], 'x2': [4,5,6], 'x3': [7,8,9] }

df = pd.DataFrame(Dict)

x = 0

for i in range(1, 5, 1):
    x += i