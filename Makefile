PROJECT := $(shell pwd)
TYPE := ace

YAML/%.yaml : Data/%.rvdata2
	rvpacker -d $(PROJECT) -t $(TYPE) -a unpack -D $*

Data/%.rvdata2: YAML/%.yaml
	rvpacker -d $(PROJECT) -t $(TYPE) -a pack -D $*

datafiles := $(patsubst %.yaml,%.rvdata2,$(wildcard YAML/*.yaml))
yamlfiles := $(patsubst %.rvdata2,%.yaml,$(wildcard Data/*.rvdata2))

unpack: $(yamlfiles)

pack: $(datafiles)

all:
