import setuptools

with open("README.md", "r", encoding="utf-8") as fh:
    long_descr = fh.read()

setuptools.setup(
    name="mitosys",
    version="0.0.1",
    author="Julius Stopforth",
    description="Dotfiles manager",
    long_description=long_descr,
    long_description_content_type="text/markdown",
    url="https://github.com/sudosays/mitosys",
    package_dir={""},
    python_requires=">=3.6"
)
