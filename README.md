# My CV

These are links to the PDF [in English](https://github.com/mawkler/cv/releases/download/latest/english.pdf) and [in Swedish](https://github.com/mawkler/cv/releases/download/latest/swedish.pdf).

The PDFs are automatically built and deployed on each push using my GitHub actions pipeline [here](./.github/workflows/bulid-cv.yaml)

## Compile it yourself

Requires [Typst](https://github.com/typst/typst) to be installed, as well as the fonts [Fira Sans](https://github.com/mozilla/Fira) and [Fira Code](https://github.com/tonsky/FiraCode).

```sh
git clone https://github.com/mawkler/cv.git
# English version
typst compile english.typ
# Swedish version
typst compile swedish.typ
```

## Licence

[MIT](./LICENSE)
