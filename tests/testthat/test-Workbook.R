# helper function to skip tests if we don't have the 'openpyxl' module
skip_if_no_openpyxl <- function() {
  have_openpyxl <- reticulate::py_module_available("openpyxl")
  if (!have_openpyxl)
    skip("openpyxl not available for testing")
}

# As more than 400 functions, testing two main functions only
test_that("Testing Workbook() and active() functions", {
  skip_if_no_openpyxl()

  wb <- Workbook()
  expect_s3_class(wb, "python.builtin.object")
  expect_s3_class(wb, "openpyxl.workbook.workbook.Workbook")

  ws <- wb |> active()
  expect_s3_class(ws, "python.builtin.object")
  expect_s3_class(ws, "openpyxl.worksheet.worksheet.Worksheet")
})
