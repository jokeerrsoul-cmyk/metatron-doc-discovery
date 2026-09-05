# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = metatron-doc-user
SOURCEDIR     = .
BUILDDIR      = docs

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

all:
	@$(SPHINXBUILD) -b html . $(BUILDDIR)
	@$(SPHINXBUILD) -b html -D language=en . $(BUILDDIR)/en
	@$(SPHINXBUILD) -b html -D language=pl . $(BUILDDIR)/pl

html:
	@$(SPHINXBUILD) -b html . $(BUILDDIR)

en:
	@$(SPHINXBUILD) -b html -D language=en . $(BUILDDIR)/en

pl:
	@$(SPHINXBUILD) -b html -D language=pl . $(BUILDDIR)/pl

.PHONY: help Makefile en pl

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
