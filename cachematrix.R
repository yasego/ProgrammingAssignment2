## Below code is for getting inverse matrix
## If possible, use cached data for compute efficiency
 


# makeCacheMatrix : make a list of functions(set, get, setinverse, getinverse)
# 1. set : set the matrix that which requires inverse matrix
# 2. get : get the set matrix
# 3. setinverse : save an inverse matrix of the set matrix 
# 4. getinverse : get the inverse matrix 

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

#  cacheSolve : return the inverse matrix of the set matrx. 
#  If there is cached data then print it, otherwise call setinverse function to get the inverse matrix .

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
