% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/verbosity.R
\name{verbosity}
\alias{verbosity}
\title{Control the verbosity of deprecation signals}
\description{
There are 3 levels of verbosity for deprecated functions: silence,
warning, and error. Since the lifecycle package avoids disruptive
warnings, the default level of verbosity depends on the lifecycle
stage of the deprecated function, on the context of the caller
(global environment or testthat unit tests cause more warnings),
and whether the warning was already issued (see the help for
\link[=deprecate_soft]{deprecation functions}).

You can control the level of verbosity with the global option
\code{lifecycle_verbosity}. It can be set to:
\itemize{
\item \code{"quiet"} to suppress all deprecation messages.
\item \code{"default"} or \code{NULL} to warn once every 8 hours.
\item \code{"warning"} to warn every time.
\item \code{"error"} to error instead of warning.
}

Note that functions calling \code{\link[=deprecate_stop]{deprecate_stop()}} invariably throw
errors.
}
\examples{
if (rlang::is_installed("testthat")) {
  library(testthat)

  mytool <- function() {
    deprecate_soft("1.0.0", "mytool()")
    10 * 10
  }

  # Forcing the verbosity level is useful for unit testing. You can
  # force errors to test that the function is indeed deprecated:
  test_that("mytool is deprecated", {
    rlang::local_options(lifecycle_verbosity = "error")
    expect_error(mytool(), class = "defunctError")
  })

  # Or you can enforce silence to safely test that the function
  # still works:
  test_that("mytool still works", {
    rlang::local_options(lifecycle_verbosity = "quiet")
    expect_equal(mytool(), 100)
  })
}
}
