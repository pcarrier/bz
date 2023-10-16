from std/cmdline import paramCount, paramStr
from std/tables import initCountTable, inc, sort, pairs
from std/strformat import fmt

let input =
   if paramCount() == 0:
        stdin
    else:
        open(paramStr(1))

var counts = initCountTable[string]()
var l: string
while input.readLine(l):
    counts.inc(l)

counts.sort()

for value, count in pairs(counts):
    echo fmt"{count:>7} ${value}"
