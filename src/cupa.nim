from std/cmdline import commandLineParams
from std/strformat import fmt

for arg in commandLineParams():
    echo fmt"--- 8< --- 8< --- {arg} --- 8< --- 8< ---"
    stdout.write(readFile(arg))
echo "--- >8 --- >8 --- >8 --- >8 --- >8 ---"