#Homework #1, Wen Lu
#step 1-3
quad<-function (x,a,b,c) {
  y=a*x^2+b*x+c
  return(y)}
quad(5,0,0,0)

#step 5-8
x<-c(-2,-1,0,1,2)
y<-quad(x,1,2,3)
plot(x,y,'l')

#step 9-10
y2<-quad(x,2,4,6)
lines(x,y2)

#step 11
plot(x,y,type="l",col="red")
lines(x,y2,col="blue")

