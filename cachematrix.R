## Programming Assignment 2: Functions that cache the inverse of a matrix.
## By: Tan KL


# Global variable
# List to store cache for inverse of square matrix
Mat_cache = list()

## Function makeCacheMatrix
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

  if ( nrow(x) != ncol(x) )
  {
    # Exception handling - X must be square matrix, else exit function 
    print("Object is not a square matrix, exit function")
    return
  }
  else
  {
    # X is a square matrix, proceed to cacheSolve
    print("Object is a square matrix, proceed")
    cacheSolve(x)
  }
  
}


## Function cacheSolve
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix() 
## If the inverse has already been calculated (and the matrix has not changed), then the 
## cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {

  
  # Check if matrix doesn't change and the inverse of matrix already exists in cache
  mat_test=matrix(1:9,nrow=3,ncol=3)
  
  if ( all(x == mat_test)==TRUE )
  {
    print("Matrix match")
  }
  else
  {
    print("Matrix doesn't match")
    unlist(list(Mat_cache, list(x)), recursive=FALSE)
    Mat_cache
  }
  return
  
  
  if ( length(Mat_cache)>0 )
  {
    # Matrix inverse found in cache: Retrieve matrix from cache and return.
    
  }
  else
  {
    # Matrix inverse not found in cache: compute its inverse, append to cache and return.
    ## solve(m)
  }

  ## Return a matrix that is the inverse of 'x'
  
}
