secret_number = 9
print("Try to guess the number between 1 and 10.")
user_number = int(input("So, what number is it? "))
while user_number != secret_number:
        print("Wrong! Try again!")
        user_number = int(input("Your next guess is: "))
print("Right!")