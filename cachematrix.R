
## makeCacheMatrix is a function that creates a matrix that can cache its inverse for the input


makeCacheMatrix <- function(x = matrix()) {
  z <- NULL
  set <- function(y){
     x <<- y
     z <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) z <<- solveMatrix
  getInverse <- function() z
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Should calculate and retrieve the inverse from the cache


CacheSolve <- function(x, ...){
  z <- x$getInverse()
  if(!is.null(z)) {
    message("getting inversed matrix")
    return(z)
  }
  data <- x$get()
  z <- solve(data, ...)
  x$setInverse
}

