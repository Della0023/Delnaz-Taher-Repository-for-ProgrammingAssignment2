## A function that creates a matrix that can cache its inverse for the input 

CacheMatrix <- function(x = matrix()){
     z <- NULL 
     set <<- function(y) {
     x <<- y
     z <<- NULL
     }
     get <- function() x
     setsolve <- function(solve) z <<- solve
     getsolve <- function() z
     list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}

##This is the function that computes the inverse of the matrix returned by CacheMatrix

CacheSolve <- function(x, ...){
     z <- x$getsolve()
     if(!is.null(z)) {
     message("getting inversed matrix")
          return(z)
     }    
     data <- x$get()
     z <- solve(data, ...)
     x$setsolve(z)
     z
}
