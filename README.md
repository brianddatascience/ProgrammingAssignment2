### This is my submission for weeks3 programming assigment 

It consists of one ".R" file, houseing the two required functions, 
makeCacheMatrix, and cacheSolve.  I tested them with a simple 2 x 2 
matrix made with the command c=rbind(c(1,-1/4), c(-1/4, 1)). 
The following are the commands used to test it:  

c=rbind(c(1,-1/4), c(-1/4, 1))  

a<-makeCacheMatrix(c)  

b<-cacheSolve(a)  

b<-cacheSolve(a)  

The first call to cacheSolve generates the appropriate matrix, the second call produces the appropriate matrix again by pulling it from cache, and notifying you with a print message that it jas just done that.

