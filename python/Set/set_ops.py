s = set()

set_of_Car = {"bmw","audi","Rolls","audi"}
set_of_car_2 = {"tata","maruti","hyundai","audi"}

print(set_of_Car)
print(set_of_car_2)
set_of_car_2.add("skoda")


s2 = set_of_Car.intersection(set_of_car_2)
print(s2)
 
s3 = set_of_Car.union(set_of_car_2)
print(s3)

s4 = set_of_Car.difference(set_of_car_2)
print(s4)

a = {1,2,3,4,5}
b = {1,4}

print(b.issubset(a))
print(a.issuperset(b))