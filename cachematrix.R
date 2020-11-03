## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


#Function that caches the inverse of matrix.

makeCacheMatrix <- function(m = matrix()) {
  #Initiate null value for matrix inverse.
  i <- NULL
  
  #Set the matrix.
  set <- function(matrix) {
    m <<- 
    inv <<- NULL
  }
  #Get the matrix.
  get <- function() m
  
  #Set the inverse of the matrix.
  setinv <- function(inv) i <<- inv
  
  #Get the inverse of the matrix.
  getinv <- function() i
  
  #methods included
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

#Checks if the inverse of a matrix is in the cache, if it isn't it solves the inverse.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  # Return inverse if it is in cache.
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  #If not, get the provided matrix.
  data <- x$get()
  #Calculate the inverse matrix using the solve function.
  m <- solve(data, ...)
  #Set the inverse to the object.
  x$setinv(m)
  m
}
