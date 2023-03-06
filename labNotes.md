# These are the labnotes for the assignment7

## What I did in assignment6:

In assignment 6, I combined the several parts of the report into a new html document.

The input parts of the report are:

1. preamble.txt

2. litReview.txt

3. approach.txt

4. results.txt

5. conclusion.txt

6. ViEWSMapGridCell.png

"Makefile" is the make file to combine these input parts together into a markdownfile "outcome.md" and then convert this markdownfile to the final html file "FINALPROJECT.html".

The final output is "FINALPROJECT.html"

## How I push the local respository to the remote repository:

The first step is to link the local repository with the remote url:

git remote set-url origin https://github.com/zhejunq/ComputationAssignment67.git

The next step is to push the local repository to the remote repository, and the files are stored in a new branch "master":

git push -u origin master

## How to clone the remote repo:

- To get the files in the branch "master", we can use this code:

   git clone -b master https://github.com/zhejunq/ComputationAssignment67.git

- To get the combined html file, use this command:
   
   make

- To clean the generated file, use this command:

   make clean

 
