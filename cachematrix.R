## makeCacheMatrix is used to create a list of functions that
## sets the values of the matrix
## gets the values of the matrix
## sets the inverse of the matrix
## gets the inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
  z<- NULL
    set <-function(y){              ## set defines a function to set the matrix 'x' to a new matrix 'y'
    x<<-y
    z<<-NULL
  }
    get<-function() x               ## get defines a function that returns the matrix 'x'
    setinv<-function(inv)  z<<-inv  ## setinv defines a function that sets the inverse, 'z' to the inverse
    getinv<-function() z            ## getinv returns the inverse 'z'
  
    list(set=set,get=get,setinv=setinv,getinv=getinv)
  }



## cacheSolve is used to return the inverse of a matrix.
## If the inverse of the matrix has already been calculated
## it pulls the value from the cache and skps the calc.
## Otherwise, it calculates the inverse and puts the value
## in the cache of the function.

cacheSolve <- function(x, ...) {
  
  z<-x$getinv()
    if(!is.null(z)){                ## If the inverse of the matrix is already in the cache ...
    message("getting cached data")
    return(z)                       ## it returns it
  }
  q<-x$get()
  z<-solve(q)                       ## Otherwise, it calculates the inverse of the matrix using the solve function
  x$setinv(z)                       ## and stores it in the cache
  return(z)                         ## and returns it
}
