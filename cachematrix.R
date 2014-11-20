## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## list of functions
## 1.get : gets the matrix
## 2. setinverse :sets the inverse of the matrix to 
##    cached variable
## 3. getinverse: returns the cached inverse value

makeCacheMatrix <- function(x = matrix()) {
  cachedinv <- NULL
  set <- function(y) {
    x <<- y
    cachedinv <<- NULL
  }
  get <- function () {x}
  setinverse <- function(inversemat) {cachedinv <<- inversemat}
  getinverse <- function() { cachedinv }
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  
}


## Write a short comment describing this function
## Try to get the inverse from the cache
## if not found then calulates and stores
## the inverse to cache variable

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  
  if(is.null(inverse)){
    print("calculating the inverse")
    data <- x$get()
    inverse <- solve(data) 
    x$setinverse(inverse)
  }
  else{
    print("getting from cache")
  }
  inverse
}
