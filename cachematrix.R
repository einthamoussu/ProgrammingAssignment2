## Put comments here that give an overall description of what your
## functions do.

# Function makeCacheMatrix, is capable of storing the selected matrix, and the inverse matrix if its possible. 
  # Besides allowing to get both matrix into screen
# Function cacheSolve, uses makeCacheMatrix, to store de inverse matrix
# its necessary to load de matlib package to calculate de matrix inverse
library(matlib)

## Write a short comment describing this function
# it contains 4 functions, setMatrix, to store a matrix,
  # getMatrix, to see in screen the contents of stores matrix
  # setInverseMatrix, to store the inverse of the matrix
  # getInverseMatrix, to read the inverse matrix stored

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  setMatrix <- function(newMatrix) {
    x <<- newMatrix
    inv <<- NULL
  }
  
  getMatrix <- function() x
 
  setInverseMatrix <- function(invMatrix) inv <<- invMatrix
 
  getInverseMatrix <- function() inv
  
  list(setMatrix = setMatrix, getMatrix = getMatrix,
       setInverseMatrix = setInverseMatrix,
       getInverseMatrix = getInverseMatrix)
}


## Write a short comment describing this function
# this function gets the inverted matrix if its stored, and if its not stored, tries to calculate de inverse
# if de determinant of the matrix is 0, the inverse matrix does not exists

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverseMatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$getMatrix()
  if(det(data) == 0){
    message("matrix inversion does not exists. Original matrix:")
    return(data)
  }
  else{
    m <- inv(data)
  }
  x$setInverseMatrix(m)
  m
}

# example to use these functions:
# exampleMatrix <- matrix( c(5, 1, 0,
#                             3,-1, 2,
#                             4, 0,-1), nrow=3, byrow=TRUE)
# 
# storedMatrix <- makeCacheMatrix( exampleMatrix)
# storedMatrix$getInverseMatrix()
# 
# cacheSolve(storedMatrix)
  
