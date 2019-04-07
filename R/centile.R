#' Calculate the percentile ratios
#'
#' Takes in a vector and two percentile then divides them.
#'
#' @param data_vector A numeric vector.
#' @param top_perc The top percentile you will put in your equation.
#' @param bot_perc The bot perncetile you will put in your equation.
#' @return Result of diving top_perc into bot_perc.
#' @export

centile <- function(data_vector, top_perc, bot_perc){
  if(top_perc > 0 && bot_perc > 0 && is.vector(data_vector)){

    sorted_income <- sort(data_vector)
    bot_income_index <- as.integer(length(data_vector) * (bot_perc / 100))
    cumulative_bot_income <- sum(sorted_income[1:bot_income_index])


    reverse_sorted_income <- sort(data_vector, decreasing = T)
    top_income_index <- as.integer(length(data_vector) * (top_perc/100))
    cumulative_top_income <- sum(reverse_sorted_income[1:top_income_index])
    return(cumulative_top_income / cumulative_bot_income)
  }else{
    print("Income data should be a vector and percentiles should be positive integers.")
  }
}

#' Calculates the palma ratio.
#' @param data_vector A numeric vector.
#' @return Result of first 10 percentile / last 40 percentile.
#' @export

palma <- function(data_vector){
  top_perc <- 10
  bot_perc <- 40

  sorted_income <- sort(data_vector)
  bot_income_index <- as.integer(length(data_vector) * (bot_perc / 100))
  cumulative_bot_income <- sum(sorted_income[1:bot_income_index])

  reverse_sorted_income <- sort(data_vector, decreasing = T)
  top_income_index <- as.integer(length(data_vector) * (top_perc/100))
  cumulative_top_income <- sum(reverse_sorted_income[1:top_income_index])
  return(cumulative_top_income / cumulative_bot_income)
}


#' Calculates McLoone index.
#'
#' @param data_vector A numeric vector.
#' @return How values differ from median.
#' @export


mcloone <- function(data_vector){
  if(is.vector(data_vector)){
    sorted_income <- sort(data_vector)
    med_ind <- as.integer(length(data_vector)/2)
    sum(sorted_income[1:med_ind])/  (median(sorted_income) * (med_ind-1))
  }else{
    print("Argument should be a vector.")
  }}

#' Calculates the relative variance.
#' @param data_vector A numeric vector.
#' @return Relative variance.
#' @export
relvar <- function(data_vector){
  if(is.vector(data_vector)){
    sorted_income <- sort(data_vector)
    for (i in 1:length(sorted_income)){
      relative_variance = ((sorted_income[i]-mean(sorted_income)) ^ 2) / length(sorted_income) * (mean(sorted_income)^2)
      return(relative_variance)
    }
  }else{
    print("Argument should be a vector.")
  }
}

