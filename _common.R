knitr::knit_engines$set(details = function(options) {
  details::details
  # the source code is in options$code; just do
  # whatever you want with it
})


knitr::opts_chunk$set(
  fig.width = 6,
  fig.asp = 2/3,
  message = FALSE,
  warning = FALSE,
  tidy = TRUE,
  tidy.opts = list(arrow=TRUE),
  fig.show = 'hold',
  collapse = TRUE
)

options(
  dplyr.print_min = 6,
  dplyr.print_max = 6,
  pillar.max_footer_lines = 2,
  pillar.min_chars = 15,
  stringr.view_n = 6,
  pillar.bold = TRUE,
  width = 60# 80 - 3 for #> comment
)
# local({
#   hook_source <- knitr::knit_hooks$get('chunk')
#   knitr::knit_hooks$set(source = function(x, options) {
#     
#     hook_source(x, options)
#   })
# })
ggplot2::theme_set(ggplot2::theme_bw())

  knitr::knit_hooks$set(chunk = function(x, options) {
    if (!is.null(options$button)) {
      rnd_id <- substr(tempfile("b", "", ""), 2, 9)
      paste0(
        '<button class="btn btn-primary" data-toggle="collapse" data-target="#',
        rnd_id, '">',
        options$button, '</button> <div id="',
        rnd_id, '" class="pre">',
        x, '</div>')
    } else {
      x
    }
  })

knitr::knit_hooks$set(answer = function(before, options, envir) {
  if (before) {
    paste(
      "<div class=\"accordion\">",
      "<h3 class=\"toc-ignore\">Answer</h3>",
      "<div style=\"background: #fff;\">",  sep = "\n")
  } else {
    paste("</div>", "</div>", sep = "\n")
  }
})

eng_text_answer <- knitr:::eng_html_asset(
                               paste(
                                   "<div class=\"accordion\">",
                                   "<h3 class=\"toc-ignore\">Answer</h3>",
                                   "<div style=\"background: #fff;\">",
                                   "<p>",  sep = "\n"),
                               paste(
                                   "</div>", "</div>", "</p>", sep = "\n"
                               )
                           )

knitr::knit_engines$set(text_answer = eng_text_answer)
