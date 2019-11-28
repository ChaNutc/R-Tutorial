makeCacheMatrix <- function(x = matrix()) {
        result <- NULL
        set <- function(y) {
                x <- y
                result <- NULL
        }
        get <- function() x
        setInverse <- function(inverse) result <- inverse
        getInverse <- function() result
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


cacheSolve <- function(x, ...) {
        result <- x$getInverse()
        if (is.null(result) == False) {
                message("getting cached data")
                return(result)
        }
        matrix <- x$get()
        result <- solve(matrix, ...)
        x$setInverse(result)
        result
}