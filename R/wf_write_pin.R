#' Title
#'
#' @param x an R object.
#' @param board a pin board.
#' @param id
#' @param milestones
#' @param milestone_num
#' @param data_source
#'
#' @return
#' @export

wf_pin_write <- function(x, board, id, milestones, milestone_num, data_source = NULL) {
  # Prefix pulled from milestones.
  prefix <- milestones[grepl(milestone_num, milestones)]
  # Stop if there is no match or multiple matches with the milestone_num provided.
  stopifnot(length(prefix) == 1)
  # Create a name composed of [milestone]_[id].
  name <- paste0(prefix, "_", id)

  # Write the data to a board as a RDS pin.
  pins::pin_write(
    board = board,
    x = x,
    name = name,
    type = "rds",
    title = name,
    metadata = list(
      # Include data_source to enable traceback.
      data_source = data_source
    )
  )
}
