The data in a manuscript can be transformed into many different output
**products** (manuscripts, outlines, etc), interactive products (UIs, pegboards,
etc.) and other final products. In the data/product separation design of this
system, it is the responsibility of the *transformation application* to create
the requested output product. 

A set of operations is expected on this data, to be able to create a manuscript
in typical fiction manuscript format. The example manuscript that is
expected is **this (LINK NEEDED)** example. Transformations include:

* A properly formatted title page, including author data, title and
  optional wordcount.
* A running title on each manuscript page.
* A half page space before the chapter title on a new chapter.
* If there are footnotes in the manuscript, they can be included as
  footnotes or endnotes, or ignored.
* Control of final font - either times or courier.
* Margins: 1 inch on all sides.
* Double spaced lines.

**Additional final draft transformations**

* **chapter summary**. If there is a chapter summary in the minuscript data,
  include it at the start of the chapter.
* **date**. Printing the current data/time or a provided date/time on the title 
  page. 
* **endnotes or footnotes**. Choose to include notes, either as 
  footnotes or endnotes.
* **output type**. Output in the designated type. Support for these is entirely
  up to the transforming application. Expected output types include **``pdf,
  rtf, html, docx``** among others.
* **quotes** Include one or more quotes at the beginning of the manuscript, in
  unnumbered pages.
* **synopsis** Include a synopsis of the manuscript at the beginning, in
  unnumbered pages.
* **underline**. Show **bold** or *italic* text as underlined.

**Working transformations**
