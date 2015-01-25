## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
     
     m <- NULL
  
            set <- function(y){
              x <<- y           # assign the value of x and initialize m in the upper environment
              m <<- NULL
            }
            
            get <- function() x         # get the assignment 
            setmatrix <- function(solve) m <<- solve #set the value of the inverse     
            getmatrix <- function() m                #get the valuer of the inverse
            
            list(set=set, get=get,
                 setmatrix=setmatrix,
                 getmatrix=getmatrix)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
          
          #get the matrix
          m <- x$getmatrix()
          #check if the matrix has been alrady inverted
          if (!is.null(m)) {
            message("getting cached data")
            return(m)   # get the calculated invers
          }
          
          matrix <- x$get()             #define matrix from the cached  
          m <- solve(matrix, ...)       #invert matrix
          x$setmatrix(m)
          m                             #inversed matrix    
        ## Return a matrix that is the inverse of 'x'
         return(m)
}
