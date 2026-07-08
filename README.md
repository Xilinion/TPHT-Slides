# TPHT VLDB Slides

This directory contains a self-contained Beamer deck for a 15-minute VLDB talk on Tiny Pointer Hash Tables.

The deck was derived from `/home/xilin/TPHT-Paper`, whose paper structure is:

- `main.tex` includes the paper sections: abstract, introduction, background, tiny pointers, quotienting, Chained-TPHT, Flattened-TPHT, concurrent resizing, evaluation, related work, conclusion.
- `plots/` is a Git submodule at commit `29258c08f86d40d17a5b1be719294a4eb768995a`, pointing to `git@github.com:Xilinion/TPHT-Figure-Tex.git`.
- The slide deck copies only the needed figure PDFs into `assets/figures/`.

Build:

```sh
make
```

Output:

```sh
main.pdf
```
