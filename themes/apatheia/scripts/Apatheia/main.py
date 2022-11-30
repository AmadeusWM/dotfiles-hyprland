import json
import os
import random
from datetime import date

CURRDIR = os.path.dirname(os.path.realpath(__file__))
YELLOW = (194,217,76)
PINKISH = (248,131,121)


def loadQuotes():
    with open (f'{CURRDIR}/quotes.json') as f:
        # Reading from file
        data = json.load(f)
        return data

def to_coloured(col):
    return f"\x1b[38;2;{col[0]};{col[1]};{col[2]}m"

quotes = loadQuotes().get("quotes")

curr_date = date.today()

# always the same seed
random.seed(1)
# position in shuffled array
position = curr_date.day + curr_date.month * 31 + curr_date.year * 365
# shuffle the quotes
random.shuffle(quotes)

randomQuote = quotes[position % len(quotes)]

bold = "\033[1m"

# print(bold + to_coloured(YELLOW) + randomQuote.get("text") + \
#         to_coloured(PINKISH) + " - " + randomQuote.get("author"))

# parse quote (add enters)
arr = randomQuote.get("text").split(" ");
out_str = "";
char_count = 0;
for i in range(len(arr)):
    sub_str = arr[i] + " "
    char_count += len(sub_str)
    if char_count > 40:
        out_str += "\\n" + sub_str
        char_count = len(sub_str)
    else:
        out_str += sub_str
        

print(out_str)
print("~ " + randomQuote.get("author"))
