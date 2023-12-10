

knitr::opts_chunk$set(
  fig.width = 7,
  fig.height = 5,
  # fig.asp = 0.7,
  fig.align = "center",
  message = FALSE,
  warning = FALSE,
  tidy = TRUE,
  tidy.opts = list(arrow=TRUE,width.cutoff = 80),
  # fig.show = 'hold',
  collapse = TRUE
)


options(
  dplyr.print_min = 6,
  dplyr.print_max = 6,
  pillar.max_footer_lines = 2,
  pillar.min_chars = 15,
  stringr.view_n = 6,
  pillar.bold = TRUE,
  width = 80 #> comment
)

ggplot2::theme_set(ggplot2::theme_bw())
