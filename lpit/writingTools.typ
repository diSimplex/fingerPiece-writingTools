
///////////////////////////////////////////////
// Imports

#import "@local/lpit-publisher-papers:0.2.0" : *

///////////////////////////////////////////////
// Front matter

#setupDoc(yaml("lpit.yaml"))

//\lpilTitle{fp-writing}{
//  Finger Pieces : Writing Tools
//}
//\author{Stephen Gaito}

#abstract([
  In this finger piece, we explore the variouse tools we use to write
  diSimplex/LPiL documents.
])

//\maketitle

///////////////////////////////////////////////
// Body

The diSimplex project as a whole is a very complex task, involving weaving
together the research of many individuals across a wide range of disciplines.

The aim of the diSimplex project is to understand how a finite
#emph[computational] agent can #emph[model] reality. In particular what is the
#emph[computational] basis for Mathematical Physics. Along the way we
#emph[hope] to provide a foundation for Quantum Relativity.

This means that various parts of the overall project are going to require that
we write, document, and prove corrent runable code. To describe this code as
well as a foundation for Mathematical Physics, we will need a range of diagrams.

To manage this complexity we use a number of tools, both
'standard-off-the-shelf' as well as a number of bespoke additions where needed.
This 'finger-piece' attempts to document what these tools are and how they are
used.

/ Editor : We use the VSCode/VSCodium editing environment
together with James Yu's excellent Latex-Workshop.

/ Typesetters : We use #emph[both] the LaTeX #emph[and] the
ConTeXt typesetting tools.

  - We use #strong[standard LaTeX] for the bulk of the writing for two
    reasons:

    + Unfortunately almost no journals currently accept written
    submissions which use ConTeXt,

    + The tools available for writing ConTeXt documents, certainly using
    VSCode, are not as well developed as those for writing using LaTeX.

  - We use #strong[ConTeXt's excellent MetaFun diagram package] (based
    upon MetaPost), for creating diagrams.

/ Integration (VSCode) : We use our own #raw("lpilMagicRunner") to help
the LaTeX-Workshop typeset the LaTeX writing, the ConTeXt/MetaFun diagrams as
well as pygmentize the various chunks of code.

/ Integration (whole project) : We use our own #raw("cfdoit") to manage
the 'compilation' of a whole document (including compiling and verifying the
code).

#include "vscode.typ"

#include "typesetters.typ"

#include "integration.typ"

/////////////////////////////////////////////////////////////////
// End matter
