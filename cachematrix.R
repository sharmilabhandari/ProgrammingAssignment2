## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solve 
  Matrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse_x <- x$getinverse()
  if(!is.null(inverse_x)) {
    message("getting cached data")
    return(inverse_x)
  }
  data <- x$get()
  inverse_x <- solve(data)
  x$setinverse(inverse_x)
  inverse_x
}
