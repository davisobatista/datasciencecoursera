## Create a function getting matrix A as argument along with other prossible arguments
cacheSolve <- function(A, ...) {
  
  ## assign the value of the cached inverse matrix from cacheMatrix to inv variable
  inv <- A$getinverse()
  
  ## if the value is different than null(meaning it was computated already),return the value of inversed matrix A
  if(!is.null(inv)) {
    message("Getting Cached Data")
    return(inv)
  }
  
  ## assign the value of A to a matrix named mymatrix 
  mymatrix <- A$get()
  
  ## store the value of inversed matrix A to inv variable
  inv <- solve(mymatrix)
  
  ## cache the inv variable for further usage and printing inv
  A$setinverse(inv)
  inv
}