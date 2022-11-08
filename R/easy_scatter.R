#' Plot an easy scatter plot from data frame object
#'
#' @param df The data frame object
#' @param xi Integer indicating x axis column number
#' @param yi Integer indicating y axis column number
#' @param pch Default 21
#' @param bg Colour name for the points
#' @param ... Any base R plot function arguments
#'
#' @return Returns a scatter plot
#' @export
#'
#' @examples
#' easy_scatter()
#' easy_scatter(iris,1,2)
#' easy_scatter(df=iris, xi=1, yi=2,pch=21, bg="blue")
easy_scatter<- function(df= datasets::cars,xi=1,yi=2,pch=21,bg="red",...)
{
  # get the columns from the data frame
  a<- df[,xi]
  b<- df[,yi]
  # stop excution of the code if either of the columns are factors
  if(is.factor(a)==TRUE || is.factor(b) == TRUE){
    cat("Factor variables are not allowed!")
  }

  else {
    # plot a scatter plot
    plot(a,
       b,
       main=paste0("Scatter plot ",tools::toTitleCase(names(df)[xi]),
                   " vs ", tools::toTitleCase(names(df)[yi])
                   ),
       xlab=tools::toTitleCase(names(df)[xi]),
       ylab=tools::toTitleCase(names(df)[yi]),
       pch=pch,
       bg=bg
    )
    }
}
