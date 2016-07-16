# Philosophy

Distraction-free production of manuscripts, using unix tools and text files.

## Version Control and Online Backup

Very handy for keeping track of files, submissions, notes, and everything else that went into a submission.

## Flexibility

**minuscript** doesn't care about anything but the manuscript directory, the author.json file, the manuscript.json file and the scene directory. Names of the scenes are up to you. How you organize your manuscript is up to you. Additional directories are up to you - **minuscript** will ignore anything it doesn't know about. One example of a directory that I find useful is the **scans** directory, because I free write a lot of content on manual typewriters, and I want to keep track of those files. So, I have a **scans** directory that includes dated pdf files of scans of typewriter pages. **minuscript** doesn't care at all about that directory, but it's version controlled, backed up online, and organized so I don't have to worry about it.

## Simple Enough to Support

I want to build a set of tools that completely define a workflow, and not get distracted by user interfaces, long lists of features, or other distractions. The best tools are hammers. **minuscript** is a hammer. 

## Separation of Text from Tools

A big problem in the longevity of a bit of writing raw material is the tools that you use to create it. I know it sounds crazy, but I've done this long enough to have tried using lots of tools, and of course I discovered that very few writing tools are designed to support the *workflow* of writing a manuscript. Let's face it - Microsoft Word is great for small bits of writing, but sucks for supporting the creation of fiction. It's too hard to manage the order of scenes, too hard to go back to previous versions of things, try alternate passages in context, etc. Basically anything that you'd want to support the act of creating a work of fiction Word fails.

My assumption is that a good workflow is to get a manuscript completed, sent out, and get on to the next one. Along the way, there are plenty of times when you want to let something sit and then come back to it, in order to get a fresh perspective on it. The **minuscript** workflow is designed for that kind of re-entrant workflow. You can let something site, work on the next thing, and be confident that when it's time to get back to the manuscript, you'll be able to remember where you were, and get to work again.

## Keep It Simple, Stupid

There are plenty of distraction-free writing tools, and I've tried most of them. There are very few distraction-free workflow tools. This is one that might work for you.

## Principles

- The most important thing is the story. Nothing else matters. It would be great to have a reason to produce any format imaginable (ebook, html, word, etc.) but unless there's a great story behind it, the format is meaningless. A corollary to this is that I don't care about whether an editor wants a pdf, docx, or name-your-own format until I have an editor or an agent.
- Cross bridges when you come to them, not before. See above.
- Do one thing well.
- Knowing your stories are safe (backed up), organized, annotated (what was I thinking?), and accessible from any new computer is a way of calming the mind.
- A manuscript is a great big GTD project, and it can be managed the same way. Let's call that GND - the "Getting Novels Done" method. It's highly unlikely that a little nagging tidbit of information about a main character's second cousin's dog will be important in the final draft, but things like that can slow you down, so I want to support writing that stuff down and forgetting about it.
- All things being equal, I'd rather be writing manuscripts on typewriters, but there's a lot to be said for the invention of the computer.
- I'm in this for the long haul.
- I don't want to keep track of a bunch of paper, unless it helps me write.
- The only thing that matters is the story.

I've been writing manuscripts for long enough to use several tools to manage manuscripts.

- Text files that aren't tied to any proprietary tool.
- Version management with unix tools.
- Flexibility in the way things are presented and printed.
- Explicit management of scenes, chapters and a finished manuscript.
- Support for a standard manuscript format, compiled into a portable pdf. 

# Text Editors
I assume you're using vi or emacs. If you're using vi, you're in luck, because I provide some support files for that. If you use emacs, you're on your own until someone else contributes to the project.

# Workflow
A minuscript manuscript is defined as:

- Title page
- Table of contents (optional)
- Synopsis (optional)
- One or more chapters. A chapter is a collection of scenes.

There are a few required files:
- **manuscript.json** This file defines the title of the manuscript and the structure of the manuscript by collecting scene files into chapters.
- **author.json** This file defines the author's information.

# Eating My Own Dog Food
I'm using this to write my next manuscript, and get it into readers' hands. I'll adapt it to the workflow as I go.

# Directory Structure

/manuscripts/
    name-of-manuscript/
        author.json
        manuscript.json
        research/
        scans/
        scenes/
            <scene name>.md
        submissions/    

# Dependencies On Other Software

**minuscript** takes advantage of some foundational software in order to be so simple. Linux and Mac have most of this already, or it's easy to install.

For simplicity's sake, I'm going to assume you know or can find out how to install all of this. I use ports on my Mac, but if you're using Linux, you already know how to install this stuff.

- Python
- latex and pdflatex
- multimarkdown
- JSON data files. This is a file format that's really easy to us in pythons scripting. Again, if you're using this workflow, I'm going to assume you are comfortable with a file format like JSON, and can be careful editing these files.
- An editor of your choice. I use vim.
- A version control system of your choice. I use git. This is not strictly required by multimarkdown but it's important in the workflow.  See the discussion above for the reasons.

