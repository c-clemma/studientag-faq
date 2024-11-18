default:
	mkdir out; pdflatex -output-directory=out -interaction=nonstopmode faq_flyer.tex; mv out/faq_flyer.pdf faq_flyer.pdf

clean:
	rm -rf out/ 

help:
	@echo 'Build the Studientag FAQ flyers'
	@echo ''
	@echo ' make'
	@echo '   build the flyer'
	@echo ' make clean'
	@echo '   remove buildfiles in out/'
	@echo ' make help'
	@echo '   show this message'
	@echo ' make soloPDFs'
	@echo '   generates individual pdfs for all Flyers to use on the website'

soloPDFs:
	mkdir individualFlyers/PDF; mkdir individualFlyers/out; pdflatex -output-directory=individualFlyers/out -interaction=nonstopmode individualFlyers/info_flyer.tex; mv individualFlyers/out/info_flyer.pdf individualFlyers/PDF/info_flyer.pdf; 
	 pdflatex -output-directory=individualFlyers/out -interaction=nonstopmode individualFlyers/bioinfo_flyer.tex; mv individualFlyers/out/bioinfo_flyer.pdf individualFlyers/PDF/bioinfo_flyer.pdf;
	 pdflatex -output-directory=individualFlyers/out -interaction=nonstopmode individualFlyers/medieninfo_flyer.tex; mv individualFlyers/out/medieninfo_flyer.pdf individualFlyers/PDF/medieninfo_flyer.pdf;
	 pdflatex -output-directory=individualFlyers/out -interaction=nonstopmode individualFlyers/medizininfo_flyer.tex; mv individualFlyers/out/medizininfo_flyer.pdf individualFlyers/PDF/medizininfo_flyer.pdf;
	 pdflatex -output-directory=individualFlyers/out -interaction=nonstopmode individualFlyers/lehramt_flyer.tex; mv individualFlyers/out/lehramt_flyer.pdf individualFlyers/PDF/lehramt_flyer.pdf;
	pdflatex -output-directory=individualFlyers/out -interaction=nonstopmode individualFlyers/kogni_flyer.tex; mv individualFlyers/out/kogni_flyer.pdf individualFlyers/PDF/kogni_flyer.pdf;
	 