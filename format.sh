#!/usr/bin/env bash
set -euo pipefail

if [ ! -x "$(command -v astyle_py)" ]; then
	echo "astyle_py not found, please install it:"
	echo "  pip install astyle_py==1.0.5"
	exit 1
fi

astyle_py --astyle-version=3.4.7 --rules=.astyle-rules.yml \
	src/*.c include/*.h examples/*/main/*.c
