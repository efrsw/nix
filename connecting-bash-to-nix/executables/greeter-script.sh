#!/bin/sh

set -e
mkdir -p "$out/bin"
echo "#!/bin/sh" >> "$out/bin/hello"
echo "echo '$message'" >> "$out/bin/hello"

chmod +x "$out/bin/hello"
