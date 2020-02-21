#!/usr/bin/env bash
xelatex --no-shell-escape \
        --no-mktex \
        --output-directory=build \
        --interaction="nonstopmode" \
        source/Stolovka_ptt_beamer.tex

ls | grep -P "(.toc|.aux|.snm|.out|.nav|.log)" | xargs -d"\n" rm