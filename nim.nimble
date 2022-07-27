# Package

version       = "0.1.0"
author        = "hirotoyoshidome"
description   = "exp nim"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 1.6.6"
requires "nimpy >= 0.2.0"

# Build settings.
srcDir = "src"
binDir = "bin"
bin = @["nim"]
