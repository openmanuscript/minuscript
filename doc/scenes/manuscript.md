A manuscript consists of **chapters**, which are made up of **scenes**. In `minuscript` land, the `manuscript.json` file defines the chapters and lists the scenes that are included in them. So a normal workflow is:

- create a scenes named `whatever-you-want.md` in the `scenes/` directory
- organize them into chapters in the `manuscript.json` file
- run `minuscript`
- read the resulting `pdf` file (the name of it depends on your `manuscript.json` file, or the command line options you use)
- edit scene files, or the organization of them in the `manuscript.json` file
- repeat

You can save different embodiments of the manuscript by saving different `json` files. `minuscript` doesn't care what you call them, it's just set up to look for one called `manuscript.json` by default. Let's say you wanted to try two different arrangements of chapters and scenes, in order to compare them. You would:

- create two `json` files with those arrangements. Let's call them `dramatic-opening.json` and `slow-buildup.json`
- create the manuscripts with the following commands:
    - `minuscript --manuscript dramatic-opening.json --manuscript dramatic`
    - `minuscript --manuscript slow-buildup.json --manuscript buildup`
- now you have two pdf files, one called `dramatic.pdf` and one called `buildup.pdf`
- read and compare them
- we note that you could also change the `runningtitle` tag in the `manuscript.json` file, and then run the following commands to achieve the same final result. Which method you choose is up to you. 
    - `minuscript --manuscript dramatic-opening.json`
    - `minuscript --manuscript slow-buildup.json`
