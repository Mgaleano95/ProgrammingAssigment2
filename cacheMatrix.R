#With this function, we are going to create a function that has the capcity of cache the inverse of a Matrix
#The steps are the following:

STEP 1: 

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,
get = get,
setInverse = setInverse,
getInverse = getInverse)
}

STEP 2: 

cacheSolve <- function(x, ...) {
inv <- x$getInverse()
if (!is.null(inv)) {
message("Obteniendo los datos de Caché")
return(inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv
}
