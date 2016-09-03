### This is my submission for weeks3 programming assigment 

It consists of one ".R" file, houseing the two required functions, 
makeCacheMatrix, and cacheSolve.  I tested them with a simple 2 x 2 
matrix made with the command c=rbind(c(1,-1/4), c(-1/4, 1)). 
The following are the commands used to test it:
c=rbind(c(1,-1/4), c(-1/4, 1))
a<-makeCacheMatrix(c)
b<-cacheSolve(a)
b
	[,1]	[,2]

[1,]	1.0666	0.2666
[2,]	0.2666	1.0666

>b<-cacheSolve(a)
getting cached data
>b
(same matrix as above)

