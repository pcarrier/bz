from std/cmdline import paramCount, paramStr, commandLineParams
from std/strutils import join
from uri import encodeUrl

echo encodeUrl(
    if paramCount() == 0:
        readAll(stdin)
    else:
        commandLineParams().join(" ")
)