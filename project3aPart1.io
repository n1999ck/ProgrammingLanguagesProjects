#Create an object called Person
Person := Object clone

#Create a slot for that object called name
Person name := nil

#Create an instance of Person using your first name
nick := Person clone 

#Set that instance's name slot to your first and last name
nick name := ("Nick Miller")

#Display your name
nick name

#This part was figured out through messing with the repl, looking back at the tutorial
#Sort and display your name's characters in alphabetic order
lower := nick name asLowercase
listalpha := List clone
for(i,0, lower size -1, listalpha append(lower  at(i) asCharacter))
listalpha := listalpha sort
alpha :=  "" asMutable
for(i, 0, listalpha size -1, alpha appendSeq(listalpha at(i)))
writeln (alpha)

#More trial and error
#Reverse and display your name
#temp just for ease of use
temp := nick name split

first := List clone
for(i,   0, temp at(0) size - 1, first append(temp at(0) at(i) asCharacter))
first := first reverse
firstSeq  := "" asMutable
for(i, 0, first size -1, firstSeq appendSeq(first at(i)))
writeln (firstSeq)

last := List clone
for(i,   0, temp at(1) size - 1, last append(temp at(1) at(i) asCharacter))
last := last reverse
lastSeq := "" asMutable
for(i, 0, last size -1, lastSeq appendSeq(last at(i)))
writeln(lastSeq)

nameReverse := listalpha
nameReverse := nameReverse reverse
revsAlpha := "" asMutable
for(i,0, nameReverse size -1, revsAlpha appendSeq(nameReverse at(i)))
writeln(revsAlpha)
