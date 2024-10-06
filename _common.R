# Global knitr options for all formats
knitr::opts_chunk$set(
  message = FALSE,
  warning = FALSE,
  tidy.opts = list(
    arrow = TRUE,
    width.cutoff = 80
  ),
  tidy = TRUE,
  collapse = TRUE,
  knitr.duplicate.label = "allow",
  echo = TRUE,
  fig.align = "center",
  fig.show = "hold"
)

# Conditional formatting for different output types
if (knitr::is_html_output()) {
  # For HTML outputs (GitBook)
  knitr::opts_chunk$set(
    fig.width = 10, fig.height = 8,
    fig.retina = 2, out.width = '100%'
  )
} else if (knitr::is_latex_output()) {
  # For PDF outputs
  knitr::opts_chunk$set(
    fig.width = 7, fig.height = 5,
    fig.align = "center"
  )
} else {
  # For EPUB or other formats
  knitr::opts_chunk$set(
    fig.width = 6, fig.height = 4,
    fig.align = "center"
  )
}

# Setting other global options
options(
  dplyr.print_min = 6,
  dplyr.print_max = 6,
  pillar.max_footer_lines = 2,
  pillar.min_chars = 15,
  stringr.view_n = 6,
  pillar.bold = TRUE,
  width = 80
)

# Set the ggplot2 default theme
ggplot2::theme_set(ggplot2::theme_bw())
