SRC  := $(wildcard mpfd-*.adoc)
XML  := $(patsubst %.adoc,%.xml,$(SRC))
PDF  := $(patsubst %.adoc,%.pdf,$(SRC))
HTML := $(patsubst %.adoc,%.html,$(SRC))

SHELL := /bin/bash

all: $(HTML) $(XML) $(PDF)

clean:
	rm -f $(HTML) $(XML) $(PDF) Gemfile Gemfile.lock

bundle:	Gemfile Gemfile.lock
	bundle

Gemfile Gemfile.lock:
	ln -s ../common/$@ .

%.xml %.html %.pdf: %.adoc bundle
	bundle exec metanorma -r metanorma-mpfd -t mpfd -x xml,html,pdf $<

html: $(HTML)

open:
	open $(HTML)

.PHONY: bundle all open
