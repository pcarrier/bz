import argparse
from std/cmdline import commandLineParams
from std/nativesockets import getAddrInfo, getAddrString, getHostByAddr, freeAddrInfo, Port, AF_UNSPEC


let p = newParser:
    help("{prog} resolves names")
    flag("-r", "--reverse", help="Display reverse lookup")
    arg("host")

let opts = p.parse(commandLineParams())

var info = getAddrInfo(opts.host, 0.Port, AF_UNSPEC)

while info != nil:
    let address = getAddrString(info.ai_addr)
    if opts.reverse:
        echo getHostByAddr(address).name
    else:
        echo address
    info = info.ai_next

freeAddrInfo(info)
