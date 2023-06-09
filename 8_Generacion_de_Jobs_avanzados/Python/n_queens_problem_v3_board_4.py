# From: http://wiki.python.org/moin/SimplePrograms, with permission from the author, Steve Howell
# Download the original file from https://raw.githubusercontent.com/acmeism/RosettaCodeData/master/Task/N-queens-problem/Python/n-queens-problem-3.py

#import time
#time.sleep(30)

BOARD_SIZE = 4

def under_attack(col, queens):
    return col in queens or \
           any(abs(col - x) == len(queens)-i for i,x in enumerate(queens))

def solve(n):
    solutions = [[]]
    for row in range(n):
        solutions = [solution+[i+1]
                       for solution in solutions
                       for i in range(BOARD_SIZE)
                       if not under_attack(i+1, solution)]
    return solutions

for answer in solve(BOARD_SIZE): print(list(enumerate(answer, start=1)))
