## Write the following functions:

##This function creates a special "matrix" object that can cache its inverse.
##This function computes the inverse of the special "matrix"  


makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function()x  ## set the value of the matrix
  setInverse <- function(inverse) j <<- inverse  ##set the value of the invertible matris
  getInverse <- function() j ##get the value of the interible matrix
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){   ## if the inverse matrix is not NULL
    message("getting cached data")  ##Type message
    return(j)  ## return the intertible matrix
  }
  mat <- x$get()    ##get the original Matrix Data
  j <- solve(mat,...)   ##use solve function to inverse the matrix
  x$setInverse(j)  ##set the interible matrix
  j     ##return the invertible matrix
  }
