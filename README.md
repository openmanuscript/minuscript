![alt tag](https://github.com/moonimal/minuscript/blob/master/doc/img/minuscript.png)

Thanks for your interest in `minuscript`, software to support a minimal manuscript workflow for writing fiction.

To me, the most important thing is getting ideas from raw writing to finished manuscript with the least intellectual burden possible. This software supports a versioned, text-only system that's easy to use, add new content to, and re-organize - all in the service of creating stories. This is the simplest, most robust, least tool-specific workflow I could come up with. 

The workflow supported by `minuscript` basically consists of:

- Creating and editing individual files for each scene.
- Editing a file that describes a set of chapters, which are collections of scenes.

Everything you need is in the git repository. Instructions assume you can use 
basic coding tools. For example, you should be able to edit a 
`makefile`. If you don't know what a `makefile` is, you might want to bail right now. Familiarity with `json` files is also helpful.

To get started:

- Install the dependent software:
    - `multimarkdown`
    - `latex`
    - a simple editor like `vim` or `emacs` is all you need, but this workflow
      meshes well with tools like `iAwriter` or other markdown-enabled editors
- Clone this repository
- Then, in the minuscript repository directory:
    - Edit the makefile to install `minuscript` in a directory of your choice
    - `make install`
    - `cd doc `
    - `minuscript`
    - you will now have a document called `documentation.pdf` which is the 
      documentation for `minuscript`. That document and the files in the 
      directory have all the information you need to create your own 
      manuscripts. I hope. If not, please contact me and I'll revise the docs 
      or explain what's missing.
- More examples:
    - because `minuscript` is built on `multimarkdown`, there are a lot of
      capabilities available, such as formatting block quotes, end notes 
      and footnotes, etc. The following commands give a few important examples.
    - `minuscript --manuscriptfile examples.json` 
        - This command will create a file called `examples.pdf` that includes 
          examples of how to do things like create block quotes, bold and 
          italic text, and other capabilities.
    - `minuscript --manuscriptfile examples.json --endnotes` 
        - This command will create a file called `examples.pdf` that includes 
          internal notes as endnotes - a section at the end of the document.
    - `minuscript --manuscriptfile examples.json --footnotes` 
        - This command creates a file calls `examples.pdf` that includes 
          internal notes as footnotes, found at the bottom of the pages as 
          appropriate.
- Tools (for convenience)
    - `medit <scene name, no extension>` runs vi on a scene file
    - `moutline` (prints to sdtout an outline of the manuscript)

Good luck, and please contact me for help and with suggestions.

    minuscript@dhrogers.com

Keep it simple.
