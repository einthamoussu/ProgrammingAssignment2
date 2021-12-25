## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  setMatrix <- function(nuevaMatriz) {
    x <<- nuevaMatriz
    inv <<- NULL
  }
  
  getMatrix <- function() x
 
  setinverseMatrix <- function(invMatrix) inv <<- invMatrix
 
  getinverseMatrix <- function() inv
  
  list(setMatrix = setMatrix, getMatrix = getMatrix,
       setinverseMatrix = setinverseMatrix,
       getinverseMatrix = getinverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
