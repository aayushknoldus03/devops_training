tup = ()
t = (1,3,4,"hello")
print(t[2])
#t[1]=10 immutable

tup = ([1,2,3],3,2,{1:"aa"})
print(tup)
print(tup[0])
tup[0].append(4)
print(tup)

t2 = (20,30,40) #packing
a,b,c = (20,30,40) #unpacking

print(t2)
print(a,b,c)


