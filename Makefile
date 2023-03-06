#! /usr/bin/env make

all: FINALPROJECT.html FINALPROJECT.pdf

FINALPROJECT.html: outcome.md ViEWSMapGridCell.png
	pandoc outcome.md -s --mathjax -f markdown+tex_math_dollars -t html -o FINALPROJECT.html

FINALPROJECT.pdf: outcome.md ViEWSMapGridCell.png
	pandoc outcome.md -s --mathjax -f markdown+tex_math_dollars -t pdf -o FINALPROJECT.pdf

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
	rm -f outcome.md FINALPROJECT.html FINALPROJECT.pdf 
	


