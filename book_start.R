# This file is automatically sourced before each chapter is compiled. (Or is it
# before each session, regardless of the number of chapters being put together?
# That is, if chapter 4 changes the value for `option("digits")`, will the value
# be reset for chapter 5? For now, I doubt we need to worry about that since
# individual chapters rarely mess around with this stuff.)

# This is caused by the setting of "before_chapter_script" in _bookdown.yml.

# Packages used by almost all chapters, and which we don't choose to show to
# students since the code they see does not make use of them. Should ggthemes be
# here?

library(knitr)
library(scales)
library(gt)
library(gtsummary)
library(patchwork)
library(gifski)

options(digits = 2)

# Without this next line, the cache is created --- in book_temp_cache, since
# `book_filename` is set to "book_temp" in _bookdown.yml --- and then
# automatically deleted by bookdown after knitting is complete. We want the
# cache to persist, at least in the book-builders home directory. I don't think
# that using a common directory will cause conflicts across chapters . . .

knitr::opts_chunk$set(cache.path = "cache-directory/")

# Still need to learn more about figure sizing and display. For now, it sure
# seems like you always want to set out.width to 100%.

knitr::opts_chunk$set(out.width = "100%")

# I experimented with setting cache = TRUE for all code chunks by this is too
# dangerous/confusing. Just cache the chunks which take a lot of time.


