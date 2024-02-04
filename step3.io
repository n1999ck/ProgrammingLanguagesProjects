#Write a prototype for a 2 dimensional list

2DList := Object clone
2DList internalList := list()

#dim(x,y) method allocates a list of y lists that are x elements long initializing them to 0
2DList dim := method(x,y,
	internalList := list()
	for(i, 1, x,
		dimension2list := list()
		for(j, 1, y,
			dimension2list append(0))
		internalList append(dimension2list)))

#set(x,y,value)
2DList set := method(x,y, value, 
			(internalList at(x) atPut(y, value)))

#get(x,y)
2DList get := method(x,y, (internalList at(x) at(y)))

#transpose returns a transposed 2DList - newlist get y,x == oldlist get x,y

2DList transpose := method(
	transposed := 2DList()
	newInternal := list()
	for(i, (internalList size) - 1, 0, -1,
		newInternal append(internalList at(i)))
	transposed internalList := newInternal
	transposed
	)

#use dim, set, get to initialize and display a 3x4 list with all values set to random non zero integers
myList := dim(3,4)
#Thanks for the RNG
d := new Date
x := (d now asNumber) - (d now asNumber floor)

for(i, 0, 2,
	for(j, 0, 3,
		set myList(i,j,x)))
		
writeln(myList)
transposedList := myList transpose
writeln(transposedList)
