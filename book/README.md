# vistransrep

<!-- badges: start -->
[![Travis build status](https://travis-ci.org/krlmlr/vistransrep.svg?branch=master)](https://travis-ci.org/krlmlr/vistransrep)
<!-- badges: end -->

Programming in the tidyverse.

## Hacking

### Creating a new script

1. Draft an `.R` script in `proj/script/??-slug.R`, use an existing script as template

2. Run `make scaffold` to create the corresponding `.Rmd` file

3. When happy with the contents, work on the `.Rmd` file to add text

4. Run `make purl` to update the `.R` file

5. At this stage, running `make scaffold` again after updating the `.R` file will erase your text. Make sure to commit before, and use a visual differ to sync

6. Update the website with `git push`

### Mass renaming

Use `qmv` on the `.Rmd` files, then `make id purl`

### Testing

Run `make test`, currently not integrated in CI

---

Licensed under [CC-BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/).
