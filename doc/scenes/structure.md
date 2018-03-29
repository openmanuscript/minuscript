The structure of this workflow is based on three things:

- The **minuscript data specification**, a text-based specification for the
  files needed to define a manuscript of a common format for fiction. This
  allows editing of simple scene files, and flexible composition of those scenes
  into chapters and manuscripts.

- An editor capable of creating the files and directories of the **minuscript
  data specification**. This can be as simple as **vim**, or as complex as
  a specialized application for WYSIWYG editing of the data (which currently
  does not exist).

- **Transformation tools** capable of transforming **minuscript data** into 
  manuscripts as defined by **THIS SPECIFICATION**. The transformation tools
  are responsible for transforming the raw data into such formats as `pdf`,
  `Word` and other common formats. Since both of these types of documents 
  typically are the means of communication in the agent/writer and 
  editor/writer workflow, once the transformation has been made
  to these formats, it is out of the domain of the minuscript workflow.
  `minuscript` is a command line tool that transforms the **minuscript data**
  into both `pdf` and `rtf` format. An `rtf` document can be opened in Microsoft
  Word, thus completing the transformation into Word.

These three pieces work together to allow simple text editing, flexible
organization of scenes and chapters into manuscripts, and reliable conversion of
the raw text files into professionally formatted manuscripts. 
