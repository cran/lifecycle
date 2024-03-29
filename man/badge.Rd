% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/badge.R
\name{badge}
\alias{badge}
\title{Embed a lifecycle badge in documentation}
\usage{
badge(stage)
}
\arguments{
\item{stage}{A lifecycle stage as a string. Must be one of
\code{"experimental"}, \code{"stable"}, \code{"superseded"}, or \code{"deprecated"}.}
}
\value{
An \code{Rd} expression describing the lifecycle stage.
}
\description{
To include lifecycle badges in your documentation:
\enumerate{
\item Call \code{usethis::use_lifecycle()} to copy the badge images into the
\verb{man/} folder of your package.
\item Call \code{lifecycle::badge()} inside R backticks to insert a
lifecycle badge:

\if{html}{\out{<div class="sourceCode">}}\preformatted{#' `r lifecycle::badge("experimental")`
#' `r lifecycle::badge("deprecated")`
#' `r lifecycle::badge("superseded")`
}\if{html}{\out{</div>}}

If the deprecated feature is a function, a good place for this
badge is at the top of the topic description. If it is an argument,
you can put the badge in the argument description.
}

The badge is displayed as an image in the HTML version of the
documentation and as text otherwise.

\code{lifecycle::badge()} is run by roxygen at build time so you don't need
to add lifecycle to \verb{Imports:} just to use the badges. However, it's still
good practice to add to \verb{Suggests:} so that it will be available to
package developers.
}
\section{Badges}{

\itemize{
\item \ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}} \code{lifecycle::badge("experimental")}
\item \ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#stable}{\figure{lifecycle-stable.svg}{options: alt='[Stable]'}}}{\strong{[Stable]}} \code{lifecycle::badge("stable")}
\item \ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#superseded}{\figure{lifecycle-superseded.svg}{options: alt='[Superseded]'}}}{\strong{[Superseded]}} \code{lifecycle::badge("superseded")}
\item \ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}} \code{lifecycle::badge("deprecated")}
}

The meaning of these stages is described in
\code{vignette("stages")}.
}

