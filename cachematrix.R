## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL #initialize m to NULL
  set <-function(y){ #set value of x to y and m to NULL. use x$set(y) to call this.
    x<<-y
    m<<-NULL
  }
get<-function() x #get x
setmatrix<-function(solve) m<<-solve #set the cache to m
getmatrix<-function() m #get the matrix from the cache if it exists
list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix) #get the list of functions defined here
}


## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getmatrix() #get the matrix inverse if exists in the cache
  if(!is.null(m)){ #if matrix does exist in the cache
    message("getting cached data")
    return(m) #just return the cached inverse
  }
  matrix<-x$get() #if cache does not exist, assign matrix
  m<-solve(matrix,...) #solve for inverse and assign to m
  x$setmatrix(m) #assign to cache
  m #return inverse of the matrix
}
