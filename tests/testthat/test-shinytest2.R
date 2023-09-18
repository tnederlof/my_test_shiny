library(shinytest2)

test_that("{shinytest2} recording: my_shiny_app", {
  app <- AppDriver$new(variant = platform_variant(), name = "my_shiny_app", height = 1298, 
      width = 1419)
  app$expect_screenshot()
  app$set_inputs(bins = 7)
  app$expect_screenshot()
})
