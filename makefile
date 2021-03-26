#!/usr/bin/env bash

README.md: guessinggame.sh

	echo "# The Unix Workbench Final Project: Guessing Game" > README.md

	date >> README.md

	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

