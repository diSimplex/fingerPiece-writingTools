//% !TEX root = writingTools.tex
//% !LPiL preamble = ./wtPreamble.tex
//% !LPiL postamble = ./wtPostamble.tex

= Using VSCode/VSCodium <fp-wt-vscode>

To use VSCode (or VSCodium):

  - Install #link("https://code.visualstudio.com/")[VSCode] (or
    #link("https://vscodium.com/")[VSCodium])
    
  - Install the
    #link("https://open-vsx.org/extension/James-Yu/latex-workshop")[VSCode
    LaTeX-Workshop extension]
    
  - Using #link("https://code.visualstudio.com/docs/getstarted/settings")[the
    VSCode settings interface]
    
    - Set `latex-workshop.latex.outdir` to `build/latex`
    
    - Set `latex-workshop.latex.tools` to 

```json
  [
    {
      "args": [
        "%DOC%",
        "%OUTDIR%"
      ],
      "command": "lpilMagicRunner",
      "env": {},
      "name": "lpilMagicRunner"
    }
  ]
```

    - Set `latex-workshop.latex.recipes` to
```json
  [
    {
      "name": "lpilMagicRunner",
      "tools": [
        "lpilMagicRunner"
      ]
    }
  ]
```

