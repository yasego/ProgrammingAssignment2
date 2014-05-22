## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


# set : set the matrix that which requires inverse matrix
# get : get the set matrix
# setinverse : save an inverse matrix of the set matrix 
# getinverse : get the inverse matrix 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y = matrix ) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
        
        
}


## Write a short comment describing this function

# 1. check whether there is cached data
# 2. If there is cached data then print it, otherwise call setinverse function to get the inverse matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setinverse(m)
        m
}
