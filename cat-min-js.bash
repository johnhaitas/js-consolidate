#!/bin/bash

if [ ! -e jsmin ]; then
	make
fi

# concatenate files passed by arguments
cat ${*} > concatenated-scripts.js

# minimize concatenated scripts
./jsmin < concatenated-scripts.js > consolidated.js

rm concatenated-scripts.js
