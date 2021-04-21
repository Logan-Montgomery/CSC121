mysum [] = 0
mysum (n:ns) = n + mysum ns

myhead[] = -1
myhead (x:_) = x

mycount [] = 0
mycount (_:t) = 1 + mycount t

double x = x + x