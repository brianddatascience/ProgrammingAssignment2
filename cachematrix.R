## These two functions implement a special version of
## inverting a non-singuler matrix in such a way as to 
## cache the computation so that once performed, if the value is 
## requested again, it will be returned having to recompute it. 

## The function makeCacheMatrix takes the matrix we wish to invert 
## and converts it to a list that appends additional functions 
## to it which enable the caching. 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}




## The function cacheSolve takes the special matix created by 
## makeCacheMatrix and ckeck to see if the inverse already 
## exists.  If so, it returns the cached value (and notifies you).  
## Else it computes the inverse. 
## 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
