#' @keywords internal
#' @import rlang
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL

.onLoad <- function(lib, pkg) {
  run_on_load()
}

on_load(
  local_use_cli()
)
