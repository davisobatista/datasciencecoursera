## Create a function which takes a matrix named A as an argument
makeCacheMatrix <- function( A = matrix()) {
  
  ## set initial value of inv
  inv <- NULL
  
  set <- function(B) {
    
    ## assign the value of B to A (stored in the parent environment)
    A <<- B
    
    ## assign NULL in inv (stored in the parent environment)
    inv <<- NULL
  }
  ## return the matrix A
  get <- function() A
  
  ## sets the value of the inversed matrix to the inv variable (stored in the parent environment)
  setinverse <- function(inverse) inv <<- inverse
  
  ## return the cached value of inversed matrix A
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}