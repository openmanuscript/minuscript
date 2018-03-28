This is a specification for manuscript v1.0, a database for a text-based workflow for creating manuscripts. There are a set of required and optional directories and files. This specification allows other files and directories to be present under the main manuscript directory, but they are not part of this  specification. 

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
    1. `<scene name>.md` (required). One or more scene files, as called out
       in the `manuscript` file. A scene file is in `multimarkdown` format. 

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
    SPECIFICATION of author file

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

**manuscript file**

```
    SPECIFICATION
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


  **CHAPTER** Chapter ordering is implicit in the ordering of the chapters in 
  the file. Ordering of `scenes` is explicit in the array of scenes.
    1. `version` the version of this specification the file follows. Valid
       values are `[1.0]`.
    2. `title` The full title of the manuscript.
    3. `runningtitle` A one word title, included in each page's header, per 
       common manuscript formatting. 
    4. `chapters` A list of chapters. a `chapter` is defined below. A chapter 
       is an array of scenes, with metadata. The following `(key,value)` pairs 
       are defined by this specification. Other `(key,value)` pairs
       may be present, but are not part of this specification. 
    5. Other valid `JSON` data may be present, but is not part of this    
       specification.

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

    1. `desc`  A short description of the chapter, to be used in outlines.
    2. `pov`   Point of view of the chapter. Any string is valid.
    3. `scenes` An array of scene names. If the chapter is being used, the 
         scenes in this array must be present in the `scenes/` directory. See 
         the section on **`tags`** for more information about controlling 
         `scenes`.
    4. `setting` The setting of the scene. Any string is valid.
    5. `story` A description of the story points in a scene. This is used for 
        notes to the author, and is not included in the outline.
    6. `tags` An array of strings used to define collections of chapters.
    7. `title` The title of the chapter.
    8. `tod` Time of day. Any string is valid.
