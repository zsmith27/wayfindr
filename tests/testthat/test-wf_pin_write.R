test_that("multiplication works", {

  wf_pin_write(
    x = raw_als[[1]],
    board = als_board,
    id = names(raw_als[1]),
    milestones = milestones,
    milestone_num = "ms1",
    data_source = edd_paths[[1]]
  )
  expect_equal(2 * 2, 4)
})
