#!/bin/sh
# Regenerate the clean bib (what Overleaf reads) from the BibDesk working file.
# Requires bibtool:  brew install bib-tool
set -e
cd "$(dirname "$0")"
bibtool -i powers-bibdesk.bib -o powers.bib -r bibdesk2clean.bibtoolrsc
echo "powers.bib updated ($(grep -c '^@' powers.bib) entries)"
