from std/cmdline import paramCount, paramStr
from std/streams import newFileStream
from yaml/tojson import loadToJson
from std/json import pretty, `$`

let input = newFileStream(
   if paramCount() == 0:
        stdin
    else:
        open(paramStr(1))
)

for v in loadToJson(input):
    echo $v
