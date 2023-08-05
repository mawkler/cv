# My CV

Below you can download my CV as a PDF in either English or Swedish:

<table cellspacing="0" cellpadding="0">
    <tr>
        <th>
            <a href="https://github.com/mawkler/cv/releases/download/latest/english.pdf">
                English Version
            </a>
        </th>
        <th>
            <a href="https://github.com/mawkler/cv/releases/download/latest/swedish.pdf">
                Swedish Version
            </a>
        </th>
    </tr>
    <tr>
        <td>
            <a href="https://github.com/mawkler/cv/releases/download/latest/english.pdf">
                <img src="https://github.com/mawkler/cv/releases/download/latest/english-thumbnail.png" alt="English CV">
            </a>
        </td>
        <td>
            <a href="https://github.com/mawkler/cv/releases/download/latest/swedish.pdf">
                <img src="https://github.com/mawkler/cv/releases/download/latest/swedish-thumbnail.png" alt="Swedish CV">
            </a>
        </td>
    </tr>
</table>

The PDFs are automatically built and deployed on each push using my GitHub Actions pipeline [here](./.github/workflows/build-cv.yaml).

## Compile it yourself

Requires [Typst](https://github.com/typst/typst) to be installed, as well as the fonts [Fira Sans](https://github.com/mozilla/Fira), [Fira Code](https://github.com/tonsky/FiraCode) and [Font Awesome](https://github.com/FortAwesome/Font-Awesome).

```sh
git clone https://github.com/mawkler/cv.git
# English version
typst compile english.typ
# Swedish version
typst compile swedish.typ
```

## Licence

[MIT](./LICENSE)
