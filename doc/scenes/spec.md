This is a specification for manuscript v1.0, a database for a text-based workflow for creating manuscripts. There are a set of required and optional directories and files. This specification allows other files and directories to be present under the main manuscript directory, but they are not part of this  specification. 

At the most basic level, a manuscript is a pairing of an author and a sequence
of chapters. Meta data tags througout the specification capture additional data
that can be included to enrich a properly formatted manuscript.

- `manuscript/` directory (required). This is the top level of the data. This
  specification imposes no restrictions on naming this directory.

- `author file` (required). A properly formatted `JSON` file describing the 
  author of this manuscript. The specification is below. Name is not specified
  by this document. 

- `manuscript file` (required). A properly formatted `JSON` file that 
  describes the names and order of the chapters, and which scenes go into 
  them. The specification is below. Name of this file is not specified by this
  document.

- `scans/` (optional). This is a directory for scanned pages that can be 
  incorporated into the manuscript. The assumption is that a single scan is
  a scan of a full page of notes, a typewritten page, or other non-digital
  writing. Scans can be one of the supported image types: [.pdf, .jpg, .png].

- `scenes/` (required). This is a directory containing scene files. There may be
  unused scenes (scenes not noted in a `manuscript` file).
  
```
    EXAMPLE

    adventure/
        author.json
        manuscript.json
        scans/
            001.pdf
            002.png
            ...
        scenes/
            001.md
            002.md
            003.md
            start.md
            this_scene.md

```

**AUTHOR.JSON File**
The content of the value for each key is not examined for correctness - each is simply treated as a string. Each must follow proper `JSON` formats for strings.

- `version` the version of this specification the file follows. Valid
  values are [1.0].
- All other values have no restrictions.

```
    SPECIFICATION of author.json file

    {
    "version" : "1.0",
    "author" : {
        "name"      : String, 
        "surname"   : String,
        "email"     : String,
        "phone"     : String,
        "website"   : String,
        "address"   : String,
        "city"      : String,
        "state"     : String,
        "zip"       : String
    }
    }


    EXAMPLE of author file

    {
    "version" : "1.0",
    "author" : {
        "name"      : "Ima Q. Writer",
        "surname"   : "Writer",
        "email"     : "imaqwriter@imawriter.com",
        "phone"     : "(000) 000-0000",
        "website"   : "www.imawriter.com",
        "address"   : "111 Writer's Way",
        "city"      : "Writerville",
        "state"     : "NM",
        "zip"       : "88888"
    }
    }
```

**MANUSCRIPT file**
The manuscript file contains the information needed to construct a manuscript,
which is defined as a series of chapters made up of scenes. The basic file unit
in this specification is the *scene*. A manuscript file is therefore a series of
chapters, made up of scene files, with a small amount of additional information.

- `version` the version of this specification the file follows. Valid
   values are `[1.0]`.
- `title` The full title of the manuscript.
- `runningtitle` A one word title, included in each page's header, per 
   common manuscript formatting. 
- `chapters` A list of chapters. a `chapter` is defined below. A chapter 
   is an array of scenes, with metadata. The following `(key,value)` pairs 
   are defined by this specification. Other `(key,value)` pairs
   may be present, but are not part of this specification. 
- Other valid `JSON` data may be present, but is not part of this    
   specification.

```
    SPECIFICATION of manuscript.json file
    {
    "version" : String, 
    "manuscript" : {
        "title" : String, 
        "runningtitle" : String, 
        "chapters" : Array.of(Chapter),
        ]
    }
    }

    EXAMPLE
    {
    "version" : "1.0",
    "manuscript" : {
        "title" : "Finding the Story: A Novel",
        "runningtitle" : "finding",
        "chapters" : [
            {
                "title"  : "A Time for Starting",
                "scenes" : ["001", "002", "003", "004", "005"],
                "desc"   : "Our first encounter with the Main Character.",
                "story"  : "Meet MC, learn of inner desire and conflict.",
                "tod"    : "Sunrise",
                "setting": "Deck of the ship Foundation",
                "pov"    : "Melvin",
                "tags"   : ["introduction", "final"]
            }
        ]
    }
    }
```


**CHAPTER** 
A chapter is a collection of scene files, with additional optional metadata.
Chapter ordering is implicit in the file. Ordering of *scenes* is explicit in the array of scenes.

- **desc**  A short description of the chapter, to be used in outlines.
- **pov**   Point of view of the chapter. Any string is valid.
- **scenes** An array of scene names. If the chapter is being used, the scenes 
   in this array must be present in the `scenes/` directory. See the section on
   **tags** for more information about controlling *scenes*.
- **setting** The setting of the scene. Any string is valid.
- **story** A description of the story points in a scene. This is used for 
   notes to the author, and is not included in the outline.
- **tags** An array of strings used to define collections of chapters.
- **title** The title of the chapter.
- **tod** Time of day. Any string is valid.

```
    CHAPTER specification

    {
        "desc"    : String, 
        "pov"     : String, 
        "scenes"  : Array.of(String) (required), 
        "setting" : String, 
        "story"   : String, 
        "tags"    : Array.of(Strong) 
        "title"   : String, 
        "tod"     : String
    }
```
**SCENE.MD file**
A scene file is *required* to be a text-only file using a subset of
multimarkdown for any formatting (bold, italic, lists, footnotes or endnotes,
etc.) The following markdown must be supported by any application that
implements this specification. All other markdown can be ignored. 

- bold
- italic
- ordered lists
- unordered lists
- foot or end notes (actually the same markdown)
