library('pracma')

## functions do
## There are two functions.
## The first one creates an R object that stores a vector and its inversion of their elements.
## The second one retrieve the inversion of elements from the previous makeCacheMatrix function then
##the cacheSolve should retrieve the inverse from the cache


## Initialize object inside make Cache Matrix. 
## It also adds getter/ setter in order to retrieve or write the data values 
## Finally, there is a list that includes all these functions
makeCacheMatrix <- function(x = matrix()) {
  
  i<-NULL
  set<-function(x){
    i<<-NULL
  }
  get<-function() x
  setinverse <- function(inv) i <<- inv
  getinverse<-function() i
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
  
  
}



## This function checks whether the matrix is inverted or
## not. At this point, if the matrix is not inverted, it gets the elements of x and it makes the transformation. 
cacheSolve <- function(x) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if (!is.null(i)) {
    return(i)
  }
  elements <- x$get()
  i <- inv(elements)
  x$setinverse(i)
  i
}
