#!/bin/sh

curdir=`basename $PWD`
pdffiles="plots/kalah-alpha plots/bt-base-alpha plots/bt-basenp-alpha plots/bt-alt-alpha plots/loa-alpha images/kalah2 images/break01 images/LOA"

if [ "$curdir" != "arxiv" ]
then
  echo "Please run from arxiv dir."
  exit
fi

# first copy files

echo "Copying files..."
for f in $pdffiles 
do
  cp -v ../${f}.pdf .
done

cp -v ../arxiv.tex .
cp -v ../im-mcts.bib .
cp -v ../Makefile .

echo "Done. Now run make viewtr to create the .bbl file (needed for upload.)"

