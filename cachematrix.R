## Coursera, R Programming Assignment2:
## Matrix inversion is usually a costly computation and their may be some benefit to 
## caching the inverse of a matrix rather than compute it repeatedly (there are also 
## alternatives to matrix inversion that we will not discuss here). 
## The assignment is to write a pair of functions that cache the inverse of a matrix.

## 1- makeCacheMatrix: 
## This function creates a special "matrix" object that can cache its inverse.

## we introduce the <<- operator
## The operators <<- and ->> are normally only used in functions, and cause a search 
## to made through parent environments for an existing definition of the variable 
## being assigned. If such a variable is found (and its binding is not locked) 
## then its value is redefined, otherwise assignment takes place in the global environment.

makeCacheMatrix <- function(x = matrix()) {

}

## 2 - cacheSolve: 
## This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

## Computing the inverse of a square matrix can be done with the solve function in R. 
## For example, if X is a square invertible matrix, then solve(X) returns its inverse.
## For this assignment, we assume that the matrix supplied is always invertible.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
