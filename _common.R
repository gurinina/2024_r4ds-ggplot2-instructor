set.seed(1014)

knitr::opts_chunk$set(
  comment = "#",
  collapse = TRUE,
  # cache = TRUE,
  fig.retina = 2,
  fig.width = 6,
  fig.asp = 2/3,
  message = FALSE,
  warning = FALSE,
  tidy = FALSE,
  # tidy.opts = list(arrow=TRUE),
  fig.show = 'hold',
  collapse = TRUE
)

# options(
#   dplyr.print_min = 6,
#   dplyr.print_max = 6,
#   pillar.max_footer_lines = 2,
#   pillar.min_chars = 15,
#   stringr.view_n = 6,
#   pillar.bold = TRUE,
#   # width = 77 # 80 - 3 for #> comment
# )

ggplot2::theme_set(ggplot2::theme_bw())
