## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i=NULL    ## set i as NULL in local environment
        set<- function(y){    ## function set:
                x <<- y   ## caches a new matrix in new environment
                i <<- NULL    ## caches i as NULL in the new environment
        }
        get<- function() x  ## function get: returns the value of x
        setinverse <- function(inverse) i<<- inverse   ## returns the inverse matrix and gives its value to i in new environment
        getinverse <- function () i   ## returns the value of i
        list (set=set, get=get, setinverse=setinverse, getinverse=getinverse)   ## returns a list of the 4 functions
}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        i <- x$getinverse()   ## gives i the value that returns from x$getinverse
        if (!is.null(i)){                      ## if i is not NULL then returns i with a message
                message("getting cached data")
                return(i)
                
        }
       matrix<-x$get()                ##gives matrix the value that returns from x$get()
       i<- solve(matrix,...)          ## gives i the value resulting from solve(matrix)
       x$setinverse(i)                ## set the new i
       i      ## Return a matrix that is the inverse of 'x'
}
