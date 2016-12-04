all:
	rm -rf build
	mkdir build
	cd src
	find . -maxdepth 1 -name "*.tex" -exec pdflatex --output-directory ../build {} \;
	cd ..
	rm -f build/*.log build/*.aux
