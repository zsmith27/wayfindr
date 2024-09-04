#' Title
#'
#' @param milestones a character vector representing key steps in a data sets
#' life cycle. The vector is assumed to be in the order the steps will occur.
#' @param board a pins board.
#'
#' @return
#' @export
#'
#' @examples
#' wf_milestones(milestones = LETTERS[1:5], board = NULL)
wf_milestones <- function(milestones, board = NULL) {
  stopifnot(is.character(milestones))

  ms_names <- paste0("ms", 1:length(milestones), "_", milestones)

  if (!is.null(board)) {
    pins::pin_write(
      board = board,
      x = ms_names,
      name = "milestones",
      title = "wayfindr milestones",
      type = "rds"
    )
  }

  return(ms_names)
}
