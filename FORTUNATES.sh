#!/bin/sh

# Cat all the fortunes, extract in one line, sort them, find uniq fortunes
# and resort to find all the duplicated fortunes
find datfiles -name "*fortunes" -exec cat {} \; |
perl extractall.pl |sort | uniq > FORTUNES.txt
