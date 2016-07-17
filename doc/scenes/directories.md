**minuscript's Directory Structure:** This is the basic structure expected by the software, though command line arguments allow you to overwrite all of these if you have some other structure in mind.

There is a top level directory for the manuscript, and then several files and directories are expected:

    name-of-manuscript/
        author.json             (required)
        manuscript.json         (required)
        scans/                  (optional)
        scenes/
            <scene name>.md     (required, per manuscript.json file)
            synopsis.md         (optional)

**Details:**

- `author.json` describes the author of this manuscript. See the example in the documentation directory for specifics.
- `manuscript.json` describes the names and order of the chapters, and which scenes go into them.. See the example in the documentation directory for specifics.
- `scans/` is a directory for scanned pages that can be incorporated into the manuscript. See the WORKFLOW section for more detail.
- `scenes/` is a required directory that contains your scene files
- `<scene name>.md` is a scene file, written in multimarkdown
- `synopsis.md` is an optional synopsis file, written in multimarkdown. There is a command line option for including this or not when you create a final pdf file.

