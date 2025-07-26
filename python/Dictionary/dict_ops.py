d1 = {}
d2 = dict()

d1 = {
    1:"aayush",
    2:"nonu",
    3:"reena",
    4:"sunil"
}

print(d1.get(1)) 

d1[5] = "minshu"
d1[2] = "titiksha"

print(d1) 

d1.update({6:"ria"})

print(d1)

print(d1.items()) # in form in list

for i in d1.keys():
    print(i)

for i in d1.values():
    print(i)

for i in d1.items():
    print(i)