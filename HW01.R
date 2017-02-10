#Homework #1, Wen Lu
#step 1-3
quad<-function (x,a=0,b=0,c=0) {
  y=a*x^2+b*x+c
  return(y)}
quad(5)

#step 5-8
x<-c(-2,-1,0,1,2)
quad2<-function(x,a=1,b=2,c=3) {
  y=a*x^2+b*x+c
  return(y)
}
y<-quad2(x)
plot(x,y,'l')

#step 9-10
quad3<-function(x,a=2,b=4,c=6){
  y2=a*x^2+b*x+c
  return(y2)
}
y2<-quad3(x)
lines(x,y2)

#step 11
plot(x,y,type="l",col="red")
lines(x,y2,col="blue")

#the properties o the quadratic equation

