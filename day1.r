print("Hello, World!")
number <- c(10,1,3,2,4,5,6) #vectors are used to store values of SAME TYPE and c is part of syntax
integers <- c(10L, 15L, 45L) #L is to specify that number is integer
names(integers) <- c("a", "b", "c") #this way we name values inside a vectors
# to check type (is.integer(integers))
# typeof(number)

list(4,5.5, TRUE, 'no') #list can contain values of multiple type
list('age'=18,'height' = 178) #list values can also be named
