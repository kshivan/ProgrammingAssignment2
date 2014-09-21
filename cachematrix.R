## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix :
## 1. Stores the matrix
## 2. Stores the cached value of the inverse of the matrix
## 3. Lists the function
makeCacheMatrix <- function(x = matrix()) {

	#Variable Declaration and Instantiation to hold the cached value
	cachedV <- NULL
	
	#Define Matrix - store it first
	SetMatrix <-function(input) {
		x <<- input
		cachedV <<- NULL
	}
	#Get the matrix
	GetMatrix <- function() {
		x
	}
	#Cache the input
	CacheInverse <- function(input) {
		cachedV <<- input
	}	
	#Return the cached value
	GetInverse <- function() {
		cachedV
	}
	#Listing the functions 
	list(SetMatrix=SetMatrix, GetMatrix=GetMatrix, CacheInverse=CacheInverse, GetInverse=GetInverse)
	
}	
	
## Write a short comment describing this function
#Calculates and returns the inverse of the input matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
		#Getting the Cached Value
		inverseV <- x$GetInverse()
		
		# If - Else logic to return the cached value if it exists else inverse it and put it in cache
		if(!is.null(inverseV)) {
			# This message is to make sure we know that the cached value is getting printed
			message ("Returning cached")
			return(inverseV)
		} else # This part will get the matrix, inverse it and store it in the cahce
		
		gMatrix <- x$GetMatrix()
		inverseV <- solve(gMatrix)
		x$CacheInverse(inverseV)
		
		#return the inverse
		inverseV
}
