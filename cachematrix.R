## These functions are part of Coursera's R Programming assignment on Week 3
## Completed by GitHub user: lauraboin

## This first function creates a special "matrix" object, modeled after
## a function to create a special vector.

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, 
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This second function is to cache the inverse of above special matrix, 
## to avoid repetitious computation, modeled after a function to cache 
## a vector mean.

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
  
        ## Return a matrix that is the inverse of 'x'
}
