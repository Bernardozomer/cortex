mkdir -p out
docker run -v ./out:/tex/out -it tex pdflatex -output-directory=out/ src/*.tex