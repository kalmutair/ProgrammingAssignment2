## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL #m is set to NULL because it going to be filled  by later code in the function.
        set <- function(y) { # makeCacheMatrix defines the set()function
                x <<- y # double arrows assigns the value of y to an object in the parent enviroment.
                m <<- NULL # this is to clear any previous executuin of cacheSolve().
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
       
         list(set = set, 
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
#here each element in the list should be listed and this allow to access the functions by name using $ sign.

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     
                m <- x$getinverse()  #the function get the inverse from the object passed in as the argument
                if(!is.null(m)) {  #check wheather the result is NULL.
                        message("getting cached data")
                        return(m)
                }
                data <- x$get()
                m <- solve(data, ...)
                x$setinverse(m)
                m
      
}
