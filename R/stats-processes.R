
#' @keywords internal

ace_descriptive_statistics <- function(x) {
  variance = c(sd = ace_sd(x), se = ace_se(x))
  summary = c(length = ace_length(x), count = ace_count(x))
  averages = c(mean = ace_mean(x), median = ace_median(x))
  return (c(variance, summary, averages))
}

#' @keywords internal

ace_descriptive_statistics_dplyr <- function(x, col) {
  out = dplyr::summarize_at(x, dplyr::vars(dplyr::one_of(col)), dplyr::funs(
    mean = ace_mean,
    median = ace_median,
    count = ace_count,
    length = ace_length))
  return (out)
}

#' @keywords internal 

ace_descriptive_statistics_by_group <- function(x, y) {
  var_by_group = c(sd = ace_sd_by_group(x, y), se = ace_se_by_group(x, y))
  avg_by_group = c(mean = ace_mean_by_group(x, y), median = ace_median_by_group(x, y))
  sum_by_group = c(count = ace_count_by_group(x, y), length = ace_length_by_group(x, y))
  return (c(var_by_group, avg_by_group, sum_by_group))
}

#' @keywords internal 

ace_average_turns <- function (x, y) {
  avg_last_3_turns = c(turns_three = ace_turns(x, y, n = 3))
  avg_last_5_turns = c(turns_five = ace_turns(x, y, n = 5))
  return (c(avg_last_3_turns, avg_last_5_turns))
}

#' @keywords internal 

ace_spatial_span <- function(x, col) {
  sustained_span = dplyr::summarize_at(x, dplyr::vars(dplyr::one_of(col)), dplyr::funs(
    span = ace_span))
  return (sustained_span)
}

#' @keywords internal

ace_detection_rate <- function(x, y) {
  rate = c(rate = ace_detection(x, y))
  return (c(rate))
}

#' @keywords internal 

ace_ishihara_dplyr <- function(x, col) {
  out = dplyr::summarize_at(x, dplyr::vars(dplyr::one_of(col)), dplyr::funs(
    colorblind = ace_ishihara))
  return (out)
}

#' @keywords internal 

ace_ishihara <- function(x) { # uses y/n readings from "rg_color_deficiency" column
  if ("YES" %in% x) {return ("YES")
  } else {return ("NO")}
}