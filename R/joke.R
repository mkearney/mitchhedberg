
#' Randomly select and print joke
#'
#' Prints a randomly selected Mitch Hedberg joke
#'
#' @return A randomly selected joke is printed and the text is invisibly returned
#' @export
joke <- function() {
  UseMethod("joke")
}

#' @export
joke.default <- function() {
  j <- sample(jokes, 1)
  j <- strwrap(j, indent = 2, exdent = 2)
  cat(j, fill = TRUE)
}

#' Add mitchhedberg joke to startup
#'
#' Adds mitchhedberg::joke to user's .Rprofile, which results in printing a
#' joke at the start of interactive sessions
#'
#' @return This will append a local execution of mitchhedberg::joke() assuming
#' the session is interactive and the package has been installed.
#' @export
joke_on_startup <- function() {
  if ((home <- Sys.getenv("HOME")) == "") {
    home <- normalizePath("~")
  }
  .Rprofile <- file.path(home, ".Rprofile")
  con <- file(.Rprofile, "r")
  p <- readLines(con, warn = FALSE)
  close(con)
  if (any(grepl("mitchhedberg", p))) {
    cat("It appears you already have 'mitchhedberg' in your .Rprofile\n")
    return(invisible())
  }
  add_to_rprof <- 'local(if (interactive() && requireNamespace("mitchhedberg", quietly = TRUE)) {mitchhedberg::joke()})'
  cat(add_to_rprof, file = .Rprofile, fill = TRUE, append = TRUE)
  invisible()
}
