## Matrix inversion is usually a costly computation and there may be some benefit to caching 
## the inverse of a matrix rather than compute it repeatedly (there are also alternatives to 
## matrix inversion that we will not discuss here). Your assignment is to write a pair of 
## functions that cache the inverse of a matrix.

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  # initialize invM the inverse matrix to null
  invM <- NULL
  
  # function to set the Matrix
  set <- function(y){
    x <<- y
    invM <<- NULL
  }
  
  # function to get the Matrix
  get <- function(){
    x
  }
  
  # function to set the inverse matrix
  setinvM <- function(solve){
    invM <<- solve
  }
  
  # function to get the inverse matrix
  getinvM <- function(){
    invM
  }
  
  # list will all the functions when makeCacheMatrix is called
  list(set=set, get=get, setinvM=setinvM, gentinvM = getinvM)
}


## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
