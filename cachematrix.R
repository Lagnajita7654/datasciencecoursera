## This calculates and stores the inverse of a square matrix

## This function creates a matrix and sets the values & the inverse.

makeCacheMatrix=function(x=matrix()){
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Checks if inverse is available in the memory and calculates the inverse if needed.

cacheSolve <- function(x, ...) {
  i<- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  return(i)
}


