## Programming Assignment 2: Functions that cache the inverse of a matrix.
## By: Tan KL


## Function makeCacheMatrix
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

  if ( nrow(x) != ncol(x) )
  {
    # Exception handling - X must be square matrix, else exit function 
    return
  }
  else
  {
    # X is a square matrix, proceed to convert matrix to list
    y=c(x)
  }
  
}


## Function cacheSolve
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix() 
## If the inverse has already been calculated (and the matrix has not changed), then the 
## cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {

  # Check if matrix doesn't change and the inverse of matrix already exists in cache
  
  j=length(x)
  
  #reconstruct matrix from vector
  x = matrix(x,sqrt(j),sqrt(j))
  
  
  #create data frame to store matrix cache and matrix inverse
  MAT_CACHE = data.frame(mat,mat_inv)
  
  for ( i in 1:length(MAT_CACHE) )
  {
    # if matrix found in cache
    if ( identical(x,MAT_CACHE[i,1] )==TRUE )
    {
      # Matrix inverse found in cache: Retrieve matrix from cache and return.
      return MAT_CACHE[i,2]
    }
    else
    {
      # Matrix inverse not found in cache: compute its inverse, append to cache and return.
      MAT_CACHE[i+1,1] <- x          #store matrix X
      MAT_CACHE[i+1,2] <- solve(x)   #store inverse of matrix X   
      return MAT_CACHE[i+1,2]
    }
    
  }

  ## Return a matrix that is the inverse of 'x'
  
}
