list_of_item =[]

for i in range(1,11):
    list_of_item.append(i)

print(list_of_item)

"""Comprehension"""
new_list = [i for i in range(1,11)]

print(new_list)

odd_list = [i for i in range(1,11,2)]
print(odd_list)

list_of_fruits = ["apple","mango","banana","grapes"]

new_fruits = [i for i in list_of_fruits if "b" in i ]
print(new_fruits)

newlist = [x if x != "banana" else "orange" for x in new_fruits]
print(newlist)
newlist = ['hello' for x in list_of_fruits]
print(newlist)