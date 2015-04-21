## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        storedInverse <- NULL
        
        #store a matrix, reset calculatedInverse
        setMatrix <- function(matrixIn) {
                x <<- matrixIn
                storedInverse <<- NULL
        }
        
        #return a stored matrix
        getMatrix <- function() x
        
        #store a calculated inverse
        setInverse <- function(calculatedInverse) storedInverse <<- calculatedInverse
        
        #return a stored inverse
        getInverse <- function() storedInverse
        
        list(setMatrix = setMatrix, getMatrix = getMatrix,
             setInverse = setmean,
             getInverse = getmean)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        #retrieve a stored inverse
        m <- x$getInverse()
        
        #check if it has already been calculated previously
        if(!is.null(m)) {
                
                message("getting cached data")
                
                return(m)
        }
        
        #if not, retreive the stored matrix and calculate the inverse of the matrix
        data <- x$getMatrix()
        
        m <- solve(data, ...)
        
        #save the inverse into the cachMatrix
        x$setInverse(m)
        
        #return the inverse
        return(m)
    
}
