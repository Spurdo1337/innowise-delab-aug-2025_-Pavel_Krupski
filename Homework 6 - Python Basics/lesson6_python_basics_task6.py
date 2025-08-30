print("Lets calculate your numbers!")
first_number = float(input("Your first number: "))
operator = input("Your operator: ")
second_number = float(input("Your second number: "))
if operator == "/" and second_number == 0:
    print("You are trying to divide by zero!")
elif operator == "+":
    print(f"Your result is {(first_number + second_number):.4f}!")
elif operator == "-":
    print(f"Your result is {(first_number - second_number):.4f}!")
elif operator == "/":
    print(f"Your result is {(first_number / second_number):.4f}!")
elif operator == "*":
    print(f"Your result is {(first_number * second_number):.4f}!")
else:
    print("Your operator is wrong. Try again!")