#!/usr/bin/env bash
cd source/
latexmk -f \
        -xelatex \
        -file-line-error \
        -interaction=nonstopmode \
        diploma.tex

ls | grep -P "(.xdv|.bbl|.blg|.fls|.fdb_latexmk|.toc|.aux|.snm|.out|.nav|.log)" | xargs -d"\n" rm