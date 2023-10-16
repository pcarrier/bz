from std/cmdline import paramCount, paramStr, commandLineParams
from std/strutils import join
from uri import decodeUrl

echo decodeUrl(
    if paramCount() == 0:
        readAll(stdin)
    else:
        commandLineParams().join(" ")
)