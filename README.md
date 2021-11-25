# Improving Latent Representations of ConvNets for Visual Understanding

**French title: Amélioration des représentations latentes des ConvNets pour l'interprétation de données visuelles**

This repository is an archive of my PhD manuscript and the slides of the defense. Just below are the abstracts (french and english) and some technical advices on writing a manuscript.


### My advices on writing a PhD manuscript

- Properly configure and take a bit of time to learn the features of a nice LaTeX IDE. Personally, I used the "LaTeX Workshop" extension of VSCode, it was great, I recommend it.
- Don't loose yourself into complex LaTeX, you're writing a document, not programming. However, take a bit of time to properly use a few key packages. In my PhD it was:
    - `autoref` to refer to your figures, tables, chapters, equations with nice links. (`\autoref{eq:eqname}` writes `Equation (N)` with the link on the whole text).
    - `acronym` to reuse an accronym everywhere and provide a link to the full text in the accronyms table. Learn to use `\ac{}` vs `\acs{}` for the singular vs plural.
    - `biblatex` for bibliographical links. Learn to use the variants `\cite`, `\parencite`, etc. Cf [this doc](http://tug.ctan.org/info/biblatex-cheatsheet/biblatex-cheatsheet.pdf).
    - `booktabs` to make beautiful table. [Read the doc](https://ctan.org/pkg/booktabs?lang=en), it's not that long and comes with nice advices.
    - `rotating` to rotate the tables and figures (`\sidewaystable` and `\sidewaysfigure`) to have vertical tables and figures.
    - Making nice figures & tables captions with the custom command `\titlecaption{Short title}{Explaination}` to only have the short caption in the list of figures & tables.
- If you have not already, you can [read this guideline](http://www.pamitc.org/documents/mermin.pdf) on how to integrate math into text, it's the one provided by CVPR.
- Don't directly apply your habits of writing code to writing a document, think of what is really gonna help you write, read and rewrite. For example for a text document I'd rather have one big file in which I can scroll than many small files that I need to switch between. That's my preference, find yours, all I'm saying is, don't just do small files like you're writing Python, you're not.
- Cleanup your `.bib` file. I personally remove all the unnecessary fields that look ugly to keep the minimum useful info (authors, title, published in, year). I use predefined strings for conf/journals names so that it's the consistent.
- I draw my figures in PowerPoint, export a big PDF with 1 figure per page and have a script to split the pages and remove blank
- My LaTeX manuscript compiles with `pdflatex` and `biber`.


### Abstract (Enlish)

For a decade now, convolutional deep neural networks have demonstrated their ability to produce excellent results for computer vision. For this, these models transform the input image into a series of latent representations. In this thesis, we work on improving the "quality" of the latent representations of ConvNets for different tasks.

First, we work on regularizing those representations to increase their robustness toward intra-class variations and thus improve their performance for classification. To do so, we develop a loss based on information theory metrics to decrease the entropy conditionally to the class.

Then, we propose to structure the information in two complementary latent spaces, solving a conflict between the invariance of the representations and the reconstruction task. This structure allows to release the constraint posed by classical architecture, allowing to obtain better results in the context of semi-supervised learning.

Finally, we address the problem of disentangling, i.e. explicitly separating and representing independent factors of variation of the dataset. We pursue our work on structuring the latent spaces and use adversarial costs to ensure an effective separation of the information. This allows to improve the quality of the representations and allows semantic image editing.


### Abstract (French)

Depuis le début de la décennie, les réseaux de neurones convolutifs profonds pour le traitement d'images ont démontré leur capacité à produire d'excellent résultats. Pour cela, ces modèles transforment une image en une succession de représentations latentes. Dans cette thèse, nous travaillerons à l'amélioration de la qualité de ces représentations latentes.

Dans un premier temps, nous travaillons à la régularisation de ces représentations pour les rendre plus robustes aux variations intra-classe et améliorer les performances de classification via une pénalité basée sur des métriques liées à la théorie de l'information.

Dans un second temps, nous proposons de structurer l'information en deux sous-espaces latents complémentaires, résolvant un conflit entre l'invariance des représentations et la reconstruction. La structuration en deux espaces permet ainsi de relâcher la contrainte posée par les architectures classiques, permettant ainsi d'obtenir de meilleurs résultats en classification semi-supervisé.

Enfin, nous nous intéressons au disentangling, c'est-à-dire la séparation de facteurs sémantiques indépendants. Nous poursuivons nos travaux de structuration des espaces latent et utilisons des coûts adverses pour assurer une séparation efficace de l'information. Cela permet d'améliorer la qualité des représentations ainsi que l'édition sémantique d'images.
