**Try This**

A few quick experiments will show you the range of things that **minuscript** is set up to create. Run these in the `doc/` directory to see what results.

- `minuscript` 
    - this uses all the defaults, and only looks in the current directory to 
      create the final pdf
- `minuscript --toc`
    - this uses all defaults and creates a table of contents at the beginning
      of the manuscript
- `minuscript --toc --synopsis`
    - this uses all defaults and creates a synopsis and then a table of contents
      at the beginning of the document. The synopsis is not included in the 
      table of contents
- `minuscript --endnotes`
    - Uses all defaults and creates a collected set of notes at the end of th
      manuscript that show all the notes included inline in the scenes. 
- `minuscript --foonotes`
    - Uses all defaults and creates footnotes at the bottom of each page 
      that show all the notes included inline in the scenes. 
- `minuscript --manuscriptfile alternate.json`
    - creates an alternate manuscript, using `alternate.json` as the manuscript
      definition. This will create a document called `alternate.pdf`
