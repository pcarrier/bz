from std/cmdline import paramCount, paramStr, commandLineParams
from std/strutils import join
from std/os import quoteShell

echo quoteShell(
    if paramCount() == 0:
        readAll(stdin)
    else:
        commandLineParams().join(" ")
)