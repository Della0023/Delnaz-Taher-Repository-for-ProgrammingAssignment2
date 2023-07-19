## A function that creates a matrix that can cache its inverse for the input 



CacheMatrix <- function(x = matrix()) {
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

##This is the function that computes the inverse of the matrix returned by CacheMatrix



CacheSolve <- function(x, ...){
 z <- x$getInverse()
   if(!is.null(z)) {
   message("getting cached data")
          return(z)
     }    
   data <- x$get()
   z <- solve(data, ...)
   x$setsolve(z)
   z
}
