# Package

version       = "0.1.0"
author        = "Pierre Carrier"
description   = "Nim port of baze utilities"
license       = "0BSD"
srcDir        = "src"
bin           = @[
    "shellescape",
]


# Dependencies

requires "nim >= 2.0.0"
requires "argparse >= 4.0.1"