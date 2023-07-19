

## Write short comment here

CacheMatrix <- function(x = matrix()) {
  z <- NULL
  set <<- function(y){
       x <<- y
       z <<- NULL
  }   
     get <- function() x
     setInverse <- function(solveMatrix) z <<- solveMatrix
     getInverse <- function() z
     list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

##Return a matrix that is the inverse of 'x'

CacheSolve <- function(x, ...){
  z <- x$getInverse()
  if(!is.null(z)) {
       message("getting inversed matrix")
       return(z)
  }
  data <- x$get()
  z <- solve(data, ...)
  x$setInverse(z)
  z
  }

