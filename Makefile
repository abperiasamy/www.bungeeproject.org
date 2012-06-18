# PHP as HTML pre-processor.
HPP = php
HPPFLAGS = 

HPP_INCLUDES = include/head.html include/navbar.html include/github-fork-me.html include/google-analytics.html 
HPP_SOURCES = index.html

%.html: %.php $(HPP_INCLUDES)
	$(HPP) $(HPPFLAGS) $<  > $@

all: $(HPP_SOURCES)

clean:
	-find . -name "*~" -exec rm -f {} \;
	-find . -name ".#*" -exec rm -f {} \;
	-rm -f $(HPP_SOURCES) *~

