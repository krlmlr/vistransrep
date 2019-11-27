all: scaffold

scaffold:
	R -q -f scaffold.R

purl:
	R -q -f purl.R

id:
	R -q -f id.R

pdf:
	Rscript -e 'bookdown::render_book("bookdown::pdf_book", envir = new.env())'

push:
	git subtree push --prefix proj ../vistransrep-proj website

pull:
	git subtree pull --prefix proj ../vistransrep-proj website

test:
	ls proj/script/* | grep -v /0 | parallel --halt now,fail=1 R --vanilla -q -f && rm Rplots.pdf
