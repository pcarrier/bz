from std/cmdline import paramCount, paramStr
from std/strutils import parseFloat

let input =
   if paramCount() == 0:
        stdin
    else:
        open(paramStr(1))

var everything = newSeq[float]()
var sum = float(0)

var l: string
while input.readLine(l):
  let n = l.parseFloat()
  everything.add(n)
  sum += n

let size = everything.len()

echo "size:  ", size
echo "sum:   ", sum
echo "avg:   ", sum / float(size), "\n"

echo "min:   ", everything[0]
for percentile in @[10, 20, 25, 30, 40, 50, 60, 70, 75, 80, 90, 99]:
   echo "p", percentile, ":   ", everything[size * percentile div 100]

echo "p999:  ", everything[size * 999 mod 1000]
echo "p9999: ", everything[size * 9999 mod 10000]
echo "max:   ", everything[size - 1]
