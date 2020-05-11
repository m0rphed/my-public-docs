#!/usr/bin/env bash

latexmk -f \
        -xelatex \
        -file-line-error \
        -interaction=nonstopmode \
        matmex_mywork.tex

ls | grep -P "(.xdv|.bbl|.blg|.fls|.fdb_latexmk|.toc|.aux|.snm|.out|.nav|.log)" | xargs -d"\n" rm
