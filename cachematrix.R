## Put comments here that give an overall description of what your
## functions do

## A function that creates a matrix that can cache its inverse for the input

CacheMatrix <- function(x = matrix()) {
     z <- NULL
     set <- function(y) {
             x <<- y
             z <<- NULL
}
        get <- function() x
        setstolve <- function(solve) z <<- solve
        getsolve <- function() z
        list(set = set, get = get,
            setsolve = setsolve,
            getsolve =getsolve)
}
###
## Return a matrix that is the inverse of 'x'
## This function computes an inverse of the previous matrix and is 
returned by the CacheMatrix

CacheSolve <- function(x, ...) {
        z <- x$getsolve()
        if(!is.null(z)) {
         message("getting inversed matrix")
                return(z)
        }
      data <- x$get()
        z <-solve(data, ...)
        x$setsolve(z)
        z
}
