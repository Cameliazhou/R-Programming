## Put comments here that give an overall description of what your
## functions do


## Write a short comment describing this function
## create a special object that stores a numeric vector and cache's its mean

## 	1.	set the value of the vector 2. get the value of the vector 3. set the value of the mean 4. get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
x <<- y
inv <<- NULL
	  }
get <- function() x
setInverse <- function(solveMatrix) inv <<- solveMatrix
getInverse <- function() inv
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
	}



## Write a short comment describing this function
## it first checks to see if the inverse has already been calculated. If so, it gets the inverse from the cache and skips the computation. Otherwise, it calculates the inverse of the data and sets the value of the inverse in the cache via the setmean function.
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if(!is.null(inv)){
message("getting cached data")
return(inv)
	  }
data <- x$get()
inv <- solve(data)
x$setInverse(inv)
inv 
	}