day_of_week= input("enter the day").lower()
print(day_of_week)

if day_of_week == "saturday" or day_of_week == "sunday":
    print("aaj to chutti h")
else:
    print("aaj bhi office h")

first_number = int(input("enter number"))
second_number = int(input("enter number"))
choice = input("enter the operation: (options +, - , / , *)")



if choice == "+":
    output = first_number +second_number
    print("sum is",output)
elif choice == "-":
    diff = first_number - second_number
    print("diff is",diff)
elif choice == "/":
    rem = first_number / second_number
    print("remainder is",rem)
elif choice == "*":
    product = first_number * second_number
    print("product is",product)
else:
    print("invalid option")