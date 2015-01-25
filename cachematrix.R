## Coursera, R Programming Assignment2:
##
## Romain Louvet, 2015
##
## To be perfectly honest, I didn't get it. I searched for code examples,
## found one (which just change minor things from the original assignment example) 
## changed a few things, added notes, tryed to make it work, and failed. 
## I guess the example was misleading in some way...
##
## Assignment:
## The assignment is to write a pair of functions that cache the inverse of a matrix,
## because matrix inversion is usually a costly computation and their may be some benefit to 
## caching the inverse of a matrix rather than compute it repeatedly (there are also 
## alternatives to matrix inversion that we will not discuss here). 

## we introduce the <<- operator
## The operators <<- and ->> are normally only used in functions, and cause a search 
## to made through parent environments for an existing definition of the variable 
## being assigned. If such a variable is found (and its binding is not locked) 
## then its value is redefined, otherwise assignment takes place in the global environment.

## 1- makeCacheMatrix: 
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  # an empty variable, inverse of the matrix (?)
  inv <- NULL
  
  # set the value of the matrix (?)
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  # get the value of the matrix
  # (since when can we call a function like this ??)
  get <- function() x
  # set the value of the inverse of that matrix with
  # function solve
  # (same as above, I really don't get this function calling!)
  setinverse <- function(solve) inv <<- solve
  # get the value of the inverse of that matrix
  getinverse <- function() inv
  
  # list the results (???)
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}

## 2 - cacheSolve: 
## This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

## Computing the inverse of a square matrix can be done with the solve function in R. 
## For example, if X is a square invertible matrix, then solve(X) returns its inverse.
## For this assignment, we assume that the matrix supplied is always invertible.

# "..." argument because cacheSolve should be calling another function (?)
cacheSolve <- function(x, ...) {
  
  # since it's calling "getinverse", I think this function should call
  # makeCacheMatrix, but... still don't get it.
  # it actually return this error: 
  # "Error in x$getinverse : $ operator is invalid for atomic vectors"
  inv <- x$getinverse()
  
  # if there is already the cached value of the inverse of that matrix,
  # it gets it, it returns it
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }else{ # I think by "otherwise" the assignment meant if/else statement (?)
    # get the value of x ? (same as before "$ operator is invalid for
    # atomic vectors")
    data <- x$get()
    # get inverse of data
    inv <- solve(data)
    # ???
    x$setinverse(inv)
    # ???
    inv 
  }
}
