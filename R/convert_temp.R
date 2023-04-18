#'Classify the Weather
#'
#'Tells us the temperature in Celsius or Fahrenheit depending on the given method
#'
#'@param temperature the temperature in C or F
#'@param method either "c2f" or "f2c" conversion methods
#'
#'@export
#'
#'@examples
#' #example code
#'convert_temp(10,"c2f")
#'

convert_temp <- function(temperature,method){
  if (!is.numeric(temperature)){
    stop("Parameter data must be a number.")
  }
  else if (!is.character(method)){
    stop("Parameter data must be a string.")
  }
  else if(method == "c2f"){
    return((temperature * 9/5) + 32)
  }
  else if (method == "f2c"){
    return((temperature - 32) * 5/9)
  }
  else {
    stop("Not a proper conversion")
  }
}


