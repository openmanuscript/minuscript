import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="minuscript",
    version="1.0",
    author="David H. Rogers",
    author_email="david@dhrogers.com",
    description="A minimal manuscript tool, based on the openmanuscript project",
    long_description="This tool utilizes the data definition for the OpenManuscript project and implements a set of product creation capabilities for the OpenManuscript format. See https://github.com/openmanuscript/openmanuscript",
    long_description_content_type="text/markdown",
    url="https://github.com/openmanuscript/minuscript",
    packages=setuptools.find_packages(),
    scripts=["minuscript"],
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: BSD",
        "Operating System :: OS Independent",
    ],
)
