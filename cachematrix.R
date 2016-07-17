## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        fijar <- function(y){
                x <<- y
                inv <<- NULL
        }
        tomar <- function() x
        fijarInversa <- function(solveMatrix) inv <<- solveMatrix
        tomarInversa <- function() inv
        list (set=fijar,get=tomar,setInverse=fijarInversa,getInverse=tomarInversa)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getnverse
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setInverse(inv)
        inv
}
