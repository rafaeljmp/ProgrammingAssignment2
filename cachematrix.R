## Put comments here that give an overall description of what your
## functions do

## Inicialitza la matriu si no existeixen dades

makeCacheMatrix <- function(x = matrix()) {
        z<-NULL
        set<-function(y){
                x<-y
                z<-NULL
}
        get <- function() x
        setinversa <- function(inverse) z <<- inverse
        getinversa <- function() z
        list(set = set,
             get = get,
             setinversa = setinversa,
             getinversa = getinversa)        
}
## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        z <- x$getinversa()
        if (!is.null(z)) {
                message("trau les dades de la cache")
                return(z)
        }
        data <- x$get()
        z <- solve(data, ...)
        x$setinversa(z)
        z
}

