## code to prepare `jokes` dataset
mh <- xml2::read_html("https://www.buzzfeed.com/mrloganrhoades/a-complete-ranking-of-almost-every-single-mitch-hedberg-joke")
jokes <- rvest::html_nodes(mh, "div p")[-1]
jokes <- jokes[-length(jokes)]
jokes <- rvest::html_text(jokes, trim = TRUE)
jokes <- sub("^\\d+\\. ", "", jokes)
jokes <- sub(" \\[Listen\\]$", "", jokes)
usethis::use_data(jokes, overwrite = TRUE, internal = TRUE)
