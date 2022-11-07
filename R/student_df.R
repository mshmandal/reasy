#' Make a sample data set of students
#'
#' @param n Integer; Number of rows to generate
#' @param seed Integer; for reproducibility
#'
#' @return A data frame with five columns with n rows; Defaults to 30 rows
#' @export
#'
#' @examples
#' student_df()
#' student_df(10,888)
#' student_df(n=10,seed=888)
student_df <- function(n=30,seed=999){
  # set seed for reproducibility
  set.seed(seed)
  # generate n rows
  df<-data.frame(
    Name= as.factor(sample(letters[1:15],size = n,replace = T)),
    Age= sample(18:24,size = n,replace = T),
    Math = sample(20:90,size = n,replace = T),
    Bio = sample(20:90,size = n,replace = T),
    Gender = as.factor(sample(1:2,size = n,replace = T))
  )

  return(df)
}
