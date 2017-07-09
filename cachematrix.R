## This exercise intents to build a function to rapidly inverse matrix

## setting the value of the Matrix
## getting the value of the Matrix
## setting the value of the Matrix
## getting the value of the Matrix

  makeCacheMatrix <- function(x = matrix()) {
      
      invm <- NULL
      setm <- function(N) {
      x <- N
      invm <- NULL
      }

      getm <- function() x
      setinverse <- function(inverse) invm <- inverse
      getinverse <- function() invm
      
      list(setm=setm,getm=getm,setinverse=setinverse,getinverse=getinverse)
  
  }


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache

  cacheSolve <- function(x, ...) {
    invm <- x&getinverse()
    if(!is.null(invm)) {
      return(invm)
          }
    
    datainvm <- x$getm()
    invm <- solve(datainvm)
    x$setinverse(invm)
    invm
  }
