all: index.html

index.html: index.Rmd
	Rscript -e 'library(rmarkdown);render("index.Rmd","html_document")'
