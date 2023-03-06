#! /usr/bin/env make

FINALPROJECT.html: outcome.md ViEWSMapGridCell.png
	pandoc outcome.md -s --webtex -t html -o FINALPROJECT.html

outcome.md: preamble.txt litReview.txt approach.txt results.txt conclusion.txt
	cat preamble.txt > outcome.md
	echo "" >> outcome.md
	cat litReview.txt >> outcome.md
	echo "" >> outcome.md
	cat approach.txt >> outcome.md
	echo "" >> outcome.md
	cat results.txt >> outcome.md
	echo "" >> outcome.md
	cat conclusion.txt >> outcome.md
	touch outcome.md

.PHONY: clean

clean:
	rm -f outcome.md FINALPROJECT.html 
	


